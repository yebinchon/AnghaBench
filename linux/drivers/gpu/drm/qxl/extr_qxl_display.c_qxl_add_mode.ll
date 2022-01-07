; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_add_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_add_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32, i32, i32)* @qxl_add_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_add_mode(%struct.drm_connector* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.qxl_device*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %10, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load %struct.qxl_device*, %struct.qxl_device** %18, align 8
  store %struct.qxl_device* %19, %struct.qxl_device** %11, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %12, align 8
  %20 = load %struct.qxl_device*, %struct.qxl_device** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @qxl_check_mode(%struct.qxl_device* %20, i32 %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

27:                                               ; preds = %4
  %28 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %28, i32 %29, i32 %30, i32 60, i32 0, i32 0, i32 0)
  store %struct.drm_display_mode* %31, %struct.drm_display_mode** %12, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %48 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %47)
  %49 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %51 = call i32 @drm_mode_probed_add(%struct.drm_connector* %49, %struct.drm_display_mode* %50)
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %40, %26
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @qxl_check_mode(%struct.qxl_device*, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
