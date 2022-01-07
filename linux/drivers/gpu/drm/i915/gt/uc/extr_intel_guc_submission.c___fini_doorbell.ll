; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___fini_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___fini_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_client = type { i32, i32 }
%struct.guc_doorbell_info = type { i32 }

@GUC_DOORBELL_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Doorbell never became invalid after disable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_client*)* @__fini_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__fini_doorbell(%struct.intel_guc_client* %0) #0 {
  %2 = alloca %struct.intel_guc_client*, align 8
  %3 = alloca %struct.guc_doorbell_info*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %2, align 8
  %5 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %6 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %9 = call %struct.guc_doorbell_info* @__get_doorbell(%struct.intel_guc_client* %8)
  store %struct.guc_doorbell_info* %9, %struct.guc_doorbell_info** %3, align 8
  %10 = load i32, i32* @GUC_DOORBELL_DISABLED, align 4
  %11 = load %struct.guc_doorbell_info*, %struct.guc_doorbell_info** %3, align 8
  %12 = getelementptr inbounds %struct.guc_doorbell_info, %struct.guc_doorbell_info* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %14 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @__doorbell_valid(i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @wait_for_us(i32 %20, i32 10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  ret void
}

declare dso_local %struct.guc_doorbell_info* @__get_doorbell(%struct.intel_guc_client*) #1

declare dso_local i64 @wait_for_us(i32, i32) #1

declare dso_local i32 @__doorbell_valid(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
