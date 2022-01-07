; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_diseqc_send_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24110.c_cx24110_diseqc_send_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24110_state* }
%struct.cx24110_state = type { i32 }

@SEC_MINI_A = common dso_local global i32 0, align 4
@SEC_MINI_B = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @cx24110_diseqc_send_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24110_diseqc_send_burst(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx24110_state*, align 8
  %9 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.cx24110_state*, %struct.cx24110_state** %11, align 8
  store %struct.cx24110_state* %12, %struct.cx24110_state** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SEC_MINI_A, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SEC_MINI_B, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 8, i32* %7, align 4
  br label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %28 = call i32 @cx24110_readreg(%struct.cx24110_state* %27, i32 119)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 4
  %36 = call i32 @cx24110_writereg(%struct.cx24110_state* %33, i32 119, i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %39 = call i32 @cx24110_readreg(%struct.cx24110_state* %38, i32 118)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 144
  %43 = or i32 %42, 64
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @cx24110_writereg(%struct.cx24110_state* %40, i32 118, i32 %45)
  %47 = load i64, i64* @jiffies, align 8
  %48 = call i64 @msecs_to_jiffies(i32 100)
  %49 = add i64 %47, %48
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %63, %37
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @time_after(i64 %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.cx24110_state*, %struct.cx24110_state** %8, align 8
  %57 = call i32 @cx24110_readreg(%struct.cx24110_state* %56, i32 118)
  %58 = and i32 %57, 64
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  br label %50

64:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @cx24110_readreg(%struct.cx24110_state*, i32) #1

declare dso_local i32 @cx24110_writereg(%struct.cx24110_state*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
