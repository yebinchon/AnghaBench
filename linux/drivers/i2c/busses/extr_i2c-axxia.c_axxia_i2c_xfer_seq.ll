; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_xfer_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_xfer_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i32, i32, i32, i32, i64, i32, i64, i64, %struct.i2c_msg*, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@MST_STATUS_ERR = common dso_local global i32 0, align 4
@MST_STATUS_SS = common dso_local global i32 0, align 4
@MST_STATUS_RFL = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@MST_TX_XFER = common dso_local global i64 0, align 8
@MST_RX_XFER = common dso_local global i64 0, align 8
@CMD_SEQUENCE = common dso_local global i32 0, align 4
@MST_COMMAND = common dso_local global i64 0, align 8
@I2C_XFER_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CMD_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"busy after xfer\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axxia_i2c_dev*, %struct.i2c_msg*)* @axxia_i2c_xfer_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_xfer_seq(%struct.axxia_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.axxia_i2c_dev*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.axxia_i2c_dev* %0, %struct.axxia_i2c_dev** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %8 = load i32, i32* @MST_STATUS_ERR, align 4
  %9 = load i32, i32* @MST_STATUS_SS, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MST_STATUS_RFL, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 1
  %15 = call i64 @i2c_m_recv_len(%struct.i2c_msg* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 1
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  store i32 %25, i32* %6, align 4
  %26 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i64 0
  %29 = call i32 @axxia_i2c_set_addr(%struct.axxia_i2c_dev* %26, %struct.i2c_msg* %28)
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %35 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MST_TX_XFER, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %42 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MST_RX_XFER, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i64 0
  %49 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %50 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %49, i32 0, i32 9
  store %struct.i2c_msg* %48, %struct.i2c_msg** %50, align 8
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i64 1
  %53 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %54 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %53, i32 0, i32 8
  store %struct.i2c_msg* %52, %struct.i2c_msg** %54, align 8
  %55 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %56 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %55, i32 0, i32 7
  store i64 0, i64* %56, align 8
  %57 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %58 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %57, i32 0, i32 6
  store i64 0, i64* %58, align 8
  %59 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %60 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %62 = call i32 @axxia_i2c_fill_tx_fifo(%struct.axxia_i2c_dev* %61)
  %63 = load i32, i32* @CMD_SEQUENCE, align 4
  %64 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %65 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MST_COMMAND, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %71 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %70, i32 0, i32 5
  %72 = call i32 @reinit_completion(i32* %71)
  %73 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @i2c_int_enable(%struct.axxia_i2c_dev* %73, i32 %74)
  %76 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %77 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %76, i32 0, i32 5
  %78 = load i32, i32* @I2C_XFER_TIMEOUT, align 4
  %79 = call i64 @wait_for_completion_timeout(i32* %77, i32 %78)
  store i64 %79, i64* %7, align 8
  %80 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %81 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ENXIO, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %24
  %87 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %88 = call i64 @axxia_i2c_handle_seq_nak(%struct.axxia_i2c_dev* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %92 = call i32 @axxia_i2c_init(%struct.axxia_i2c_dev* %91)
  br label %93

93:                                               ; preds = %90, %86
  br label %110

94:                                               ; preds = %24
  %95 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %96 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MST_COMMAND, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @readl(i64 %99)
  %101 = load i32, i32* @CMD_BUSY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %106 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_warn(i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %94
  br label %110

110:                                              ; preds = %109, %93
  %111 = load i64, i64* %7, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = load i32, i32* @ETIMEDOUT, align 4
  %115 = sub nsw i32 0, %114
  %116 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %117 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %119 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %118, i32 0, i32 2
  %120 = call i32 @i2c_recover_bus(i32* %119)
  %121 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %122 = call i32 @axxia_i2c_init(%struct.axxia_i2c_dev* %121)
  br label %123

123:                                              ; preds = %113, %110
  %124 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %125 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %131 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ENXIO, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp ne i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %138 = call i32 @axxia_i2c_init(%struct.axxia_i2c_dev* %137)
  br label %139

139:                                              ; preds = %136, %129, %123
  %140 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %141 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  ret i32 %142
}

declare dso_local i64 @i2c_m_recv_len(%struct.i2c_msg*) #1

declare dso_local i32 @axxia_i2c_set_addr(%struct.axxia_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @axxia_i2c_fill_tx_fifo(%struct.axxia_i2c_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @i2c_int_enable(%struct.axxia_i2c_dev*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @axxia_i2c_handle_seq_nak(%struct.axxia_i2c_dev*) #1

declare dso_local i32 @axxia_i2c_init(%struct.axxia_i2c_dev*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @i2c_recover_bus(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
