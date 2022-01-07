; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp9xx_i2c_dev = type { i32, i64, i32, i64, i32 }

@XLP9XX_I2C_INTST = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@XLP9XX_I2C_STATUS_ERRMASK = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_SADDR = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_MFIFOEMTY = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_DATADONE = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN_MFIFOHI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@XLP9XX_I2C_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xlp9xx_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp9xx_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xlp9xx_i2c_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.xlp9xx_i2c_dev*
  store %struct.xlp9xx_i2c_dev* %9, %struct.xlp9xx_i2c_dev** %6, align 8
  %10 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %11 = load i32, i32* @XLP9XX_I2C_INTST, align 4
  %12 = call i32 @xlp9xx_read_i2c_reg(%struct.xlp9xx_i2c_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %98

17:                                               ; preds = %2
  %18 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %19 = load i32, i32* @XLP9XX_I2C_INTST, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @XLP9XX_I2C_STATUS_ERRMASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %29 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %90

30:                                               ; preds = %17
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @XLP9XX_I2C_INTEN_SADDR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %37 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %90

41:                                               ; preds = %35, %30
  %42 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %43 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @XLP9XX_I2C_INTEN_MFIFOEMTY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %53 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %58 = call i32 @xlp9xx_i2c_fill_tx_fifo(%struct.xlp9xx_i2c_dev* %57)
  br label %63

59:                                               ; preds = %51
  %60 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %61 = load i32, i32* @XLP9XX_I2C_INTEN_MFIFOEMTY, align 4
  %62 = call i32 @xlp9xx_i2c_mask_irq(%struct.xlp9xx_i2c_dev* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63, %46
  br label %82

65:                                               ; preds = %41
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @XLP9XX_I2C_INTEN_DATADONE, align 4
  %68 = load i32, i32* @XLP9XX_I2C_INTEN_MFIFOHI, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %74 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %79 = call i32 @xlp9xx_i2c_drain_rx_fifo(%struct.xlp9xx_i2c_dev* %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %65
  br label %82

82:                                               ; preds = %81, %64
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @XLP9XX_I2C_INTEN_DATADONE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %89, i32* %3, align 4
  br label %98

90:                                               ; preds = %87, %40, %26
  %91 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %92 = load i32, i32* @XLP9XX_I2C_INTEN, align 4
  %93 = call i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev* %91, i32 %92, i32 0)
  %94 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %6, align 8
  %95 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %94, i32 0, i32 2
  %96 = call i32 @complete(i32* %95)
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %90, %88, %15
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @xlp9xx_read_i2c_reg(%struct.xlp9xx_i2c_dev*, i32) #1

declare dso_local i32 @xlp9xx_write_i2c_reg(%struct.xlp9xx_i2c_dev*, i32, i32) #1

declare dso_local i32 @xlp9xx_i2c_fill_tx_fifo(%struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @xlp9xx_i2c_mask_irq(%struct.xlp9xx_i2c_dev*, i32) #1

declare dso_local i32 @xlp9xx_i2c_drain_rx_fifo(%struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
