; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-lpc2k.c_i2c_lpc2k_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-lpc2k.c_i2c_lpc2k_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.lpc2k_i2c = type { i32, i32, i64, %struct.i2c_msg*, i64 }

@LPC24XX_I2STAT = common dso_local global i64 0, align 8
@M_I2C_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @i2c_lpc2k_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_lpc2k_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpc2k_i2c*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.lpc2k_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.lpc2k_i2c* %13, %struct.lpc2k_i2c** %8, align 8
  %14 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %8, align 8
  %15 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LPC24XX_I2STAT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @readl(i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @M_I2C_IDLE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %8, align 8
  %25 = call i32 @i2c_lpc2k_clear_arb(%struct.lpc2k_i2c* %24)
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %59, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i64 %34
  %36 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %8, align 8
  %37 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %36, i32 0, i32 3
  store %struct.i2c_msg* %35, %struct.i2c_msg** %37, align 8
  %38 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %8, align 8
  %39 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  %42 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %8, align 8
  %43 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %8, align 8
  %50 = getelementptr inbounds %struct.lpc2k_i2c, %struct.lpc2k_i2c* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.lpc2k_i2c*, %struct.lpc2k_i2c** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @lpc2k_process_msg(%struct.lpc2k_i2c* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %31
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %27

62:                                               ; preds = %27
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %56, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.lpc2k_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @i2c_lpc2k_clear_arb(%struct.lpc2k_i2c*) #1

declare dso_local i32 @lpc2k_process_msg(%struct.lpc2k_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
