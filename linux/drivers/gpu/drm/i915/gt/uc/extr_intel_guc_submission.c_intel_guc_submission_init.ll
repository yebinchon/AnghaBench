; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_intel_guc_submission_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_intel_guc_submission_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_guc_submission_init(%struct.intel_guc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  %5 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %6 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

10:                                               ; preds = %1
  %11 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %12 = call i32 @guc_stage_desc_pool_create(%struct.intel_guc* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %10
  %18 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %19 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @GEM_BUG_ON(i32 %23)
  %25 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %26 = call i32 @guc_verify_doorbells(%struct.intel_guc* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %32 = call i32 @guc_clients_create(%struct.intel_guc* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %17
  br label %37

36:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %41

37:                                               ; preds = %35
  %38 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %39 = call i32 @guc_stage_desc_pool_destroy(%struct.intel_guc* %38)
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %36, %15, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @guc_stage_desc_pool_create(%struct.intel_guc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @guc_verify_doorbells(%struct.intel_guc*) #1

declare dso_local i32 @guc_clients_create(%struct.intel_guc*) #1

declare dso_local i32 @guc_stage_desc_pool_destroy(%struct.intel_guc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
