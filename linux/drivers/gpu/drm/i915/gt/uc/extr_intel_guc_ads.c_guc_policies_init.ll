; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ads.c_guc_policies_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_ads.c_guc_policies_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guc_policies = type { i32, %struct.guc_policy**, i32, i32 }
%struct.guc_policy = type { i32 }

@POLICY_DEFAULT_DPC_PROMOTE_TIME_US = common dso_local global i32 0, align 4
@POLICY_MAX_NUM_WI = common dso_local global i32 0, align 4
@GUC_CLIENT_PRIORITY_NUM = common dso_local global i64 0, align 8
@GUC_MAX_ENGINE_CLASSES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.guc_policies*)* @guc_policies_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_policies_init(%struct.guc_policies* %0) #0 {
  %2 = alloca %struct.guc_policies*, align 8
  %3 = alloca %struct.guc_policy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.guc_policies* %0, %struct.guc_policies** %2, align 8
  %6 = load i32, i32* @POLICY_DEFAULT_DPC_PROMOTE_TIME_US, align 4
  %7 = load %struct.guc_policies*, %struct.guc_policies** %2, align 8
  %8 = getelementptr inbounds %struct.guc_policies, %struct.guc_policies* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @POLICY_MAX_NUM_WI, align 4
  %10 = load %struct.guc_policies*, %struct.guc_policies** %2, align 8
  %11 = getelementptr inbounds %struct.guc_policies, %struct.guc_policies* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %36, %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @GUC_CLIENT_PRIORITY_NUM, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @GUC_MAX_ENGINE_CLASSES, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.guc_policies*, %struct.guc_policies** %2, align 8
  %23 = getelementptr inbounds %struct.guc_policies, %struct.guc_policies* %22, i32 0, i32 1
  %24 = load %struct.guc_policy**, %struct.guc_policy*** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.guc_policy*, %struct.guc_policy** %24, i64 %25
  %27 = load %struct.guc_policy*, %struct.guc_policy** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.guc_policy, %struct.guc_policy* %27, i64 %28
  store %struct.guc_policy* %29, %struct.guc_policy** %3, align 8
  %30 = load %struct.guc_policy*, %struct.guc_policy** %3, align 8
  %31 = call i32 @guc_policy_init(%struct.guc_policy* %30)
  br label %32

32:                                               ; preds = %21
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %17

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %4, align 8
  br label %12

39:                                               ; preds = %12
  %40 = load %struct.guc_policies*, %struct.guc_policies** %2, align 8
  %41 = getelementptr inbounds %struct.guc_policies, %struct.guc_policies* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  ret void
}

declare dso_local i32 @guc_policy_init(%struct.guc_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
