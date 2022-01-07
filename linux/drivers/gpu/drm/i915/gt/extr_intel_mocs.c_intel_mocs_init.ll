; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_mocs.c_intel_mocs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_mocs_init(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %3 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %4 = call i32 @intel_mocs_init_l3cc_table(%struct.intel_gt* %3)
  %5 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %6 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @HAS_GLOBAL_MOCS_REGISTERS(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %12 = call i32 @intel_mocs_init_global(%struct.intel_gt* %11)
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @intel_mocs_init_l3cc_table(%struct.intel_gt*) #1

declare dso_local i64 @HAS_GLOBAL_MOCS_REGISTERS(i32) #1

declare dso_local i32 @intel_mocs_init_global(%struct.intel_gt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
