; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-beeper.c_pwm_beeper_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_pwm-beeper.c_pwm_beeper_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.pwm_beeper = type { i32, i32, i32, i64 }

@EV_SND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @pwm_beeper_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_beeper_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pwm_beeper*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = call %struct.pwm_beeper* @input_get_drvdata(%struct.input_dev* %11)
  store %struct.pwm_beeper* %12, %struct.pwm_beeper** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @EV_SND, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %35 [
    i32 129, label %24
    i32 128, label %34
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.pwm_beeper*, %struct.pwm_beeper** %10, align 8
  %29 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %32

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  store i32 %33, i32* %9, align 4
  br label %38

34:                                               ; preds = %22
  br label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %59

38:                                               ; preds = %34, %32
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.pwm_beeper*, %struct.pwm_beeper** %10, align 8
  %43 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  br label %49

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @HZ_TO_NANOSECONDS(i32 %45)
  %47 = load %struct.pwm_beeper*, %struct.pwm_beeper** %10, align 8
  %48 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %47, i32 0, i32 3
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.pwm_beeper*, %struct.pwm_beeper** %10, align 8
  %51 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load %struct.pwm_beeper*, %struct.pwm_beeper** %10, align 8
  %56 = getelementptr inbounds %struct.pwm_beeper, %struct.pwm_beeper* %55, i32 0, i32 1
  %57 = call i32 @schedule_work(i32* %56)
  br label %58

58:                                               ; preds = %54, %49
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %35, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.pwm_beeper* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i64 @HZ_TO_NANOSECONDS(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
