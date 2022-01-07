; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_dmdlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_stv090x_get_dmdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_state = type { i32 }

@DMDSTATE = common dso_local global i32 0, align 4
@HEADER_MODE_FIELD = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Demodulator searching ..\00", align 1
@DSTATUS = common dso_local global i32 0, align 4
@LOCK_DEFINITIF_FIELD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Demodulator acquired LOCK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv090x_state*, i64)* @stv090x_get_dmdlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_get_dmdlock(%struct.stv090x_state* %0, i64 %1) #0 {
  %3 = alloca %struct.stv090x_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stv090x_state* %0, %struct.stv090x_state** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %9

9:                                                ; preds = %48, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %51

19:                                               ; preds = %17
  %20 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %21 = load i32, i32* @DMDSTATE, align 4
  %22 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HEADER_MODE_FIELD, align 4
  %25 = call i8* @STV090x_GETFIELD_Px(i32 %23, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %29 [
    i32 0, label %28
    i32 1, label %28
    i32 2, label %32
    i32 3, label %32
  ]

28:                                               ; preds = %19, %19
  br label %29

29:                                               ; preds = %19, %28
  %30 = load i32, i32* @FE_DEBUG, align 4
  %31 = call i32 @dprintk(i32 %30, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %40

32:                                               ; preds = %19, %19
  %33 = load %struct.stv090x_state*, %struct.stv090x_state** %3, align 8
  %34 = load i32, i32* @DSTATUS, align 4
  %35 = call i32 @STV090x_READ_DEMOD(%struct.stv090x_state* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @LOCK_DEFINITIF_FIELD, align 4
  %38 = call i8* @STV090x_GETFIELD_Px(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %32, %29
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 @msleep(i32 10)
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @FE_DEBUG, align 4
  %47 = call i32 @dprintk(i32 %46, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i64, i64* %5, align 8
  %50 = add nsw i64 %49, 10
  store i64 %50, i64* %5, align 8
  br label %9

51:                                               ; preds = %17
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  ret i32 %53
}

declare dso_local i32 @STV090x_READ_DEMOD(%struct.stv090x_state*, i32) #1

declare dso_local i8* @STV090x_GETFIELD_Px(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
