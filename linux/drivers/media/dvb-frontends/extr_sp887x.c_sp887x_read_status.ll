; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp887x.c_sp887x_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.sp887x_state* }
%struct.sp887x_state = type { i32 }

@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"sp887x: implement tuner adjustment (%+i steps)!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @sp887x_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp887x_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sp887x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.sp887x_state*, %struct.sp887x_state** %11, align 8
  store %struct.sp887x_state* %12, %struct.sp887x_state** %5, align 8
  %13 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %14 = call i32 @sp887x_readreg(%struct.sp887x_state* %13, i32 3862)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %16 = call i32 @sp887x_readreg(%struct.sp887x_state* %15, i32 512)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sp887x_state*, %struct.sp887x_state** %5, align 8
  %18 = call i32 @sp887x_readreg(%struct.sp887x_state* %17, i32 3863)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* @FE_HAS_LOCK, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @FE_HAS_VITERBI, align 4
  %37 = load i32, i32* @FE_HAS_SYNC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @FE_HAS_CARRIER, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %31, %27
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 4
  %51 = and i32 %50, 15
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %44
  ret i32 0
}

declare dso_local i32 @sp887x_readreg(%struct.sp887x_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
