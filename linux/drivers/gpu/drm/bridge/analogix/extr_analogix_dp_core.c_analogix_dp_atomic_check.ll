; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.analogix_dp_device = type { i32 }
%struct.drm_connector_state = type { i32, i32 }
%struct.drm_crtc_state = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_atomic_state*)* @analogix_dp_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @analogix_dp_atomic_check(%struct.drm_connector* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  %6 = alloca %struct.analogix_dp_device*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = call %struct.analogix_dp_device* @to_dp(%struct.drm_connector* %9)
  store %struct.analogix_dp_device* %10, %struct.analogix_dp_device** %6, align 8
  %11 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state* %11, %struct.drm_connector* %12)
  store %struct.drm_connector_state* %13, %struct.drm_connector_state** %7, align 8
  %14 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %15 = icmp ne %struct.drm_connector_state* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %25 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %27 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %54

31:                                               ; preds = %23
  %32 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %33 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %34 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %32, i32 %35)
  store %struct.drm_crtc_state* %36, %struct.drm_crtc_state** %8, align 8
  %37 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %38 = icmp ne %struct.drm_crtc_state* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %54

40:                                               ; preds = %31
  %41 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %42 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %6, align 8
  %47 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %45, %40
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %39, %30, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.analogix_dp_device* @to_dp(%struct.drm_connector*) #1

declare dso_local %struct.drm_connector_state* @drm_atomic_get_new_connector_state(%struct.drm_atomic_state*, %struct.drm_connector*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
