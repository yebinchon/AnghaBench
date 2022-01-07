; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_ring_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c_guc_ring_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_client = type { i32 }
%struct.guc_doorbell_info = type { i64, i32 }

@GUC_DOORBELL_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_client*)* @guc_ring_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_ring_doorbell(%struct.intel_guc_client* %0) #0 {
  %2 = alloca %struct.intel_guc_client*, align 8
  %3 = alloca %struct.guc_doorbell_info*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_guc_client* %0, %struct.intel_guc_client** %2, align 8
  %5 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %6 = getelementptr inbounds %struct.intel_guc_client, %struct.intel_guc_client* %5, i32 0, i32 0
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.intel_guc_client*, %struct.intel_guc_client** %2, align 8
  %9 = call %struct.guc_doorbell_info* @__get_doorbell(%struct.intel_guc_client* %8)
  store %struct.guc_doorbell_info* %9, %struct.guc_doorbell_info** %3, align 8
  %10 = load %struct.guc_doorbell_info*, %struct.guc_doorbell_info** %3, align 8
  %11 = getelementptr inbounds %struct.guc_doorbell_info, %struct.guc_doorbell_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @READ_ONCE(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.guc_doorbell_info*, %struct.guc_doorbell_info** %3, align 8
  %15 = getelementptr inbounds %struct.guc_doorbell_info, %struct.guc_doorbell_info* %14, i32 0, i32 1
  %16 = load i64, i64* %4, align 8
  %17 = add nsw i64 %16, 1
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %23

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, 2
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i64 [ %17, %19 ], [ %22, %20 ]
  %25 = call i64 @xchg(i32* %15, i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load %struct.guc_doorbell_info*, %struct.guc_doorbell_info** %3, align 8
  %31 = getelementptr inbounds %struct.guc_doorbell_info, %struct.guc_doorbell_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GUC_DOORBELL_ENABLED, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @GEM_BUG_ON(i32 %35)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.guc_doorbell_info* @__get_doorbell(%struct.intel_guc_client*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @xchg(i32*, i64) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
