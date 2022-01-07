; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_set_tone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_set_tone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mb86a16_state* }
%struct.mb86a16_state = type { i32 }

@MB86A16_TONEOUT2 = common dso_local global i32 0, align 4
@MB86A16_DCC1 = common dso_local global i32 0, align 4
@MB86A16_DCC1_DISTA = common dso_local global i32 0, align 4
@MB86A16_DCC1_CTOE = common dso_local global i32 0, align 4
@MB86A16_DCCOUT = common dso_local global i32 0, align 4
@MB86A16_DCCOUT_DISEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @mb86a16_set_tone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a16_set_tone(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mb86a16_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.mb86a16_state*, %struct.mb86a16_state** %8, align 8
  store %struct.mb86a16_state* %9, %struct.mb86a16_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %54 [
    i32 128, label %11
    i32 129, label %34
  ]

11:                                               ; preds = %2
  %12 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %13 = load i32, i32* @MB86A16_TONEOUT2, align 4
  %14 = call i32 @mb86a16_write(%struct.mb86a16_state* %12, i32 %13, i32 0)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %58

17:                                               ; preds = %11
  %18 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %19 = load i32, i32* @MB86A16_DCC1, align 4
  %20 = load i32, i32* @MB86A16_DCC1_DISTA, align 4
  %21 = load i32, i32* @MB86A16_DCC1_CTOE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @mb86a16_write(%struct.mb86a16_state* %18, i32 %19, i32 %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %58

26:                                               ; preds = %17
  %27 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %28 = load i32, i32* @MB86A16_DCCOUT, align 4
  %29 = load i32, i32* @MB86A16_DCCOUT_DISEN, align 4
  %30 = call i32 @mb86a16_write(%struct.mb86a16_state* %27, i32 %28, i32 %29)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %58

33:                                               ; preds = %26
  br label %57

34:                                               ; preds = %2
  %35 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %36 = load i32, i32* @MB86A16_TONEOUT2, align 4
  %37 = call i32 @mb86a16_write(%struct.mb86a16_state* %35, i32 %36, i32 4)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %58

40:                                               ; preds = %34
  %41 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %42 = load i32, i32* @MB86A16_DCC1, align 4
  %43 = load i32, i32* @MB86A16_DCC1_DISTA, align 4
  %44 = call i32 @mb86a16_write(%struct.mb86a16_state* %41, i32 %42, i32 %43)
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %58

47:                                               ; preds = %40
  %48 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %49 = load i32, i32* @MB86A16_DCCOUT, align 4
  %50 = call i32 @mb86a16_write(%struct.mb86a16_state* %48, i32 %49, i32 0)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %58

53:                                               ; preds = %47
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %53, %33
  store i32 0, i32* %3, align 4
  br label %64

58:                                               ; preds = %52, %46, %39, %32, %25, %16
  %59 = load i32, i32* @verbose, align 4
  %60 = load i32, i32* @MB86A16_ERROR, align 4
  %61 = call i32 @dprintk(i32 %59, i32 %60, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EREMOTEIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %58, %57, %54
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @mb86a16_write(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
