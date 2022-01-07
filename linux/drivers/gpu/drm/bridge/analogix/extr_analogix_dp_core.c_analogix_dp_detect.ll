; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.analogix_dp_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to prepare panel (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to unprepare panel (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @analogix_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.analogix_dp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.analogix_dp_device* @to_dp(%struct.drm_connector* %9)
  store %struct.analogix_dp_device* %10, %struct.analogix_dp_device** %6, align 8
  %11 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %6, align 8
  %13 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @connector_status_connected, align 4
  store i32 %19, i32* %3, align 4
  br label %45

20:                                               ; preds = %2
  %21 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %6, align 8
  %22 = call i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device* %21, i32 1, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %20
  %30 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %6, align 8
  %31 = call i32 @analogix_dp_detect_hpd(%struct.analogix_dp_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @connector_status_connected, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %6, align 8
  %37 = call i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device* %36, i32 0, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %25, %18
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.analogix_dp_device* @to_dp(%struct.drm_connector*) #1

declare dso_local i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @analogix_dp_detect_hpd(%struct.analogix_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
