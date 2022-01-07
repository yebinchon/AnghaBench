; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_wait_diseqc_fifo_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_wait_diseqc_fifo_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@STB0899_DISSTATUS = common dso_local global i32 0, align 4
@FIFOFULL = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"timed out !!\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*, i32)* @stb0899_wait_diseqc_fifo_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_wait_diseqc_fifo_empty(%struct.stb0899_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stb0899_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %7, align 8
  br label %9

9:                                                ; preds = %2, %34
  %10 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %11 = load i32, i32* @STB0899_DISSTATUS, align 4
  %12 = call i32 @stb0899_read_reg(%struct.stb0899_state* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @FIFOFULL, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @STB0899_GETFIELD(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  br label %35

18:                                               ; preds = %9
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = call i64 @time_after(i64 %19, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18
  %27 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %28 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FE_ERROR, align 4
  %31 = call i32 @dprintk(i32 %29, i32 %30, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %18
  br label %9

35:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %26
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
