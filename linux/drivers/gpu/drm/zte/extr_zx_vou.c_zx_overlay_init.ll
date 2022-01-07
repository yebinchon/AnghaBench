; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_overlay_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vou.c_zx_overlay_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.zx_vou_hw = type { i64, i64, %struct.device* }
%struct.device = type { i32 }
%struct.zx_plane = type { i32*, i64, i64, i64 }

@VL_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to allocate zplane %d\0A\00", align 1
@zx_vl_bits = common dso_local global i32* null, align 8
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to init overlay %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.zx_vou_hw*)* @zx_overlay_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_overlay_init(%struct.drm_device* %0, %struct.zx_vou_hw* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.zx_vou_hw*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.zx_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.zx_vou_hw* %1, %struct.zx_vou_hw** %4, align 8
  %9 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %10 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %68, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @VL_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %12
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.zx_plane* @devm_kzalloc(%struct.device* %17, i32 32, i32 %18)
  store %struct.zx_plane* %19, %struct.zx_plane** %6, align 8
  %20 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %21 = icmp ne %struct.zx_plane* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @DRM_DEV_ERROR(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %71

26:                                               ; preds = %16
  %27 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %28 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @OSD_VL_OFFSET(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %34 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %36 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @HBSC_VL_OFFSET(i32 %38)
  %40 = add nsw i64 %37, %39
  %41 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %42 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.zx_vou_hw*, %struct.zx_vou_hw** %4, align 8
  %44 = getelementptr inbounds %struct.zx_vou_hw, %struct.zx_vou_hw* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @RSZ_VL_OFFSET(i32 %46)
  %48 = add nsw i64 %45, %47
  %49 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %50 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32*, i32** @zx_vl_bits, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %56 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %58 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %59 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  %60 = call i32 @zx_plane_init(%struct.drm_device* %57, %struct.zx_plane* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %26
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @DRM_DEV_ERROR(%struct.device* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %68

67:                                               ; preds = %26
  br label %68

68:                                               ; preds = %67, %63
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %12

71:                                               ; preds = %22, %12
  ret void
}

declare dso_local %struct.zx_plane* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i64 @OSD_VL_OFFSET(i32) #1

declare dso_local i64 @HBSC_VL_OFFSET(i32) #1

declare dso_local i64 @RSZ_VL_OFFSET(i32) #1

declare dso_local i32 @zx_plane_init(%struct.drm_device*, %struct.zx_plane*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
