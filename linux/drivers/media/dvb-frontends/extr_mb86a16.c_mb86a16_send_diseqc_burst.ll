; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_send_diseqc_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_send_diseqc_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mb86a16_state* }
%struct.mb86a16_state = type { i32 }

@MB86A16_DCC1 = common dso_local global i32 0, align 4
@MB86A16_DCC1_DISTA = common dso_local global i32 0, align 4
@MB86A16_DCC1_TBEN = common dso_local global i32 0, align 4
@MB86A16_DCC1_TBO = common dso_local global i32 0, align 4
@MB86A16_DCCOUT = common dso_local global i32 0, align 4
@MB86A16_DCCOUT_DISEN = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @mb86a16_send_diseqc_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a16_send_diseqc_burst(%struct.dvb_frontend* %0, i32 %1) #0 {
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
  switch i32 %10, label %47 [
    i32 129, label %11
    i32 128, label %30
  ]

11:                                               ; preds = %2
  %12 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %13 = load i32, i32* @MB86A16_DCC1, align 4
  %14 = load i32, i32* @MB86A16_DCC1_DISTA, align 4
  %15 = load i32, i32* @MB86A16_DCC1_TBEN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MB86A16_DCC1_TBO, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @mb86a16_write(%struct.mb86a16_state* %12, i32 %13, i32 %18)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %48

22:                                               ; preds = %11
  %23 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %24 = load i32, i32* @MB86A16_DCCOUT, align 4
  %25 = load i32, i32* @MB86A16_DCCOUT_DISEN, align 4
  %26 = call i32 @mb86a16_write(%struct.mb86a16_state* %23, i32 %24, i32 %25)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %48

29:                                               ; preds = %22
  br label %47

30:                                               ; preds = %2
  %31 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %32 = load i32, i32* @MB86A16_DCC1, align 4
  %33 = load i32, i32* @MB86A16_DCC1_DISTA, align 4
  %34 = load i32, i32* @MB86A16_DCC1_TBEN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mb86a16_write(%struct.mb86a16_state* %31, i32 %32, i32 %35)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %48

39:                                               ; preds = %30
  %40 = load %struct.mb86a16_state*, %struct.mb86a16_state** %6, align 8
  %41 = load i32, i32* @MB86A16_DCCOUT, align 4
  %42 = load i32, i32* @MB86A16_DCCOUT_DISEN, align 4
  %43 = call i32 @mb86a16_write(%struct.mb86a16_state* %40, i32 %41, i32 %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %48

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %2, %46, %29
  store i32 0, i32* %3, align 4
  br label %54

48:                                               ; preds = %45, %38, %28, %21
  %49 = load i32, i32* @verbose, align 4
  %50 = load i32, i32* @MB86A16_ERROR, align 4
  %51 = call i32 @dprintk(i32 %49, i32 %50, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EREMOTEIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %47
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mb86a16_write(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
