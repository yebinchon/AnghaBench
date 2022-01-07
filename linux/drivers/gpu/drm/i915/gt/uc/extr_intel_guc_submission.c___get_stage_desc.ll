; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___get_stage_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___get_stage_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guc_stage_desc = type { i32 }
%struct.intel_guc_client = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.guc_stage_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.guc_stage_desc* (%struct.intel_guc_client*)* @__get_stage_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.guc_stage_desc* @__get_stage_desc(%struct.intel_guc_client* %0) #0 {
  %2 = alloca %struct.intel_guc_client*, align 8
  %3 = alloca %struct.guc_stage_desc*, align 8
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %2, align 8
  %4 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %5 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.guc_stage_desc*, %struct.guc_stage_desc** %7, align 8
  store %struct.guc_stage_desc* %8, %struct.guc_stage_desc** %3, align 8
  %9 = load %struct.guc_stage_desc*, %struct.guc_stage_desc** %3, align 8
  %10 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %11 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.guc_stage_desc, %struct.guc_stage_desc* %9, i64 %12
  ret %struct.guc_stage_desc* %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
