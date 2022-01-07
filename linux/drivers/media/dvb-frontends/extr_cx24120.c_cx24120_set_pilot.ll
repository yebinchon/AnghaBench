; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_pilot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_set_pilot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx24120_state = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@SYS_DVBS2 = common dso_local global i64 0, align 8
@CX24120_PILOT_OFF = common dso_local global i8* null, align 8
@CX24120_PILOT_ON = common dso_local global i8* null, align 8
@CX24120_PILOT_AUTO = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx24120_state*, i32)* @cx24120_set_pilot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_set_pilot(%struct.cx24120_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx24120_state*, align 8
  %5 = alloca i32, align 4
  store %struct.cx24120_state* %0, %struct.cx24120_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %7 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @dev_dbg(i32* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %13 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SYS_DVBS2, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8*, i8** @CX24120_PILOT_OFF, align 8
  %20 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %21 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  store i32 0, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %36 [
    i32 129, label %25
    i32 128, label %30
    i32 130, label %35
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @CX24120_PILOT_OFF, align 8
  %27 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %28 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  br label %41

30:                                               ; preds = %23
  %31 = load i8*, i8** @CX24120_PILOT_ON, align 8
  %32 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %33 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  br label %41

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %23, %35
  %37 = load i8*, i8** @CX24120_PILOT_AUTO, align 8
  %38 = load %struct.cx24120_state*, %struct.cx24120_state** %4, align 8
  %39 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %30, %25
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
