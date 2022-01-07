; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_read_fifo_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_read_fifo_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i64, i32, i32 }

@I2C_TIMEOUT = common dso_local global i32 0, align 4
@IER_READ_COMPLETE_INT_MASK = common dso_local global i32 0, align 4
@IER_OFFSET = common dso_local global i64 0, align 8
@RXFCR_NACK_EN_SHIFT = common dso_local global i32 0, align 4
@RXFCR_READ_COUNT_SHIFT = common dso_local global i32 0, align 4
@RXFCR_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"RX FIFO time out\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@RXFIFORDOUT_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kona_i2c_dev*, i32*, i32, i32)* @bcm_kona_i2c_read_fifo_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_i2c_read_fifo_single(%struct.bcm_kona_i2c_dev* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_kona_i2c_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @I2C_TIMEOUT, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  store i64 %12, i64* %10, align 8
  %13 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %14 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %13, i32 0, i32 2
  %15 = call i32 @reinit_completion(i32* %14)
  %16 = load i32, i32* @IER_READ_COMPLETE_INT_MASK, align 4
  %17 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %18 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IER_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RXFCR_NACK_EN_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @RXFCR_READ_COUNT_SHIFT, align 4
  %28 = shl i32 %26, %27
  %29 = or i32 %25, %28
  %30 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %31 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RXFCR_OFFSET, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %37 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %36, i32 0, i32 2
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @wait_for_completion_timeout(i32* %37, i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %41 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IER_OFFSET, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 0, i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %4
  %49 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %50 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EREMOTEIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %73

55:                                               ; preds = %4
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp ugt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %6, align 8
  %61 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RXFIFORDOUT_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readl(i64 %64)
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, -1
  store i32 %69, i32* %8, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  br label %56

72:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
