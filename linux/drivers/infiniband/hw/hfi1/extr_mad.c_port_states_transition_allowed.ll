; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_port_states_transition_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_port_states_transition_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_pportdata = type { i32 }

@HFI_TRANSITION_DISALLOWED = common dso_local global i32 0, align 4
@HFI_TRANSITION_UNDEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"invalid logical state transition %s -> %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"invalid physical state transition %s -> %s\0A\00", align 1
@HFI_TRANSITION_IGNORED = common dso_local global i32 0, align 4
@OPA_PORTPHYSSTATE_OFFLINE = common dso_local global i64 0, align 8
@IB_PORTPHYSSTATE_POLLING = common dso_local global i64 0, align 8
@HFI_TRANSITION_ALLOWED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_pportdata*, i64, i64)* @port_states_transition_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_states_transition_allowed(%struct.hfi1_pportdata* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hfi1_pportdata* %0, %struct.hfi1_pportdata** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %14 = call i64 @driver_pstate(%struct.hfi1_pportdata* %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %16 = call i64 @driver_lstate(%struct.hfi1_pportdata* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @logical_transition_allowed(i64 %17, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @HFI_TRANSITION_DISALLOWED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @HFI_TRANSITION_UNDEFINED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24, %3
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @opa_lstate_name(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @opa_lstate_name(i64 %31)
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %76

35:                                               ; preds = %24
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @physical_transition_allowed(i64 %36, i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @HFI_TRANSITION_DISALLOWED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @HFI_TRANSITION_UNDEFINED, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43, %35
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @opa_pstate_name(i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @opa_pstate_name(i64 %50)
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %76

54:                                               ; preds = %43
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @HFI_TRANSITION_IGNORED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @HFI_TRANSITION_IGNORED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @HFI_TRANSITION_IGNORED, align 4
  store i32 %63, i32* %4, align 4
  br label %76

64:                                               ; preds = %58, %54
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @OPA_PORTPHYSSTATE_OFFLINE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @IB_PORTPHYSSTATE_POLLING, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @HFI_TRANSITION_IGNORED, align 4
  store i32 %73, i32* %4, align 4
  br label %76

74:                                               ; preds = %68, %64
  %75 = load i32, i32* @HFI_TRANSITION_ALLOWED, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %72, %62, %47, %28
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @driver_pstate(%struct.hfi1_pportdata*) #1

declare dso_local i64 @driver_lstate(%struct.hfi1_pportdata*) #1

declare dso_local i32 @logical_transition_allowed(i64, i64) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @opa_lstate_name(i64) #1

declare dso_local i32 @physical_transition_allowed(i64, i64) #1

declare dso_local i32 @opa_pstate_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
