; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_sanitize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tc.c_intel_tc_port_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.intel_encoder }
%struct.TYPE_4__ = type { i64 }
%struct.intel_encoder = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Port %s: PHY disconnected with %d active link(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Port %s: sanitize mode (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_tc_port_sanitize(%struct.intel_digital_port* %0) #0 {
  %2 = alloca %struct.intel_digital_port*, align 8
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %2, align 8
  %5 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %6 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %5, i32 0, i32 5
  store %struct.intel_encoder* %6, %struct.intel_encoder** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %8 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %11 = call i32 @intel_tc_port_get_current_mode(%struct.intel_digital_port* %10)
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %13 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %15 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %21 = call i32 @intel_dp_mst_encoder_active_links(%struct.intel_digital_port* %20)
  store i32 %21, i32* %4, align 4
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %24 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %30 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.TYPE_6__* @to_intel_crtc(i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %22
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %42 = call i32 @icl_tc_phy_is_connected(%struct.intel_digital_port* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %46 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %40
  %51 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @intel_tc_port_link_init_refcount(%struct.intel_digital_port* %51, i32 %52)
  br label %63

54:                                               ; preds = %37
  %55 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %56 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %61 = call i32 @icl_tc_phy_connect(%struct.intel_digital_port* %60, i32 1)
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %65 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %68 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tc_port_mode_name(i32 %69)
  %71 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70)
  %72 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %73 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_tc_port_get_current_mode(%struct.intel_digital_port*) #1

declare dso_local i32 @intel_dp_mst_encoder_active_links(%struct.intel_digital_port*) #1

declare dso_local %struct.TYPE_6__* @to_intel_crtc(i64) #1

declare dso_local i32 @icl_tc_phy_is_connected(%struct.intel_digital_port*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @intel_tc_port_link_init_refcount(%struct.intel_digital_port*, i32) #1

declare dso_local i32 @icl_tc_phy_connect(%struct.intel_digital_port*, i32) #1

declare dso_local i32 @tc_port_mode_name(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
