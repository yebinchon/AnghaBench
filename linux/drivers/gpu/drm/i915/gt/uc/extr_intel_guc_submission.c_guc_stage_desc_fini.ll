; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_stage_desc_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_stage_desc_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_client = type { i32 }
%struct.guc_stage_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_client*)* @guc_stage_desc_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_stage_desc_fini(%struct.intel_guc_client* %0) #0 {
  %2 = alloca %struct.intel_guc_client*, align 8
  %3 = alloca %struct.guc_stage_desc*, align 8
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %2, align 8
  %4 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %5 = call %struct.guc_stage_desc* @__get_stage_desc(%struct.intel_guc_client* %4)
  store %struct.guc_stage_desc* %5, %struct.guc_stage_desc** %3, align 8
  %6 = load %struct.guc_stage_desc*, %struct.guc_stage_desc** %3, align 8
  %7 = call i32 @memset(%struct.guc_stage_desc* %6, i32 0, i32 4)
  ret void
}

declare dso_local %struct.guc_stage_desc* @__get_stage_desc(%struct.intel_guc_client*) #1

declare dso_local i32 @memset(%struct.guc_stage_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
