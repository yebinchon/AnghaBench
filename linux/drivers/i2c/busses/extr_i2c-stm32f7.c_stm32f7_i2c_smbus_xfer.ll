; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-stm32f7.c_stm32f7_i2c_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }
%struct.stm32f7_i2c_dev = type { i64, %struct.TYPE_2__, i32, %struct.device*, %struct.stm32_i2c_dma*, %struct.stm32f7_i2c_msg }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.stm32_i2c_dma = type { i32 }
%struct.stm32f7_i2c_msg = type { i32, i8, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Access to slave 0x%x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@I2C_SMBUS_QUICK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unsupported smbus transaction\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @stm32f7_i2c_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32f7_i2c_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.stm32f7_i2c_dev*, align 8
  %17 = alloca %struct.stm32f7_i2c_msg*, align 8
  %18 = alloca %struct.stm32_i2c_dma*, align 8
  %19 = alloca %struct.device*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %24 = call %struct.stm32f7_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter* %23)
  store %struct.stm32f7_i2c_dev* %24, %struct.stm32f7_i2c_dev** %16, align 8
  %25 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %26 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %25, i32 0, i32 5
  store %struct.stm32f7_i2c_msg* %26, %struct.stm32f7_i2c_msg** %17, align 8
  %27 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %28 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %27, i32 0, i32 4
  %29 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %28, align 8
  store %struct.stm32_i2c_dma* %29, %struct.stm32_i2c_dma** %18, align 8
  %30 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %31 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %30, i32 0, i32 3
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %19, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %35 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %38 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8, i8* %12, align 1
  %40 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %41 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %40, i32 0, i32 1
  store i8 %39, i8* %41, align 4
  %42 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %43 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = load %struct.device*, %struct.device** %19, align 8
  %45 = call i32 @pm_runtime_get_sync(%struct.device* %44)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %22, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %7
  %49 = load i32, i32* %22, align 4
  store i32 %49, i32* %8, align 4
  br label %195

50:                                               ; preds = %7
  %51 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %52 = call i32 @stm32f7_i2c_wait_free_bus(%struct.stm32f7_i2c_dev* %51)
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %189

56:                                               ; preds = %50
  %57 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %58 = load i16, i16* %11, align 2
  %59 = load i32, i32* %13, align 4
  %60 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %61 = call i32 @stm32f7_i2c_smbus_xfer_msg(%struct.stm32f7_i2c_dev* %57, i16 zeroext %58, i32 %59, %union.i2c_smbus_data* %60)
  store i32 %61, i32* %22, align 4
  %62 = load i32, i32* %22, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %189

65:                                               ; preds = %56
  %66 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %67 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %66, i32 0, i32 2
  %68 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %69 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @wait_for_completion_timeout(i32* %67, i32 %71)
  store i64 %72, i64* %20, align 8
  %73 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %74 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %22, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %189

79:                                               ; preds = %65
  %80 = load i64, i64* %20, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %79
  %83 = load %struct.device*, %struct.device** %19, align 8
  %84 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %85 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dev_dbg(%struct.device* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %89 = getelementptr inbounds %struct.stm32f7_i2c_dev, %struct.stm32f7_i2c_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load %struct.stm32_i2c_dma*, %struct.stm32_i2c_dma** %18, align 8
  %94 = getelementptr inbounds %struct.stm32_i2c_dma, %struct.stm32_i2c_dma* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dmaengine_terminate_all(i32 %95)
  br label %97

97:                                               ; preds = %92, %82
  %98 = load i32, i32* @ETIMEDOUT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %22, align 4
  br label %189

100:                                              ; preds = %79
  %101 = load i16, i16* %11, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @I2C_SMBUS_QUICK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i8, i8* %12, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.stm32f7_i2c_dev*, %struct.stm32f7_i2c_dev** %16, align 8
  %117 = call i32 @stm32f7_i2c_smbus_check_pec(%struct.stm32f7_i2c_dev* %116)
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %189

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %111, %107, %100
  %123 = load i8, i8* %12, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %188

126:                                              ; preds = %122
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* @I2C_SMBUS_QUICK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %188

130:                                              ; preds = %126
  %131 = load i32, i32* %14, align 4
  switch i32 %131, label %182 [
    i32 131, label %132
    i32 130, label %132
    i32 128, label %140
    i32 129, label %140
    i32 133, label %155
    i32 132, label %155
  ]

132:                                              ; preds = %130, %130
  %133 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %134 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %139 = bitcast %union.i2c_smbus_data* %138 to i32*
  store i32 %137, i32* %139, align 8
  br label %187

140:                                              ; preds = %130, %130
  %141 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %142 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %147 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 8
  %152 = or i32 %145, %151
  %153 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %154 = bitcast %union.i2c_smbus_data* %153 to i32*
  store i32 %152, i32* %154, align 8
  br label %187

155:                                              ; preds = %130, %130
  store i32 0, i32* %21, align 4
  br label %156

156:                                              ; preds = %178, %155
  %157 = load i32, i32* %21, align 4
  %158 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %159 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp sle i32 %157, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %156
  %165 = load %struct.stm32f7_i2c_msg*, %struct.stm32f7_i2c_msg** %17, align 8
  %166 = getelementptr inbounds %struct.stm32f7_i2c_msg, %struct.stm32f7_i2c_msg* %165, i32 0, i32 4
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %173 = bitcast %union.i2c_smbus_data* %172 to i32**
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %171, i32* %177, align 4
  br label %178

178:                                              ; preds = %164
  %179 = load i32, i32* %21, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %21, align 4
  br label %156

181:                                              ; preds = %156
  br label %187

182:                                              ; preds = %130
  %183 = load %struct.device*, %struct.device** %19, align 8
  %184 = call i32 @dev_err(%struct.device* %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %22, align 4
  br label %187

187:                                              ; preds = %182, %181, %140, %132
  br label %188

188:                                              ; preds = %187, %126, %122
  br label %189

189:                                              ; preds = %188, %120, %97, %78, %64, %55
  %190 = load %struct.device*, %struct.device** %19, align 8
  %191 = call i32 @pm_runtime_mark_last_busy(%struct.device* %190)
  %192 = load %struct.device*, %struct.device** %19, align 8
  %193 = call i32 @pm_runtime_put_autosuspend(%struct.device* %192)
  %194 = load i32, i32* %22, align 4
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %189, %48
  %196 = load i32, i32* %8, align 4
  ret i32 %196
}

declare dso_local %struct.stm32f7_i2c_dev* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @stm32f7_i2c_wait_free_bus(%struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @stm32f7_i2c_smbus_xfer_msg(%struct.stm32f7_i2c_dev*, i16 zeroext, i32, %union.i2c_smbus_data*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @stm32f7_i2c_smbus_check_pec(%struct.stm32f7_i2c_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
