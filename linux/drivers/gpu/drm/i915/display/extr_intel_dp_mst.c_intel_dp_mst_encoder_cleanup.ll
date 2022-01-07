; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_encoder_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp_mst.c_intel_dp_mst_encoder_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.intel_dp }
%struct.intel_dp = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_mst_encoder_cleanup(%struct.intel_digital_port* %0) #0 {
  %2 = alloca %struct.intel_digital_port*, align 8
  %3 = alloca %struct.intel_dp*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %2, align 8
  %4 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %5 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %4, i32 0, i32 0
  store %struct.intel_dp* %5, %struct.intel_dp** %3, align 8
  %6 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %7 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %15

11:                                               ; preds = %1
  %12 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %13 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %12, i32 0, i32 0
  %14 = call i32 @drm_dp_mst_topology_mgr_destroy(i32* %13)
  br label %15

15:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @drm_dp_mst_topology_mgr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
