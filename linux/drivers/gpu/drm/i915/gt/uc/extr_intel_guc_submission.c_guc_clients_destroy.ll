; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_clients_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_clients_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.intel_guc_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc*)* @guc_clients_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_clients_destroy(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.intel_guc_client*, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %4 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %5 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %4, i32 0, i32 0
  %6 = call %struct.intel_guc_client* @fetch_and_zero(i32* %5)
  store %struct.intel_guc_client* %6, %struct.intel_guc_client** %3, align 8
  %7 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %8 = icmp ne %struct.intel_guc_client* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.intel_guc_client*, %struct.intel_guc_client** %3, align 8
  %11 = call i32 @guc_client_free(%struct.intel_guc_client* %10)
  br label %12

12:                                               ; preds = %9, %1
  ret void
}

declare dso_local %struct.intel_guc_client* @fetch_and_zero(i32*) #1

declare dso_local i32 @guc_client_free(%struct.intel_guc_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
