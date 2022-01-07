; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_kms_stdu_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_kms_stdu_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32, i32, %struct.drm_device* }
%struct.drm_device = type { i32 }

@VMWGFX_ENABLE_SCREEN_TARGET_OTABLE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@SVGA_CAP_GBOBJECTS = common dso_local global i32 0, align 4
@VMWGFX_NUM_DISPLAY_UNITS = common dso_local global i32 0, align 4
@vmw_du_screen_target = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize STDU %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Screen Target Display device initialized\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_kms_stdu_init_display(%struct.vmw_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmw_private*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %3, align 8
  %7 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %8 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %7, i32 0, i32 2
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %4, align 8
  %10 = load i32, i32* @VMWGFX_ENABLE_SCREEN_TARGET_OTABLE, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  %16 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %17 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SVGA_CAP_GBOBJECTS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %63

25:                                               ; preds = %15
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = load i32, i32* @VMWGFX_NUM_DISPLAY_UNITS, align 4
  %28 = call i32 @drm_vblank_init(%struct.drm_device* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %25
  %37 = load i32, i32* @vmw_du_screen_target, align 4
  %38 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %39 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %58, %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @VMWGFX_NUM_DISPLAY_UNITS, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.vmw_private*, %struct.vmw_private** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @vmw_stdu_init(%struct.vmw_private* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %63

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %40

61:                                               ; preds = %40
  %62 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %53, %34, %22, %12
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_stdu_init(%struct.vmw_private*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
