; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_ring.c_inv_mpu6050_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_ring.c_inv_mpu6050_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { i32, %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.inv_mpu6050_state = type { i64, i32, i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@INV_MPU6050_OUTPUT_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to ack interrupt\0A\00", align 1
@INV_MPU6050_BIT_RAW_DATA_RDY_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"spurious interrupt with status 0x%x\0A\00", align 1
@INV_MPU6050_BYTES_PER_3AXIS_SENSOR = common dso_local global i64 0, align 8
@INV_ICM20602 = common dso_local global i64 0, align 8
@INV_ICM20602_BYTES_PER_TEMP_SENSOR = common dso_local global i64 0, align 8
@INV_MPU6050_FIFO_COUNT_BYTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"fifo overflow reset\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inv_mpu6050_read_fifo(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_poll_func*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.inv_mpu6050_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %20, %struct.iio_poll_func** %6, align 8
  %21 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %22 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %21, i32 0, i32 1
  %23 = load %struct.iio_dev*, %struct.iio_dev** %22, align 8
  store %struct.iio_dev* %23, %struct.iio_dev** %7, align 8
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %24)
  store %struct.inv_mpu6050_state* %25, %struct.inv_mpu6050_state** %8, align 8
  %26 = load i32, i32* @INV_MPU6050_OUTPUT_DATA_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %30 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %31 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %34 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %37 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_read(i32 %35, i32 %40, i32* %15)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %2
  %45 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %46 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @regmap_get_device(i32 %47)
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %195

50:                                               ; preds = %2
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @INV_MPU6050_BIT_RAW_DATA_RDY_INT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %57 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @regmap_get_device(i32 %58)
  %60 = load i32, i32* %15, align 4
  %61 = call i32 (i32, i8*, ...) @dev_warn(i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %186

62:                                               ; preds = %50
  %63 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %64 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %68 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %66, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %186

74:                                               ; preds = %62
  store i64 0, i64* %9, align 8
  %75 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %76 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i64, i64* @INV_MPU6050_BYTES_PER_3AXIS_SENSOR, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %9, align 8
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %86 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %85, i32 0, i32 6
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i64, i64* @INV_MPU6050_BYTES_PER_3AXIS_SENSOR, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %90, %84
  %95 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %96 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @INV_ICM20602, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i64, i64* @INV_ICM20602_BYTES_PER_TEMP_SENSOR, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %106 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %109 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %108, i32 0, i32 3
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* @INV_MPU6050_FIFO_COUNT_BYTE, align 8
  %114 = call i32 @regmap_bulk_read(i32 %107, i32 %112, i32* %29, i64 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %186

118:                                              ; preds = %104
  %119 = getelementptr inbounds i32, i32* %29, i64 0
  %120 = call i64 @get_unaligned_be16(i32* %119)
  store i64 %120, i64* %13, align 8
  %121 = load i64, i64* %9, align 8
  %122 = mul i64 3, %121
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %125 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %124, i32 0, i32 5
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %17, align 8
  %130 = sub i64 %128, %129
  %131 = icmp uge i64 %123, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %118
  %133 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %134 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @regmap_get_device(i32 %135)
  %137 = call i32 (i32, i8*, ...) @dev_warn(i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %195

138:                                              ; preds = %118
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %9, align 8
  %141 = udiv i64 %139, %140
  store i64 %141, i64* %17, align 8
  %142 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %143 = load %struct.iio_poll_func*, %struct.iio_poll_func** %6, align 8
  %144 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* %17, align 8
  %147 = call i32 @inv_mpu6050_update_period(%struct.inv_mpu6050_state* %142, i32 %145, i64 %146)
  store i64 0, i64* %16, align 8
  br label %148

148:                                              ; preds = %182, %138
  %149 = load i64, i64* %16, align 8
  %150 = load i64, i64* %17, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %185

152:                                              ; preds = %148
  %153 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %154 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %157 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %156, i32 0, i32 3
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i64, i64* %9, align 8
  %162 = call i32 @regmap_bulk_read(i32 %155, i32 %160, i32* %29, i64 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %152
  br label %195

166:                                              ; preds = %152
  %167 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %168 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %173 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, -1
  store i64 %175, i64* %173, align 8
  br label %182

176:                                              ; preds = %166
  %177 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %178 = call i32 @inv_mpu6050_get_timestamp(%struct.inv_mpu6050_state* %177)
  store i32 %178, i32* %14, align 4
  %179 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %179, i32* %29, i32 %180)
  br label %182

182:                                              ; preds = %176, %171
  %183 = load i64, i64* %16, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %16, align 8
  br label %148

185:                                              ; preds = %148
  br label %186

186:                                              ; preds = %185, %117, %73, %55
  %187 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %188 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %187, i32 0, i32 1
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %191 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @iio_trigger_notify_done(i32 %192)
  %194 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %194, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %206

195:                                              ; preds = %165, %132, %44
  %196 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %197 = call i32 @inv_reset_fifo(%struct.iio_dev* %196)
  %198 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %8, align 8
  %199 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %198, i32 0, i32 1
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %202 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @iio_trigger_notify_done(i32 %203)
  %205 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %205, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %206

206:                                              ; preds = %195, %186
  %207 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_get_device(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i64) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i32 @inv_mpu6050_update_period(%struct.inv_mpu6050_state*, i32, i64) #1

declare dso_local i32 @inv_mpu6050_get_timestamp(%struct.inv_mpu6050_state*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

declare dso_local i32 @inv_reset_fifo(%struct.iio_dev*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
