; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32, i32, i32 }
%struct.intel_gt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_guc_fini(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %4 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %5 = call %struct.intel_gt* @guc_to_gt(%struct.intel_guc* %4)
  store %struct.intel_gt* %5, %struct.intel_gt** %3, align 8
  %6 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %7 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %6, i32 0, i32 0
  %8 = call i32 @intel_uc_fw_is_available(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %39

11:                                               ; preds = %1
  %12 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %13 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @i915_ggtt_disable_guc(i32 %14)
  %16 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %17 = call i64 @intel_guc_is_submission_supported(%struct.intel_guc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %21 = call i32 @intel_guc_submission_fini(%struct.intel_guc* %20)
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %24 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %23, i32 0, i32 2
  %25 = call i32 @intel_guc_ct_fini(i32* %24)
  %26 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %27 = call i32 @intel_guc_ads_destroy(%struct.intel_guc* %26)
  %28 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %29 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %28, i32 0, i32 1
  %30 = call i32 @intel_guc_log_destroy(i32* %29)
  %31 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %32 = call i32 @guc_shared_data_destroy(%struct.intel_guc* %31)
  %33 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %34 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %33, i32 0, i32 0
  %35 = call i32 @intel_uc_fw_fini(i32* %34)
  %36 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %37 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %36, i32 0, i32 0
  %38 = call i32 @intel_uc_fw_cleanup_fetch(i32* %37)
  br label %39

39:                                               ; preds = %22, %10
  ret void
}

declare dso_local %struct.intel_gt* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @intel_uc_fw_is_available(i32*) #1

declare dso_local i32 @i915_ggtt_disable_guc(i32) #1

declare dso_local i64 @intel_guc_is_submission_supported(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_submission_fini(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_ct_fini(i32*) #1

declare dso_local i32 @intel_guc_ads_destroy(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_log_destroy(i32*) #1

declare dso_local i32 @guc_shared_data_destroy(%struct.intel_guc*) #1

declare dso_local i32 @intel_uc_fw_fini(i32*) #1

declare dso_local i32 @intel_uc_fw_cleanup_fetch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
