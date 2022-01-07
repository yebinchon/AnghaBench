; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_write_fifo_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-bcm-kona.c_bcm_kona_i2c_write_fifo_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_kona_i2c_dev = type { i32, i64, i32, i32 }

@I2C_TIMEOUT = common dso_local global i32 0, align 4
@IER_FIFO_INT_EN_MASK = common dso_local global i32 0, align 4
@IER_NOACK_EN_MASK = common dso_local global i32 0, align 4
@IER_OFFSET = common dso_local global i64 0, align 8
@DAT_OFFSET = common dso_local global i64 0, align 8
@FIFO_STATUS_OFFSET = common dso_local global i64 0, align 8
@FIFO_STATUS_TXFIFO_EMPTY_MASK = common dso_local global i32 0, align 4
@CS_OFFSET = common dso_local global i64 0, align 8
@CS_ACK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unexpected NAK\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"completion timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_kona_i2c_dev*, i32*, i32)* @bcm_kona_i2c_write_fifo_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_kona_i2c_write_fifo_single(%struct.bcm_kona_i2c_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_kona_i2c_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bcm_kona_i2c_dev* %0, %struct.bcm_kona_i2c_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @I2C_TIMEOUT, align 4
  %12 = call i64 @msecs_to_jiffies(i32 %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %14 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %13, i32 0, i32 2
  %15 = call i32 @reinit_completion(i32* %14)
  %16 = load i32, i32* @IER_FIFO_INT_EN_MASK, align 4
  %17 = load i32, i32* @IER_NOACK_EN_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %20 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IER_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %26 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @disable_irq(i32 %27)
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %45, %3
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %40 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DAT_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %50 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @enable_irq(i32 %51)
  br label %53

53:                                               ; preds = %73, %48
  %54 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %55 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %54, i32 0, i32 2
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @wait_for_completion_timeout(i32* %55, i64 %56)
  store i64 %57, i64* %9, align 8
  %58 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %59 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @FIFO_STATUS_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readl(i64 %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @FIFO_STATUS_TXFIFO_EMPTY_MASK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ false, %64 ], [ %72, %67 ]
  br i1 %74, label %53, label %75

75:                                               ; preds = %73
  %76 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %77 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IER_OFFSET, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 0, i64 %80)
  %82 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %83 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CS_OFFSET, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  %88 = load i32, i32* @CS_ACK_MASK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %75
  %92 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %93 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EREMOTEIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %109

98:                                               ; preds = %75
  %99 = load i64, i64* %9, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load %struct.bcm_kona_i2c_dev*, %struct.bcm_kona_i2c_dev** %5, align 8
  %103 = getelementptr inbounds %struct.bcm_kona_i2c_dev, %struct.bcm_kona_i2c_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @EREMOTEIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %101, %91
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
