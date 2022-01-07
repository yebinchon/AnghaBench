; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_drain_rx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-xlp9xx.c_xlp9xx_i2c_drain_rx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp9xx_i2c_dev = type { i32*, i32, i32, i32, i64 }

@XLP9XX_I2C_FIFOWCNT = common dso_local global i32 0, align 4
@XLP9XX_I2C_FIFO_WCNT_MASK = common dso_local global i32 0, align 4
@XLP9XX_I2C_MRXFIFO = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlp9xx_i2c_dev*)* @xlp9xx_i2c_drain_rx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp9xx_i2c_drain_rx_fifo(%struct.xlp9xx_i2c_dev* %0) #0 {
  %2 = alloca %struct.xlp9xx_i2c_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.xlp9xx_i2c_dev* %0, %struct.xlp9xx_i2c_dev** %2, align 8
  %7 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %6, align 8
  %10 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %11 = load i32, i32* @XLP9XX_I2C_FIFOWCNT, align 4
  %12 = call i32 @xlp9xx_read_i2c_reg(%struct.xlp9xx_i2c_dev* %10, i32 %11)
  %13 = load i32, i32* @XLP9XX_I2C_FIFO_WCNT_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %101

18:                                               ; preds = %1
  %19 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %20 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %18
  %24 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %25 = load i32, i32* @XLP9XX_I2C_MRXFIFO, align 4
  %26 = call i32 @xlp9xx_read_i2c_reg(%struct.xlp9xx_i2c_dev* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32, %23
  store i32 0, i32* %5, align 4
  %36 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %37 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %36, i32 0, i32 2
  store i32 0, i32* %37, align 4
  %38 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %39 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %38, i32 0, i32 3
  store i32 0, i32* %39, align 8
  %40 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %41 = call i32 @xlp9xx_i2c_update_rlen(%struct.xlp9xx_i2c_dev* %40)
  br label %101

42:                                               ; preds = %32
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %47 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %56 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %60 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %62 = call i32 @xlp9xx_i2c_update_rlen(%struct.xlp9xx_i2c_dev* %61)
  %63 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %64 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %63, i32 0, i32 1
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %53, %18
  %66 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %67 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @min(i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %80, %65
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %77 = load i32, i32* @XLP9XX_I2C_MRXFIFO, align 4
  %78 = call i32 @xlp9xx_read_i2c_reg(%struct.xlp9xx_i2c_dev* %76, i32 %77)
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %6, align 8
  br label %71

85:                                               ; preds = %71
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %88 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %93 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %92, i32 0, i32 0
  store i32* %91, i32** %93, align 8
  %94 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %95 = getelementptr inbounds %struct.xlp9xx_i2c_dev, %struct.xlp9xx_i2c_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %85
  %99 = load %struct.xlp9xx_i2c_dev*, %struct.xlp9xx_i2c_dev** %2, align 8
  %100 = call i32 @xlp9xx_i2c_update_rx_fifo_thres(%struct.xlp9xx_i2c_dev* %99)
  br label %101

101:                                              ; preds = %17, %35, %98, %85
  ret void
}

declare dso_local i32 @xlp9xx_read_i2c_reg(%struct.xlp9xx_i2c_dev*, i32) #1

declare dso_local i32 @xlp9xx_i2c_update_rlen(%struct.xlp9xx_i2c_dev*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xlp9xx_i2c_update_rx_fifo_thres(%struct.xlp9xx_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
