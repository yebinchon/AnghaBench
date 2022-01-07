; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a20s.c_mb86a20s_get_modulation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a20s.c_mb86a20s_get_modulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a20s_state = type { i32 }

@mb86a20s_get_modulation.reg = internal global [3 x i8] c"\86\8A\8E", align 1
@EINVAL = common dso_local global i32 0, align 4
@DQPSK = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@QAM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a20s_state*, i32)* @mb86a20s_get_modulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a20s_get_modulation(%struct.mb86a20s_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mb86a20s_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mb86a20s_state* %0, %struct.mb86a20s_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @mb86a20s_get_modulation.reg, i64 0, i64 0))
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* @mb86a20s_get_modulation.reg, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = call i32 @mb86a20s_writereg(%struct.mb86a20s_state* %14, i32 109, i8 zeroext %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %13
  %25 = load %struct.mb86a20s_state*, %struct.mb86a20s_state** %4, align 8
  %26 = call i32 @mb86a20s_readreg(%struct.mb86a20s_state* %25, i32 110)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 7
  switch i32 %34, label %43 [
    i32 0, label %35
    i32 1, label %37
    i32 2, label %39
    i32 3, label %41
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* @DQPSK, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %31
  %38 = load i32, i32* @QPSK, align 4
  store i32 %38, i32* %3, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i32, i32* @QAM_16, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %31
  %42 = load i32, i32* @QAM_64, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %31
  %44 = load i32, i32* @QAM_AUTO, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41, %39, %37, %35, %29, %22, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @mb86a20s_writereg(%struct.mb86a20s_state*, i32, i8 zeroext) #1

declare dso_local i32 @mb86a20s_readreg(%struct.mb86a20s_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
