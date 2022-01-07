; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_ml_schedule_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_ml_schedule_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ml_device = type { i32, %struct.ml_effect_state* }
%struct.ml_effect_state = type { i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"calculating next timer\0A\00", align 1
@FF_MEMLESS_EFFECTS = common dso_local global i32 0, align 4
@FF_EFFECT_STARTED = common dso_local global i32 0, align 4
@FF_EFFECT_PLAYING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"no actions\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"timer set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ml_device*)* @ml_schedule_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ml_schedule_timer(%struct.ml_device* %0) #0 {
  %2 = alloca %struct.ml_device*, align 8
  %3 = alloca %struct.ml_effect_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ml_device* %0, %struct.ml_device** %2, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %58, %1
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @FF_MEMLESS_EFFECTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.ml_device*, %struct.ml_device** %2, align 8
  %17 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %16, i32 0, i32 1
  %18 = load %struct.ml_effect_state*, %struct.ml_effect_state** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %18, i64 %20
  store %struct.ml_effect_state* %21, %struct.ml_effect_state** %3, align 8
  %22 = load i32, i32* @FF_EFFECT_STARTED, align 4
  %23 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %24 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  br label %58

28:                                               ; preds = %15
  %29 = load i32, i32* @FF_EFFECT_PLAYING, align 4
  %30 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %31 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %36 = call i64 @calculate_next_time(%struct.ml_effect_state* %35)
  store i64 %36, i64* %6, align 8
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.ml_effect_state*, %struct.ml_effect_state** %3, align 8
  %39 = getelementptr inbounds %struct.ml_effect_state, %struct.ml_effect_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @time_before_eq(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @time_before(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50, %46
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %55, %50, %41
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %11

61:                                               ; preds = %11
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = call i32 @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.ml_device*, %struct.ml_device** %2, align 8
  %67 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %66, i32 0, i32 0
  %68 = call i32 @del_timer(i32* %67)
  br label %75

69:                                               ; preds = %61
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.ml_device*, %struct.ml_device** %2, align 8
  %72 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %71, i32 0, i32 0
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @mod_timer(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @calculate_next_time(%struct.ml_effect_state*) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
