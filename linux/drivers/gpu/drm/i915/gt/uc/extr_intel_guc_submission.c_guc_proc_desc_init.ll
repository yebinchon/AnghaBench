; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_proc_desc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_proc_desc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_client = type { i32, i32 }
%struct.guc_process_desc = type { i32, i32, i32, i32, i64, i64 }

@GUC_WQ_SIZE = common dso_local global i32 0, align 4
@WQ_STATUS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_client*)* @guc_proc_desc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_proc_desc_init(%struct.intel_guc_client* %0) #0 {
  %2 = alloca %struct.intel_guc_client*, align 8
  %3 = alloca %struct.guc_process_desc*, align 8
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %2, align 8
  %4 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %5 = call i32 @__get_process_desc(%struct.intel_guc_client* %4)
  %6 = call %struct.guc_process_desc* @memset(i32 %5, i32 0, i32 32)
  store %struct.guc_process_desc* %6, %struct.guc_process_desc** %3, align 8
  %7 = load %struct.guc_process_desc*, %struct.guc_process_desc** %3, align 8
  %8 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.guc_process_desc*, %struct.guc_process_desc** %3, align 8
  %10 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %12 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.guc_process_desc*, %struct.guc_process_desc** %3, align 8
  %15 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @GUC_WQ_SIZE, align 4
  %17 = load %struct.guc_process_desc*, %struct.guc_process_desc** %3, align 8
  %18 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @WQ_STATUS_ACTIVE, align 4
  %20 = load %struct.guc_process_desc*, %struct.guc_process_desc** %3, align 8
  %21 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %23 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.guc_process_desc*, %struct.guc_process_desc** %3, align 8
  %26 = getelementptr inbounds %struct.guc_process_desc, %struct.guc_process_desc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  ret void
}

declare dso_local %struct.guc_process_desc* @memset(i32, i32, i32) #1

declare dso_local i32 @__get_process_desc(%struct.intel_guc_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
