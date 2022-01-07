; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___init_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___init_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_client = type { i32 }
%struct.guc_doorbell_info = type { i64, i32 }

@GUC_DOORBELL_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_client*)* @__init_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__init_doorbell(%struct.intel_guc_client* %0) #0 {
  %2 = alloca %struct.intel_guc_client*, align 8
  %3 = alloca %struct.guc_doorbell_info*, align 8
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %2, align 8
  %4 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %5 = call %struct.guc_doorbell_info* @__get_doorbell(%struct.intel_guc_client* %4)
  store %struct.guc_doorbell_info* %5, %struct.guc_doorbell_info** %3, align 8
  %6 = load i32, i32* @GUC_DOORBELL_ENABLED, align 4
  %7 = load %struct.guc_doorbell_info*, %struct.guc_doorbell_info** %3, align 8
  %8 = getelementptr inbounds %struct.guc_doorbell_info, %struct.guc_doorbell_info* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = load %struct.guc_doorbell_info*, %struct.guc_doorbell_info** %3, align 8
  %10 = getelementptr inbounds %struct.guc_doorbell_info, %struct.guc_doorbell_info* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  ret void
}

declare dso_local %struct.guc_doorbell_info* @__get_doorbell(%struct.intel_guc_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
