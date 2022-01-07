; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_tx_one_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_tx_one_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_i2c_dev = type { i32, i64, i32, %struct.geni_se }
%struct.geni_se = type { i64 }
%struct.i2c_msg = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"lenovo,yoga-c630\00", align 1
@GENI_SE_DMA = common dso_local global i32 0, align 4
@GENI_SE_FIFO = common dso_local global i32 0, align 4
@SE_I2C_TX_TRANS_LEN = common dso_local global i64 0, align 8
@I2C_WRITE = common dso_local global i32 0, align 4
@SE_GENI_TX_WATERMARK_REG = common dso_local global i64 0, align 8
@XFER_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.geni_i2c_dev*, %struct.i2c_msg*, i32)* @geni_i2c_tx_one_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geni_i2c_tx_one_msg(%struct.geni_i2c_dev* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.geni_i2c_dev*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.geni_se*, align 8
  %11 = alloca i64, align 8
  store %struct.geni_i2c_dev* %0, %struct.geni_i2c_dev** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %9, align 8
  %12 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %13 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %12, i32 0, i32 3
  store %struct.geni_se* %13, %struct.geni_se** %10, align 8
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = call i32 @of_machine_is_compatible(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %21 = call i8* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg* %20, i32 32)
  store i8* %21, i8** %9, align 8
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i8*, i8** %9, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %27 = load i32, i32* @GENI_SE_DMA, align 4
  %28 = call i32 @geni_se_select_mode(%struct.geni_se* %26, i32 %27)
  br label %33

29:                                               ; preds = %22
  %30 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %31 = load i32, i32* @GENI_SE_FIFO, align 4
  %32 = call i32 @geni_se_select_mode(%struct.geni_se* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i64, i64* %11, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %37 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SE_I2C_TX_TRANS_LEN, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i32 %35, i64 %40)
  %42 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %43 = load i32, i32* @I2C_WRITE, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @geni_se_setup_m_cmd(%struct.geni_se* %42, i32 %43, i32 %44)
  %46 = load i8*, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %33
  %49 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i64 @geni_se_tx_dma_prep(%struct.geni_se* %49, i8* %50, i64 %51, i32* %7)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %56 = load i32, i32* @GENI_SE_FIFO, align 4
  %57 = call i32 @geni_se_select_mode(%struct.geni_se* %55, i32 %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %60 = call i32 @i2c_put_dma_safe_msg_buf(i8* %58, %struct.i2c_msg* %59, i32 0)
  store i8* null, i8** %9, align 8
  br label %61

61:                                               ; preds = %54, %48, %33
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %66 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SE_GENI_TX_WATERMARK_REG, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel_relaxed(i32 1, i64 %69)
  br label %71

71:                                               ; preds = %64, %61
  %72 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %73 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %72, i32 0, i32 2
  %74 = load i32, i32* @XFER_TIMEOUT, align 4
  %75 = call i64 @wait_for_completion_timeout(i32* %73, i32 %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %80 = call i32 @geni_i2c_abort_xfer(%struct.geni_i2c_dev* %79)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %83 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %108

86:                                               ; preds = %81
  %87 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %88 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %93 = call i32 @geni_i2c_tx_fsm_rst(%struct.geni_i2c_dev* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @geni_se_tx_dma_unprep(%struct.geni_se* %95, i32 %96, i64 %97)
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %101 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %102 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @i2c_put_dma_safe_msg_buf(i8* %99, %struct.i2c_msg* %100, i32 %106)
  br label %108

108:                                              ; preds = %94, %81
  %109 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %110 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  ret i32 %111
}

declare dso_local i32 @of_machine_is_compatible(i8*) #1

declare dso_local i8* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg*, i32) #1

declare dso_local i32 @geni_se_select_mode(%struct.geni_se*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @geni_se_setup_m_cmd(%struct.geni_se*, i32, i32) #1

declare dso_local i64 @geni_se_tx_dma_prep(%struct.geni_se*, i8*, i64, i32*) #1

declare dso_local i32 @i2c_put_dma_safe_msg_buf(i8*, %struct.i2c_msg*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @geni_i2c_abort_xfer(%struct.geni_i2c_dev*) #1

declare dso_local i32 @geni_i2c_tx_fsm_rst(%struct.geni_i2c_dev*) #1

declare dso_local i32 @geni_se_tx_dma_unprep(%struct.geni_se*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
