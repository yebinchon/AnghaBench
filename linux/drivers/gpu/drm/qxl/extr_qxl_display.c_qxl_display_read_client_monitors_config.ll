; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_display_read_client_monitors_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_display_read_client_monitors_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.drm_device }
%struct.drm_device = type { i32 }

@MONITORS_CONFIG_BAD_CRC = common dso_local global i32 0, align 4
@MONITORS_CONFIG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ignoring client monitors config: error\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ignoring client monitors config: bad crc\00", align 1
@MONITORS_CONFIG_UNCHANGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"ignoring client monitors config: unchanged\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qxl_display_read_client_monitors_config(%struct.qxl_device* %0) #0 {
  %2 = alloca %struct.qxl_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %2, align 8
  %6 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %7 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %6, i32 0, i32 0
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %13 = call i32 @qxl_display_copy_rom_client_monitors_config(%struct.qxl_device* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MONITORS_CONFIG_BAD_CRC, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %23

18:                                               ; preds = %11
  %19 = call i32 @udelay(i32 5)
  br label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %8

23:                                               ; preds = %17, %8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MONITORS_CONFIG_ERROR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %54

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MONITORS_CONFIG_BAD_CRC, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %54

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @MONITORS_CONFIG_UNCHANGED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %54

41:                                               ; preds = %35
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = call i32 @drm_modeset_lock_all(%struct.drm_device* %42)
  %44 = load %struct.qxl_device*, %struct.qxl_device** %2, align 8
  %45 = call i32 @qxl_update_offset_props(%struct.qxl_device* %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %47 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %46)
  %48 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %49 = call i32 @drm_helper_hpd_irq_event(%struct.drm_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %53 = call i32 @drm_kms_helper_hotplug_event(%struct.drm_device* %52)
  br label %54

54:                                               ; preds = %27, %33, %39, %51, %41
  ret void
}

declare dso_local i32 @qxl_display_copy_rom_client_monitors_config(%struct.qxl_device*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @qxl_update_offset_props(%struct.qxl_device*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_hotplug_event(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
