; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_intel_uc_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { i32, %struct.intel_guc }
%struct.intel_guc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uc_fini(%struct.intel_uc* %0) #0 {
  %2 = alloca %struct.intel_uc*, align 8
  %3 = alloca %struct.intel_guc*, align 8
  store %struct.intel_uc* %0, %struct.intel_uc** %2, align 8
  %4 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %5 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %4, i32 0, i32 1
  store %struct.intel_guc* %5, %struct.intel_guc** %3, align 8
  %6 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %7 = call i32 @intel_uc_uses_guc(%struct.intel_uc* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %12 = call i64 @intel_uc_uses_huc(%struct.intel_uc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %16 = getelementptr inbounds %struct.intel_uc, %struct.intel_uc* %15, i32 0, i32 0
  %17 = call i32 @intel_huc_fini(i32* %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %20 = call i32 @intel_guc_fini(%struct.intel_guc* %19)
  %21 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %22 = call i32 @__uc_free_load_err_log(%struct.intel_uc* %21)
  br label %23

23:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @intel_uc_uses_guc(%struct.intel_uc*) #1

declare dso_local i64 @intel_uc_uses_huc(%struct.intel_uc*) #1

declare dso_local i32 @intel_huc_fini(i32*) #1

declare dso_local i32 @intel_guc_fini(%struct.intel_guc*) #1

declare dso_local i32 @__uc_free_load_err_log(%struct.intel_uc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
