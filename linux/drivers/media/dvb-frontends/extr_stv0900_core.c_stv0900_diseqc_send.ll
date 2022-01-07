; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_diseqc_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_diseqc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

@DIS_PRECHARGE = common dso_local global i32 0, align 4
@FIFO_FULL = common dso_local global i32 0, align 4
@DISTXDATA = common dso_local global i32 0, align 4
@TX_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv0900_internal*, i32*, i64, i32)* @stv0900_diseqc_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_diseqc_send(%struct.stv0900_internal* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.stv0900_internal*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %11 = load i32, i32* @DIS_PRECHARGE, align 4
  %12 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %10, i32 %11, i32 1)
  br label %13

13:                                               ; preds = %24, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %23, %17
  %19 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %20 = load i32, i32* @FIFO_FULL, align 4
  %21 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %18

24:                                               ; preds = %18
  %25 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %26 = load i32, i32* @DISTXDATA, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %25, i32 %26, i32 %30)
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %9, align 8
  br label %13

34:                                               ; preds = %13
  %35 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %36 = load i32, i32* @DIS_PRECHARGE, align 4
  %37 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %35, i32 %36, i32 0)
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %48, %34
  %39 = load %struct.stv0900_internal*, %struct.stv0900_internal** %5, align 8
  %40 = load i32, i32* @TX_IDLE, align 4
  %41 = call i32 @stv0900_get_bits(%struct.stv0900_internal* %39, i32 %40)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %44, 10
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i1 [ false, %38 ], [ %45, %43 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = call i32 @msleep(i32 10)
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %38

52:                                               ; preds = %46
  ret i32 0
}

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_get_bits(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
