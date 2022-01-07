; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s921.c_s921_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s921.c_s921_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.s921_state* }
%struct.s921_state = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"status = %04x\0A\00", align 1
@FE_HAS_SIGNAL = common dso_local global i32 0, align 4
@FE_HAS_CARRIER = common dso_local global i32 0, align 4
@FE_HAS_VITERBI = common dso_local global i32 0, align 4
@FE_HAS_SYNC = common dso_local global i32 0, align 4
@FE_HAS_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @s921_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s921_read_status(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.s921_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.s921_state*, %struct.s921_state** %10, align 8
  store %struct.s921_state* %11, %struct.s921_state** %6, align 8
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %14 = call i32 @s921_readreg(%struct.s921_state* %13, i32 129)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 %20, 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %23 = call i32 @s921_readreg(%struct.s921_state* %22, i32 130)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %63

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %39 = load i32, i32* @FE_HAS_CARRIER, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FE_HAS_VITERBI, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @FE_HAS_SYNC, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @FE_HAS_LOCK, align 4
  %46 = or i32 %44, %45
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %62

48:                                               ; preds = %28
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 64
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* @FE_HAS_SIGNAL, align 4
  %54 = load i32, i32* @FE_HAS_CARRIER, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FE_HAS_VITERBI, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FE_HAS_SYNC, align 4
  %59 = or i32 %57, %58
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %52, %48
  br label %62

62:                                               ; preds = %61, %37
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %26, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @s921_readreg(%struct.s921_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
