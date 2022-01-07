; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_ring.c_inv_reset_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_ring.c_inv_reset_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.inv_mpu6050_state = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [22 x i8] c"int_enable failed %d\0A\00", align 1
@INV_MPU6050_BIT_FIFO_RST = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_DATA_RDY_EN = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_FIFO_EN = common dso_local global i32 0, align 4
@INV_MPU6050_BITS_GYRO_OUT = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_ACCEL_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"reset fifo failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inv_reset_fifo(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inv_mpu6050_state*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.inv_mpu6050_state* %8, %struct.inv_mpu6050_state** %6, align 8
  %9 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %10 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %12 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %15 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_write(i32 %13, i32 %18, i32 0)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %24 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @regmap_get_device(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %181

30:                                               ; preds = %1
  %31 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %32 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %35 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_write(i32 %33, i32 %38, i32 0)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %163

43:                                               ; preds = %30
  %44 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %45 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %48 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %53 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @regmap_write(i32 %46, i32 %51, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %163

60:                                               ; preds = %43
  %61 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %62 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @INV_MPU6050_BIT_FIFO_RST, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %5, align 4
  %67 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %68 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %71 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @regmap_write(i32 %69, i32 %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %60
  br label %163

80:                                               ; preds = %60
  %81 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %82 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %88 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %86, %80
  %93 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %94 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %97 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @INV_MPU6050_BIT_DATA_RDY_EN, align 4
  %102 = call i32 @regmap_write(i32 %95, i32 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %181

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %86
  %109 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %110 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @INV_MPU6050_BIT_FIFO_EN, align 4
  %114 = or i32 %112, %113
  store i32 %114, i32* %5, align 4
  %115 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %116 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %119 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @regmap_write(i32 %117, i32 %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %108
  br label %163

128:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  %129 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %130 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @INV_MPU6050_BITS_GYRO_OUT, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %134, %128
  %139 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %140 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load i32, i32* @INV_MPU6050_BIT_ACCEL_OUT, align 4
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %144, %138
  %149 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %150 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %153 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @regmap_write(i32 %151, i32 %156, i32 %157)
  store i32 %158, i32* %4, align 4
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %148
  br label %163

162:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %181

163:                                              ; preds = %161, %127, %79, %59, %42
  %164 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %165 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @regmap_get_device(i32 %166)
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @dev_err(i32 %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %171 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %174 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @INV_MPU6050_BIT_DATA_RDY_EN, align 4
  %179 = call i32 @regmap_write(i32 %172, i32 %177, i32 %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %163, %162, %105, %22
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
