; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlr.c_xlr_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_i2c_private = type { i64, i32, i32, %struct.i2c_msg* }
%struct.i2c_msg = type { i64, i32 }

@XLR_I2C_INT_STAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@XLR_I2C_STATUS = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xlr_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xlr_i2c_private*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.xlr_i2c_private*
  store %struct.xlr_i2c_private* %11, %struct.xlr_i2c_private** %6, align 8
  %12 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %13 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %12, i32 0, i32 3
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %13, align 8
  store %struct.i2c_msg* %14, %struct.i2c_msg** %7, align 8
  %15 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %16 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XLR_I2C_INT_STAT, align 4
  %19 = call i32 @xlr_i2c_rdreg(i32 %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %75

24:                                               ; preds = %2
  %25 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %26 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @XLR_I2C_INT_STAT, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @xlr_i2c_wreg(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %32 = icmp ne %struct.i2c_msg* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %75

35:                                               ; preds = %24
  %36 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %37 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @XLR_I2C_STATUS, align 4
  %40 = call i32 @xlr_i2c_rdreg(i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %42 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %35
  %49 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @I2C_M_RD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @xlr_i2c_rx_irq(%struct.xlr_i2c_private* %56, i32 %57)
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @xlr_i2c_tx_irq(%struct.xlr_i2c_private* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %35
  %65 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @xlr_i2c_busy(%struct.xlr_i2c_private* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = load %struct.xlr_i2c_private*, %struct.xlr_i2c_private** %6, align 8
  %71 = getelementptr inbounds %struct.xlr_i2c_private, %struct.xlr_i2c_private* %70, i32 0, i32 1
  %72 = call i32 @wake_up(i32* %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %33, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @xlr_i2c_rdreg(i32, i32) #1

declare dso_local i32 @xlr_i2c_wreg(i32, i32, i32) #1

declare dso_local i32 @xlr_i2c_rx_irq(%struct.xlr_i2c_private*, i32) #1

declare dso_local i32 @xlr_i2c_tx_irq(%struct.xlr_i2c_private*, i32) #1

declare dso_local i32 @xlr_i2c_busy(%struct.xlr_i2c_private*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
