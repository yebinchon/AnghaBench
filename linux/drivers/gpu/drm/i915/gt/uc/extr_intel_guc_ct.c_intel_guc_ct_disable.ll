; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_intel_guc_ct_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ct.c_intel_guc_ct_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_ct = type { %struct.intel_guc_ct_channel }
%struct.intel_guc_ct_channel = type { i32 }
%struct.intel_guc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_guc_ct_disable(%struct.intel_guc_ct* %0) #0 {
  %2 = alloca %struct.intel_guc_ct*, align 8
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.intel_guc_ct_channel*, align 8
  store %struct.intel_guc_ct* %0, %struct.intel_guc_ct** %2, align 8
  %5 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %2, align 8
  %6 = call %struct.intel_guc* @ct_to_guc(%struct.intel_guc_ct* %5)
  store %struct.intel_guc* %6, %struct.intel_guc** %3, align 8
  %7 = load %struct.intel_guc_ct*, %struct.intel_guc_ct** %2, align 8
  %8 = getelementptr inbounds %struct.intel_guc_ct, %struct.intel_guc_ct* %7, i32 0, i32 0
  store %struct.intel_guc_ct_channel* %8, %struct.intel_guc_ct_channel** %4, align 8
  %9 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %4, align 8
  %10 = getelementptr inbounds %struct.intel_guc_ct_channel, %struct.intel_guc_ct_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %16 = load %struct.intel_guc_ct_channel*, %struct.intel_guc_ct_channel** %4, align 8
  %17 = call i32 @ctch_disable(%struct.intel_guc* %15, %struct.intel_guc_ct_channel* %16)
  br label %18

18:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.intel_guc* @ct_to_guc(%struct.intel_guc_ct*) #1

declare dso_local i32 @ctch_disable(%struct.intel_guc*, %struct.intel_guc_ct_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
