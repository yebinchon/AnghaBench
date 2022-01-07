; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_intel_guc_submission_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_intel_guc_submission_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.intel_gt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_guc_submission_disable(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %4 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %5 = call %struct.intel_gt* @guc_to_gt(%struct.intel_guc* %4)
  store %struct.intel_gt* %5, %struct.intel_gt** %3, align 8
  %6 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %7 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @GEM_BUG_ON(i32 %8)
  %10 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %11 = call i32 @guc_interrupts_release(%struct.intel_gt* %10)
  %12 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %13 = call i32 @guc_clients_disable(%struct.intel_guc* %12)
  ret void
}

declare dso_local %struct.intel_gt* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @guc_interrupts_release(%struct.intel_gt*) #1

declare dso_local i32 @guc_clients_disable(%struct.intel_guc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
