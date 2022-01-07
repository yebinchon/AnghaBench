; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sprd.c_sprd_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_i2c = type { i32, i64, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@I2C_STATUS = common dso_local global i64 0, align 8
@I2C_RX_ACK = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@I2C_FIFO_FULL_THLD = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sprd_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sprd_i2c*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.sprd_i2c*
  store %struct.sprd_i2c* %10, %struct.sprd_i2c** %5, align 8
  %11 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %12 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %11, i32 0, i32 2
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %12, align 8
  store %struct.i2c_msg* %13, %struct.i2c_msg** %6, align 8
  %14 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %15 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @I2C_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load i32, i32* @I2C_RX_ACK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_M_RD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %33 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @I2C_FIFO_FULL_THLD, align 4
  %36 = icmp sge i32 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.sprd_i2c, %struct.sprd_i2c* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %50 = call i32 @sprd_i2c_clear_start(%struct.sprd_i2c* %49)
  %51 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %52 = call i32 @sprd_i2c_clear_irq(%struct.sprd_i2c* %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %55 = call i32 @sprd_i2c_set_fifo_empty_int(%struct.sprd_i2c* %54, i32 0)
  %56 = load %struct.sprd_i2c*, %struct.sprd_i2c** %5, align 8
  %57 = call i32 @sprd_i2c_set_fifo_full_int(%struct.sprd_i2c* %56, i32 0)
  %58 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  ret i32 %58
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @sprd_i2c_clear_start(%struct.sprd_i2c*) #1

declare dso_local i32 @sprd_i2c_clear_irq(%struct.sprd_i2c*) #1

declare dso_local i32 @sprd_i2c_set_fifo_empty_int(%struct.sprd_i2c*, i32) #1

declare dso_local i32 @sprd_i2c_set_fifo_full_int(%struct.sprd_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
