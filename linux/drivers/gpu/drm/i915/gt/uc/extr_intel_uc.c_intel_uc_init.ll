; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { %struct.intel_huc, %struct.intel_guc }
%struct.intel_huc = type { i32 }
%struct.intel_guc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uc_init(%struct.intel_uc* %0) #0 {
  %2 = alloca %struct.intel_uc*, align 8
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.intel_huc*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_uc* %0, %struct.intel_uc** %2, align 8
  %6 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %7 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %6, i32 0, i32 1
  store %struct.intel_guc* %7, %struct.intel_guc** %3, align 8
  %8 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %9 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %8, i32 0, i32 0
  store %struct.intel_huc* %9, %struct.intel_huc** %4, align 8
  %10 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %11 = call i32 @intel_uc_uses_guc(%struct.intel_uc* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %16 = call i32 @intel_uc_supports_guc_submission(%struct.intel_uc* %15)
  %17 = call i32 @GEM_BUG_ON(i32 %16)
  %18 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %19 = call i32 @intel_guc_init(%struct.intel_guc* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.intel_huc*, %struct.intel_huc** %4, align 8
  %24 = getelementptr inbounds %struct.intel_huc, %struct.intel_huc* %23, i32 0, i32 0
  %25 = call i32 @intel_uc_fw_cleanup_fetch(i32* %24)
  br label %33

26:                                               ; preds = %14
  %27 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %28 = call i64 @intel_uc_uses_huc(%struct.intel_uc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.intel_huc*, %struct.intel_huc** %4, align 8
  %32 = call i32 @intel_huc_init(%struct.intel_huc* %31)
  br label %33

33:                                               ; preds = %13, %22, %30, %26
  ret void
}

declare dso_local i32 @intel_uc_uses_guc(%struct.intel_uc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uc_supports_guc_submission(%struct.intel_uc*) #1

declare dso_local i32 @intel_guc_init(%struct.intel_guc*) #1

declare dso_local i32 @intel_uc_fw_cleanup_fetch(i32*) #1

declare dso_local i64 @intel_uc_uses_huc(%struct.intel_uc*) #1

declare dso_local i32 @intel_huc_init(%struct.intel_huc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
