; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_svga_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_drv.c_vmw_svga_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed evicting VRAM buffers.\0A\00", align 1
@SVGA_REG_ENABLE = common dso_local global i32 0, align 4
@SVGA_REG_ENABLE_HIDE = common dso_local global i32 0, align 4
@SVGA_REG_ENABLE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_svga_disable(%struct.vmw_private* %0) #0 {
  %2 = alloca %struct.vmw_private*, align 8
  store %struct.vmw_private* %0, %struct.vmw_private** %2, align 8
  %3 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %4 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @vmw_kms_lost_device(i32 %5)
  %7 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 0
  %9 = call i32 @ttm_write_lock(i32* %8, i32 0)
  %10 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %11 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %14 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* @TTM_PL_VRAM, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %1
  %23 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %24 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* @TTM_PL_VRAM, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %31 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  %33 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %34 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %33, i32 0, i32 2
  %35 = load i64, i64* @TTM_PL_VRAM, align 8
  %36 = call i64 @ttm_bo_evict_mm(%struct.TYPE_4__* %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %22
  %41 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %42 = load i32, i32* @SVGA_REG_ENABLE, align 4
  %43 = load i32, i32* @SVGA_REG_ENABLE_HIDE, align 4
  %44 = load i32, i32* @SVGA_REG_ENABLE_ENABLE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @vmw_write(%struct.vmw_private* %41, i32 %42, i32 %45)
  br label %51

47:                                               ; preds = %1
  %48 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %49 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %48, i32 0, i32 1
  %50 = call i32 @spin_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.vmw_private*, %struct.vmw_private** %2, align 8
  %53 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %52, i32 0, i32 0
  %54 = call i32 @ttm_write_unlock(i32* %53)
  ret void
}

declare dso_local i32 @vmw_kms_lost_device(i32) #1

declare dso_local i32 @ttm_write_lock(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @ttm_bo_evict_mm(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_write(%struct.vmw_private*, i32, i32) #1

declare dso_local i32 @ttm_write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
