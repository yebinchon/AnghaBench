; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm81.c_wf_smu_tick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm81.c_wf_smu_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wf_smu_failure_state = common dso_local global i32 0, align 4
@wf_smu_started = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wf: creating control loops !\0A\00", align 1
@wf_smu_skipping = common dso_local global i32 0, align 4
@wf_smu_sys_fans = common dso_local global i64 0, align 8
@wf_smu_cpu_fans = common dso_local global i64 0, align 8
@wf_smu_readjust = common dso_local global i32 0, align 4
@cpufreq_clamp = common dso_local global i64 0, align 8
@fan_system = common dso_local global i64 0, align 8
@fan_cpu_main = common dso_local global i64 0, align 8
@fan_hd = common dso_local global i64 0, align 8
@FAILURE_OVERTEMP = common dso_local global i32 0, align 4
@wf_smu_overtemp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wf_smu_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_smu_tick() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @wf_smu_failure_state, align 4
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @wf_smu_started, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (...) @wf_smu_create_sys_fans()
  %9 = call i32 (...) @wf_smu_create_cpu_fans()
  store i32 1, i32* @wf_smu_started, align 4
  br label %10

10:                                               ; preds = %6, %0
  %11 = load i32, i32* @wf_smu_skipping, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @wf_smu_skipping, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* @wf_smu_skipping, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %93

18:                                               ; preds = %13, %10
  store i32 0, i32* @wf_smu_failure_state, align 4
  %19 = load i64, i64* @wf_smu_sys_fans, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @wf_smu_sys_fans, align 8
  %23 = call i32 @wf_smu_sys_fans_tick(i64 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @wf_smu_cpu_fans, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* @wf_smu_cpu_fans, align 8
  %29 = call i32 @wf_smu_cpu_fans_tick(i64 %28)
  br label %30

30:                                               ; preds = %27, %24
  store i32 0, i32* @wf_smu_readjust, align 4
  %31 = load i32, i32* @wf_smu_failure_state, align 4
  %32 = load i32, i32* %1, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* @wf_smu_failure_state, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %30
  %38 = load i32, i32* %1, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @cpufreq_clamp, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* @cpufreq_clamp, align 8
  %45 = call i32 @wf_control_set_max(i64 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @fan_system, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* @fan_system, align 8
  %51 = call i32 @wf_control_set_max(i64 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i64, i64* @fan_cpu_main, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* @fan_cpu_main, align 8
  %57 = call i32 @wf_control_set_max(i64 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i64, i64* @fan_hd, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* @fan_hd, align 8
  %63 = call i32 @wf_control_set_max(i64 %62)
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %37, %30
  %66 = load i32, i32* @wf_smu_failure_state, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %1, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i64, i64* @cpufreq_clamp, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* @cpufreq_clamp, align 8
  %76 = call i32 @wf_control_set_min(i64 %75)
  br label %77

77:                                               ; preds = %74, %71
  store i32 1, i32* @wf_smu_readjust, align 4
  br label %78

78:                                               ; preds = %77, %68, %65
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @FAILURE_OVERTEMP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = call i32 (...) @wf_set_overtemp()
  store i32 2, i32* @wf_smu_skipping, align 4
  store i32 1, i32* @wf_smu_overtemp, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* @wf_smu_failure_state, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @wf_smu_overtemp, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (...) @wf_clear_overtemp()
  store i32 0, i32* @wf_smu_overtemp, align 4
  br label %93

93:                                               ; preds = %17, %91, %88, %85
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @wf_smu_create_sys_fans(...) #1

declare dso_local i32 @wf_smu_create_cpu_fans(...) #1

declare dso_local i32 @wf_smu_sys_fans_tick(i64) #1

declare dso_local i32 @wf_smu_cpu_fans_tick(i64) #1

declare dso_local i32 @wf_control_set_max(i64) #1

declare dso_local i32 @wf_control_set_min(i64) #1

declare dso_local i32 @wf_set_overtemp(...) #1

declare dso_local i32 @wf_clear_overtemp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
