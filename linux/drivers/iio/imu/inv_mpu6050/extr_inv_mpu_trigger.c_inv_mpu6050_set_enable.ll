; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_trigger.c_inv_mpu6050_set_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_trigger.c_inv_mpu6050_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.inv_mpu6050_state = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@INV_MPU6050_BIT_PWR_GYRO_STBY = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_PWR_ACCL_STBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @inv_mpu6050_set_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_set_enable(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inv_mpu6050_state*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %9 = call %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev* %8)
  store %struct.inv_mpu6050_state* %9, %struct.inv_mpu6050_state** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %2
  %13 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %14 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %13, i32 1)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %151

19:                                               ; preds = %12
  %20 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %21 = call i32 @inv_scan_query(%struct.iio_dev* %20)
  %22 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %23 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %25 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %31 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %32 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %30, i32 1, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %147

36:                                               ; preds = %29
  %37 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %38 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %19
  %40 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %41 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %47 = load i32, i32* @INV_MPU6050_BIT_PWR_ACCL_STBY, align 4
  %48 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %46, i32 1, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %136

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %55 = call i32 @inv_reset_fifo(%struct.iio_dev* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %125

59:                                               ; preds = %53
  br label %124

60:                                               ; preds = %2
  %61 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %62 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %65 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %64, i32 0, i32 2
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regmap_write(i32 %63, i32 %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %125

73:                                               ; preds = %60
  %74 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %75 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %78 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @regmap_write(i32 %76, i32 %81, i32 0)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %125

86:                                               ; preds = %73
  %87 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %88 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %91 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %96 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @regmap_write(i32 %89, i32 %94, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %125

103:                                              ; preds = %86
  %104 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %105 = load i32, i32* @INV_MPU6050_BIT_PWR_ACCL_STBY, align 4
  %106 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %104, i32 0, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %125

110:                                              ; preds = %103
  %111 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %112 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %113 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %111, i32 0, i32 %112)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %136

117:                                              ; preds = %110
  %118 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %119 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %118, i32 0)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %147

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %59
  store i32 0, i32* %3, align 4
  br label %151

125:                                              ; preds = %109, %102, %85, %72, %58
  %126 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %127 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %133 = load i32, i32* @INV_MPU6050_BIT_PWR_ACCL_STBY, align 4
  %134 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %132, i32 0, i32 %133)
  br label %135

135:                                              ; preds = %131, %125
  br label %136

136:                                              ; preds = %135, %116, %51
  %137 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %138 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %144 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %145 = call i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %143, i32 0, i32 %144)
  br label %146

146:                                              ; preds = %142, %136
  br label %147

147:                                              ; preds = %146, %122, %35
  %148 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %6, align 8
  %149 = call i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state* %148, i32 0)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %124, %17
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.inv_mpu6050_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @inv_mpu6050_set_power_itg(%struct.inv_mpu6050_state*, i32) #1

declare dso_local i32 @inv_scan_query(%struct.iio_dev*) #1

declare dso_local i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state*, i32, i32) #1

declare dso_local i32 @inv_reset_fifo(%struct.iio_dev*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
