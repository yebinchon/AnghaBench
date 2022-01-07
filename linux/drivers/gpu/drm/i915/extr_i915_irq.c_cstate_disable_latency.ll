; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_cstate_disable_latency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_cstate_disable_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { i32, %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cstate_disable_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cstate_disable_latency(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cpuidle_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpuidle_state*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call %struct.cpuidle_driver* (...) @cpuidle_get_driver()
  store %struct.cpuidle_driver* %7, %struct.cpuidle_driver** %4, align 8
  %8 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %9 = icmp ne %struct.cpuidle_driver* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %45, %11
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %15 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %12
  %19 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %4, align 8
  %20 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %19, i32 0, i32 1
  %21 = load %struct.cpuidle_state*, %struct.cpuidle_state** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %21, i64 %23
  store %struct.cpuidle_state* %24, %struct.cpuidle_state** %6, align 8
  %25 = load %struct.cpuidle_state*, %struct.cpuidle_state** %6, align 8
  %26 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @strcmp(i32 %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %18
  %32 = load %struct.cpuidle_state*, %struct.cpuidle_state** %6, align 8
  %33 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.cpuidle_state*, %struct.cpuidle_state** %6, align 8
  %38 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  br label %42

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %40, %36 ], [ 0, %41 ]
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %18
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %12

48:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.cpuidle_driver* @cpuidle_get_driver(...) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
