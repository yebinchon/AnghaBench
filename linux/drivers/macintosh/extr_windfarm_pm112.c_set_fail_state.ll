; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm112.c_set_fail_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm112.c_set_fail_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpufreq_clamp = common dso_local global i64 0, align 8
@NR_CPU_FANS = common dso_local global i32 0, align 4
@cpu_fans = common dso_local global i64* null, align 8
@backside_fan = common dso_local global i64 0, align 8
@slots_fan = common dso_local global i64 0, align 8
@drive_bay_fan = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_fail_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fail_state() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @cpufreq_clamp, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @cpufreq_clamp, align 8
  %6 = call i32 @wf_control_set_max(i64 %5)
  br label %7

7:                                                ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %27, %7
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @NR_CPU_FANS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load i64*, i64** @cpu_fans, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i64*, i64** @cpu_fans, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @wf_control_set_max(i64 %24)
  br label %26

26:                                               ; preds = %19, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load i64, i64* @backside_fan, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* @backside_fan, align 8
  %35 = call i32 @wf_control_set_max(i64 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i64, i64* @slots_fan, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @slots_fan, align 8
  %41 = call i32 @wf_control_set_max(i64 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i64, i64* @drive_bay_fan, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, i64* @drive_bay_fan, align 8
  %47 = call i32 @wf_control_set_max(i64 %46)
  br label %48

48:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @wf_control_set_max(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
