; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_drdy_trigger_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-core.c_mpu3050_drdy_trigger_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mpu3050 = type { i32, i32, i32, i64, i64, i64, i32 }

@MPU3050_INT_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error disabling IRQ\0A\00", align 1
@MPU3050_INT_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"error clearing IRQ status\0A\00", align 1
@MPU3050_FIFO_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"error disabling FIFO\0A\00", align 1
@MPU3050_USR_CTRL = common dso_local global i32 0, align 4
@MPU3050_USR_CTRL_FIFO_RST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"error resetting FIFO\0A\00", align 1
@MPU3050_USR_CTRL_FIFO_EN = common dso_local global i32 0, align 4
@MPU3050_FIFO_EN_TEMP_OUT = common dso_local global i32 0, align 4
@MPU3050_FIFO_EN_GYRO_XOUT = common dso_local global i32 0, align 4
@MPU3050_FIFO_EN_GYRO_YOUT = common dso_local global i32 0, align 4
@MPU3050_FIFO_EN_GYRO_ZOUT = common dso_local global i32 0, align 4
@MPU3050_FIFO_EN_FOOTER = common dso_local global i32 0, align 4
@MPU3050_INT_RAW_RDY_EN = common dso_local global i32 0, align 4
@MPU3050_INT_ACTL = common dso_local global i32 0, align 4
@MPU3050_INT_LATCH_EN = common dso_local global i32 0, align 4
@MPU3050_INT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @mpu3050_drdy_trigger_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_drdy_trigger_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.mpu3050*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %11 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %10)
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.mpu3050* @iio_priv(%struct.iio_dev* %12)
  store %struct.mpu3050* %13, %struct.mpu3050** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %80, label %16

16:                                               ; preds = %2
  %17 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %18 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MPU3050_INT_CFG, align 4
  %21 = call i32 @regmap_write(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %26 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %31 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MPU3050_INT_STATUS, align 4
  %34 = call i32 @regmap_read(i32 %32, i32 %33, i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %39 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %44 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MPU3050_FIFO_EN, align 4
  %47 = call i32 @regmap_write(i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %52 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %42
  %56 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %57 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MPU3050_USR_CTRL, align 4
  %60 = load i32, i32* @MPU3050_USR_CTRL_FIFO_RST, align 4
  %61 = call i32 @regmap_write(i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %66 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %55
  %70 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %71 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pm_runtime_mark_last_busy(i32 %72)
  %74 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %75 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pm_runtime_put_autosuspend(i32 %76)
  %78 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %79 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %194

80:                                               ; preds = %2
  %81 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %82 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @pm_runtime_get_sync(i32 %83)
  %85 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %86 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %88 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MPU3050_FIFO_EN, align 4
  %91 = call i32 @regmap_write(i32 %89, i32 %90, i32 0)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %80
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %194

96:                                               ; preds = %80
  %97 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %98 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MPU3050_USR_CTRL, align 4
  %101 = load i32, i32* @MPU3050_USR_CTRL_FIFO_EN, align 4
  %102 = load i32, i32* @MPU3050_USR_CTRL_FIFO_RST, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @MPU3050_USR_CTRL_FIFO_EN, align 4
  %105 = load i32, i32* @MPU3050_USR_CTRL_FIFO_RST, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @regmap_update_bits(i32 %99, i32 %100, i32 %103, i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %194

112:                                              ; preds = %96
  %113 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %114 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %116 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MPU3050_FIFO_EN, align 4
  %119 = load i32, i32* @MPU3050_FIFO_EN_TEMP_OUT, align 4
  %120 = load i32, i32* @MPU3050_FIFO_EN_GYRO_XOUT, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @MPU3050_FIFO_EN_GYRO_YOUT, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @MPU3050_FIFO_EN_GYRO_ZOUT, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @MPU3050_FIFO_EN_FOOTER, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @regmap_write(i32 %117, i32 %118, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %112
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %3, align 4
  br label %194

133:                                              ; preds = %112
  %134 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %135 = call i32 @mpu3050_start_sampling(%struct.mpu3050* %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  br label %194

140:                                              ; preds = %133
  %141 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %142 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @MPU3050_INT_STATUS, align 4
  %145 = call i32 @regmap_read(i32 %143, i32 %144, i32* %8)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %140
  %149 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %150 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dev_err(i32 %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %148, %140
  %154 = load i32, i32* @MPU3050_INT_RAW_RDY_EN, align 4
  store i32 %154, i32* %8, align 4
  %155 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %156 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i32, i32* @MPU3050_INT_ACTL, align 4
  %161 = load i32, i32* %8, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %8, align 4
  br label %163

163:                                              ; preds = %159, %153
  %164 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %165 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %164, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @MPU3050_INT_LATCH_EN, align 4
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %174 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load i32, i32* @MPU3050_INT_OPEN, align 4
  %179 = load i32, i32* %8, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %177, %172
  %182 = load %struct.mpu3050*, %struct.mpu3050** %7, align 8
  %183 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MPU3050_INT_CFG, align 4
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @regmap_write(i32 %184, i32 %185, i32 %186)
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %181
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %3, align 4
  br label %194

192:                                              ; preds = %181
  br label %193

193:                                              ; preds = %192
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %190, %138, %131, %110, %94, %69
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.mpu3050* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mpu3050_start_sampling(%struct.mpu3050*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
