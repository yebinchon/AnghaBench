; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367_pll_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367_pll_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"STV0367 SetCLKgen for 58MHz IC and 27Mhz crystal\0A\00", align 1
@R367TER_PLLMDIV = common dso_local global i32 0, align 4
@R367TER_PLLNDIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"FE_STV0367TER_SetCLKgen for 27Mhz\0A\00", align 1
@R367TER_PLLSETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0367_state*, i32, i32)* @stv0367_pll_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0367_pll_setup(%struct.stv0367_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv0367_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stv0367_state* %0, %struct.stv0367_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %20 [
    i32 128, label %8
    i32 129, label %21
  ]

8:                                                ; preds = %3
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %10 [
    i32 27000000, label %11
  ]

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %8, %10
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %14 = load i32, i32* @R367TER_PLLMDIV, align 4
  %15 = call i32 @stv0367_writereg(%struct.stv0367_state* %13, i32 %14, i32 27)
  %16 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %17 = load i32, i32* @R367TER_PLLNDIV, align 4
  %18 = call i32 @stv0367_writereg(%struct.stv0367_state* %16, i32 %17, i32 232)
  br label %19

19:                                               ; preds = %11
  br label %54

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %3, %20
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %37 [
    i32 16000000, label %23
    i32 25000000, label %30
    i32 27000000, label %38
    i32 30000000, label %46
  ]

23:                                               ; preds = %21
  %24 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %25 = load i32, i32* @R367TER_PLLMDIV, align 4
  %26 = call i32 @stv0367_writereg(%struct.stv0367_state* %24, i32 %25, i32 2)
  %27 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %28 = load i32, i32* @R367TER_PLLNDIV, align 4
  %29 = call i32 @stv0367_writereg(%struct.stv0367_state* %27, i32 %28, i32 27)
  br label %53

30:                                               ; preds = %21
  %31 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %32 = load i32, i32* @R367TER_PLLMDIV, align 4
  %33 = call i32 @stv0367_writereg(%struct.stv0367_state* %31, i32 %32, i32 10)
  %34 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %35 = load i32, i32* @R367TER_PLLNDIV, align 4
  %36 = call i32 @stv0367_writereg(%struct.stv0367_state* %34, i32 %35, i32 85)
  br label %53

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %21, %37
  %39 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %41 = load i32, i32* @R367TER_PLLMDIV, align 4
  %42 = call i32 @stv0367_writereg(%struct.stv0367_state* %40, i32 %41, i32 1)
  %43 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %44 = load i32, i32* @R367TER_PLLNDIV, align 4
  %45 = call i32 @stv0367_writereg(%struct.stv0367_state* %43, i32 %44, i32 8)
  br label %53

46:                                               ; preds = %21
  %47 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %48 = load i32, i32* @R367TER_PLLMDIV, align 4
  %49 = call i32 @stv0367_writereg(%struct.stv0367_state* %47, i32 %48, i32 12)
  %50 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %51 = load i32, i32* @R367TER_PLLNDIV, align 4
  %52 = call i32 @stv0367_writereg(%struct.stv0367_state* %50, i32 %51, i32 85)
  br label %53

53:                                               ; preds = %46, %38, %30, %23
  br label %54

54:                                               ; preds = %53, %19
  %55 = load %struct.stv0367_state*, %struct.stv0367_state** %4, align 8
  %56 = load i32, i32* @R367TER_PLLSETUP, align 4
  %57 = call i32 @stv0367_writereg(%struct.stv0367_state* %55, i32 %56, i32 24)
  ret void
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @stv0367_writereg(%struct.stv0367_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
