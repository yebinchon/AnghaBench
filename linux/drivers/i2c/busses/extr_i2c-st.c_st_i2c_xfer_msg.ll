; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-st.c_st_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_i2c_dev = type { i64, i32, %struct.TYPE_2__, i32, %struct.st_i2c_client }
%struct.TYPE_2__ = type { i32 }
%struct.st_i2c_client = type { i32, i32, i32, i64, i32, i32 }
%struct.i2c_msg = type { i32, i32 }

@SSC_CTL_EN = common dso_local global i32 0, align 4
@SSC_CTL_MS = common dso_local global i32 0, align 4
@SSC_CTL_EN_RX_FIFO = common dso_local global i32 0, align 4
@SSC_CTL_EN_TX_FIFO = common dso_local global i32 0, align 4
@SSC_CTL = common dso_local global i64 0, align 8
@SSC_I2C_TXENB = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@SSC_I2C_ACKG = common dso_local global i32 0, align 4
@SSC_I2C = common dso_local global i64 0, align 8
@SSC_IEN_NACKEN = common dso_local global i32 0, align 4
@SSC_IEN_TEEN = common dso_local global i32 0, align 4
@SSC_IEN_ARBLEN = common dso_local global i32 0, align 4
@SSC_IEN = common dso_local global i64 0, align 8
@SSC_I2C_STRTG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Write to slave 0x%x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SSC_I2C_STOPG = common dso_local global i32 0, align 4
@SSC_I2C_REPSTRTG = common dso_local global i32 0, align 4
@SSC_CLR_SSCSTOP = common dso_local global i32 0, align 4
@SSC_CLR_REPSTRT = common dso_local global i32 0, align 4
@SSC_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_i2c_dev*, %struct.i2c_msg*, i32, i32)* @st_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_i2c_xfer_msg(%struct.st_i2c_dev* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_i2c_dev*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.st_i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.st_i2c_dev* %0, %struct.st_i2c_dev** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %17 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %16, i32 0, i32 4
  store %struct.st_i2c_client* %17, %struct.st_i2c_client** %10, align 8
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %19 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %18)
  %20 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %21 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %26 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %31 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %33 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %35 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %38 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %40 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %39, i32 0, i32 3
  %41 = call i32 @reinit_completion(i32* %40)
  %42 = load i32, i32* @SSC_CTL_EN, align 4
  %43 = load i32, i32* @SSC_CTL_MS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SSC_CTL_EN_RX_FIFO, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SSC_CTL_EN_TX_FIFO, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %50 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SSC_CTL, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @st_i2c_set_bits(i64 %53, i32 %54)
  %56 = load i32, i32* @SSC_I2C_TXENB, align 4
  store i32 %56, i32* %12, align 4
  %57 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %58 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @I2C_M_RD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %4
  %64 = load i32, i32* @SSC_I2C_ACKG, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %63, %4
  %68 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %69 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SSC_I2C, align 8
  %72 = add nsw i64 %70, %71
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @st_i2c_set_bits(i64 %72, i32 %73)
  %75 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %76 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %77 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @st_i2c_write_tx_fifo(%struct.st_i2c_dev* %75, i32 %78)
  %80 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %81 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @I2C_M_RD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %67
  %87 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %88 = call i32 @st_i2c_wr_fill_tx_fifo(%struct.st_i2c_dev* %87)
  br label %89

89:                                               ; preds = %86, %67
  %90 = load i32, i32* @SSC_IEN_NACKEN, align 4
  %91 = load i32, i32* @SSC_IEN_TEEN, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @SSC_IEN_ARBLEN, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %97 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SSC_IEN, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel_relaxed(i32 %95, i64 %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %89
  %105 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %106 = call i32 @st_i2c_wait_free_bus(%struct.st_i2c_dev* %105)
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %5, align 4
  br label %163

111:                                              ; preds = %104
  %112 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %113 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SSC_I2C, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* @SSC_I2C_STRTG, align 4
  %118 = call i32 @st_i2c_set_bits(i64 %116, i32 %117)
  br label %119

119:                                              ; preds = %111, %89
  %120 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %121 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %120, i32 0, i32 3
  %122 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %123 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @wait_for_completion_timeout(i32* %121, i32 %125)
  store i64 %126, i64* %14, align 8
  %127 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %128 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %15, align 4
  %130 = load i64, i64* %14, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %142, label %132

132:                                              ; preds = %119
  %133 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %134 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.st_i2c_client*, %struct.st_i2c_client** %10, align 8
  %137 = getelementptr inbounds %struct.st_i2c_client, %struct.st_i2c_client* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @ETIMEDOUT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %132, %119
  %143 = load i32, i32* @SSC_I2C_STOPG, align 4
  %144 = load i32, i32* @SSC_I2C_REPSTRTG, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %12, align 4
  %146 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %147 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @SSC_I2C, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @st_i2c_clr_bits(i64 %150, i32 %151)
  %153 = load i32, i32* @SSC_CLR_SSCSTOP, align 4
  %154 = load i32, i32* @SSC_CLR_REPSTRT, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.st_i2c_dev*, %struct.st_i2c_dev** %6, align 8
  %157 = getelementptr inbounds %struct.st_i2c_dev, %struct.st_i2c_dev* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SSC_CLR, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel_relaxed(i32 %155, i64 %160)
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %142, %109
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @st_i2c_set_bits(i64, i32) #1

declare dso_local i32 @st_i2c_write_tx_fifo(%struct.st_i2c_dev*, i32) #1

declare dso_local i32 @st_i2c_wr_fill_tx_fifo(%struct.st_i2c_dev*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @st_i2c_wait_free_bus(%struct.st_i2c_dev*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @st_i2c_clr_bits(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
