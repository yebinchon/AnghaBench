; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_rx_one_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qcom-geni.c_geni_i2c_rx_one_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_i2c_dev = type { i32, i64, i32, %struct.geni_se }
%struct.geni_se = type { i64 }
%struct.i2c_msg = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"lenovo,yoga-c630\00", align 1
@GENI_SE_DMA = common dso_local global i32 0, align 4
@GENI_SE_FIFO = common dso_local global i32 0, align 4
@SE_I2C_RX_TRANS_LEN = common dso_local global i64 0, align 8
@I2C_READ = common dso_local global i32 0, align 4
@XFER_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.geni_i2c_dev*, %struct.i2c_msg*, i32)* @geni_i2c_rx_one_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geni_i2c_rx_one_msg(%struct.geni_i2c_dev* %0, %struct.i2c_msg* %1, i32 %2) #0 {
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
  %35 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %36 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SE_I2C_RX_TRANS_LEN, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i64 %34, i64 %39)
  %41 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %42 = load i32, i32* @I2C_READ, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @geni_se_setup_m_cmd(%struct.geni_se* %41, i32 %42, i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %33
  %48 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i64 @geni_se_rx_dma_prep(%struct.geni_se* %48, i8* %49, i64 %50, i32* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %55 = load i32, i32* @GENI_SE_FIFO, align 4
  %56 = call i32 @geni_se_select_mode(%struct.geni_se* %54, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %59 = call i32 @i2c_put_dma_safe_msg_buf(i8* %57, %struct.i2c_msg* %58, i32 0)
  store i8* null, i8** %9, align 8
  br label %60

60:                                               ; preds = %53, %47, %33
  %61 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %62 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %61, i32 0, i32 2
  %63 = load i32, i32* @XFER_TIMEOUT, align 4
  %64 = call i64 @wait_for_completion_timeout(i32* %62, i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %69 = call i32 @geni_i2c_abort_xfer(%struct.geni_i2c_dev* %68)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %72 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %77 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %82 = call i32 @geni_i2c_rx_fsm_rst(%struct.geni_i2c_dev* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.geni_se*, %struct.geni_se** %10, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @geni_se_rx_dma_unprep(%struct.geni_se* %84, i32 %85, i64 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %90 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %91 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i32 @i2c_put_dma_safe_msg_buf(i8* %88, %struct.i2c_msg* %89, i32 %95)
  br label %97

97:                                               ; preds = %83, %70
  %98 = load %struct.geni_i2c_dev*, %struct.geni_i2c_dev** %4, align 8
  %99 = getelementptr inbounds %struct.geni_i2c_dev, %struct.geni_i2c_dev* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  ret i32 %100
}

declare dso_local i32 @of_machine_is_compatible(i8*) #1

declare dso_local i8* @i2c_get_dma_safe_msg_buf(%struct.i2c_msg*, i32) #1

declare dso_local i32 @geni_se_select_mode(%struct.geni_se*, i32) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i32 @geni_se_setup_m_cmd(%struct.geni_se*, i32, i32) #1

declare dso_local i64 @geni_se_rx_dma_prep(%struct.geni_se*, i8*, i64, i32*) #1

declare dso_local i32 @i2c_put_dma_safe_msg_buf(i8*, %struct.i2c_msg*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @geni_i2c_abort_xfer(%struct.geni_i2c_dev*) #1

declare dso_local i32 @geni_i2c_rx_fsm_rst(%struct.geni_i2c_dev*) #1

declare dso_local i32 @geni_se_rx_dma_unprep(%struct.geni_se*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
