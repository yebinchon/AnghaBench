; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_xfer_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_xfer_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i32, i32, i32, i32, i64, i32, i64, i64, %struct.i2c_msg*, %struct.i2c_msg* }
%struct.i2c_msg = type { i32 }

@MST_STATUS_ERR = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@MST_RX_XFER = common dso_local global i64 0, align 8
@MST_TX_XFER = common dso_local global i64 0, align 8
@MST_STATUS_RFL = common dso_local global i32 0, align 4
@MST_STATUS_TFL = common dso_local global i32 0, align 4
@WAIT_TIMER_CONTROL = common dso_local global i64 0, align 8
@CMD_MANUAL = common dso_local global i32 0, align 4
@MST_COMMAND = common dso_local global i64 0, align 8
@MST_STATUS_SNS = common dso_local global i32 0, align 4
@CMD_AUTO = common dso_local global i32 0, align 4
@MST_STATUS_SS = common dso_local global i32 0, align 4
@WT_EN = common dso_local global i32 0, align 4
@I2C_XFER_TIMEOUT = common dso_local global i32 0, align 4
@CMD_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"busy after xfer\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axxia_i2c_dev*, %struct.i2c_msg*, i32)* @axxia_i2c_xfer_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_i2c_xfer_msg(%struct.axxia_i2c_dev* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.axxia_i2c_dev*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.axxia_i2c_dev* %0, %struct.axxia_i2c_dev** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @MST_STATUS_ERR, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %14 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %15 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %14, i32 0, i32 9
  store %struct.i2c_msg* %13, %struct.i2c_msg** %15, align 8
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %17 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %18 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %17, i32 0, i32 8
  store %struct.i2c_msg* %16, %struct.i2c_msg** %18, align 8
  %19 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %20 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %22 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %25 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %27 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %26, i32 0, i32 5
  %28 = call i32 @reinit_completion(i32* %27)
  %29 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %31 = call i32 @axxia_i2c_set_addr(%struct.axxia_i2c_dev* %29, %struct.i2c_msg* %30)
  %32 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %33 = call i64 @i2c_m_rd(%struct.i2c_msg* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %3
  %36 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %37 = call i64 @i2c_m_recv_len(%struct.i2c_msg* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  br label %45

41:                                               ; preds = %35
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = phi i32 [ %40, %39 ], [ %44, %41 ]
  store i32 %46, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %51

47:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %45
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %54 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MST_RX_XFER, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %61 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MST_TX_XFER, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %67 = call i64 @i2c_m_rd(%struct.i2c_msg* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %51
  %70 = load i32, i32* @MST_STATUS_RFL, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %82

73:                                               ; preds = %51
  %74 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %75 = call i64 @axxia_i2c_fill_tx_fifo(%struct.axxia_i2c_dev* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* @MST_STATUS_TFL, align 4
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %69
  %83 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %84 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @WAIT_TIMER_CONTROL, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @readl(i64 %87)
  %89 = call i32 @WT_VALUE(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %92 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @WAIT_TIMER_CONTROL, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  %97 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %98 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %82
  br label %175

102:                                              ; preds = %82
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* @CMD_MANUAL, align 4
  %107 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %108 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @MST_COMMAND, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 %106, i64 %111)
  %113 = load i32, i32* @MST_STATUS_SNS, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %127

116:                                              ; preds = %102
  %117 = load i32, i32* @CMD_AUTO, align 4
  %118 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %119 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MST_COMMAND, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load i32, i32* @MST_STATUS_SS, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %116, %105
  %128 = load i32, i32* @WT_EN, align 4
  %129 = load i32, i32* %11, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %132 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @WAIT_TIMER_CONTROL, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @writel(i32 %130, i64 %135)
  %137 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @i2c_int_enable(%struct.axxia_i2c_dev* %137, i32 %138)
  %140 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %141 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %140, i32 0, i32 5
  %142 = load i32, i32* @I2C_XFER_TIMEOUT, align 4
  %143 = call i64 @wait_for_completion_timeout(i32* %141, i32 %142)
  store i64 %143, i64* %10, align 8
  %144 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @i2c_int_disable(%struct.axxia_i2c_dev* %144, i32 %145)
  %147 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %148 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @MST_COMMAND, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @readl(i64 %151)
  %153 = load i32, i32* @CMD_BUSY, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %127
  %157 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %158 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dev_warn(i32 %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %161

161:                                              ; preds = %156, %127
  %162 = load i64, i64* %10, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %161
  %165 = load i32, i32* @ETIMEDOUT, align 4
  %166 = sub nsw i32 0, %165
  %167 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %168 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %170 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %169, i32 0, i32 2
  %171 = call i32 @i2c_recover_bus(i32* %170)
  %172 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %173 = call i32 @axxia_i2c_init(%struct.axxia_i2c_dev* %172)
  br label %174

174:                                              ; preds = %164, %161
  br label %175

175:                                              ; preds = %174, %101
  %176 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %177 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %175
  %182 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %183 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @ENXIO, align 4
  %186 = sub nsw i32 0, %185
  %187 = icmp ne i32 %184, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %181
  %189 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %190 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @ETIMEDOUT, align 4
  %193 = sub nsw i32 0, %192
  %194 = icmp ne i32 %191, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %197 = call i32 @axxia_i2c_init(%struct.axxia_i2c_dev* %196)
  br label %198

198:                                              ; preds = %195, %188, %181, %175
  %199 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %4, align 8
  %200 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  ret i32 %201
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @axxia_i2c_set_addr(%struct.axxia_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i64 @i2c_m_rd(%struct.i2c_msg*) #1

declare dso_local i64 @i2c_m_recv_len(%struct.i2c_msg*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @axxia_i2c_fill_tx_fifo(%struct.axxia_i2c_dev*) #1

declare dso_local i32 @WT_VALUE(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @i2c_int_enable(%struct.axxia_i2c_dev*, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @i2c_int_disable(%struct.axxia_i2c_dev*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @i2c_recover_bus(i32*) #1

declare dso_local i32 @axxia_i2c_init(%struct.axxia_i2c_dev*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
