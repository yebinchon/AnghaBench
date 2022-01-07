; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_pio_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_pio_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32, %struct.pxa_i2c* }
%struct.pxa_i2c = type { i32 }
%struct.i2c_msg = type { i32 }

@ICR_IUE = common dso_local global i32 0, align 4
@I2C_RETRY = common dso_local global i32 0, align 4
@i2c_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Retrying transmission\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"exhausted retries\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_pxa_pio_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_pio_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pxa_i2c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 2
  %12 = load %struct.pxa_i2c*, %struct.pxa_i2c** %11, align 8
  store %struct.pxa_i2c* %12, %struct.pxa_i2c** %7, align 8
  %13 = load %struct.pxa_i2c*, %struct.pxa_i2c** %7, align 8
  %14 = call i32 @_ICR(%struct.pxa_i2c* %13)
  %15 = call i32 @readl(i32 %14)
  %16 = load i32, i32* @ICR_IUE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.pxa_i2c*, %struct.pxa_i2c** %7, align 8
  %21 = call i32 @i2c_pxa_reset(%struct.pxa_i2c* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %47, %22
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load %struct.pxa_i2c*, %struct.pxa_i2c** %7, align 8
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @i2c_pxa_do_pio_xfer(%struct.pxa_i2c* %30, %struct.i2c_msg* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @I2C_RETRY, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %55

38:                                               ; preds = %29
  %39 = load i64, i64* @i2c_debug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 1
  %44 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %38
  %46 = call i32 @udelay(i32 100)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %9, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load %struct.pxa_i2c*, %struct.pxa_i2c** %7, align 8
  %52 = call i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c* %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EREMOTEIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %37
  %56 = load %struct.pxa_i2c*, %struct.pxa_i2c** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @i2c_pxa_set_slave(%struct.pxa_i2c* %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @_ICR(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_reset(%struct.pxa_i2c*) #1

declare dso_local i32 @i2c_pxa_do_pio_xfer(%struct.pxa_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @i2c_pxa_scream_blue_murder(%struct.pxa_i2c*, i8*) #1

declare dso_local i32 @i2c_pxa_set_slave(%struct.pxa_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
