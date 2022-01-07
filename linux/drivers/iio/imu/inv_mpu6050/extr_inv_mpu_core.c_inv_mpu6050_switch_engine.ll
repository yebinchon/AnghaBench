; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_switch_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_switch_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inv_mpu6050_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@INV_MPU6050_BIT_PWR_GYRO_STBY = common dso_local global i32 0, align 4
@INV_MPU6050_BIT_CLK_MASK = common dso_local global i32 0, align 4
@INV_CLK_INTERNAL = common dso_local global i32 0, align 4
@INV_MPU6050_TEMP_UP_TIME = common dso_local global i32 0, align 4
@INV_CLK_PLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inv_mpu6050_switch_engine(%struct.inv_mpu6050_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inv_mpu6050_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inv_mpu6050_state* %0, %struct.inv_mpu6050_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %16 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %19 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @regmap_read(i32 %17, i32 %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %14
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %130

28:                                               ; preds = %14
  %29 = load i32, i32* @INV_MPU6050_BIT_CLK_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @INV_CLK_INTERNAL, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %45 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %48 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @regmap_write(i32 %46, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %130

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %37, %33
  %60 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %61 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %64 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regmap_read(i32 %62, i32 %67, i32* %8)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %130

73:                                               ; preds = %59
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %85

81:                                               ; preds = %73
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %87 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %90 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @regmap_write(i32 %88, i32 %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %4, align 4
  br label %130

100:                                              ; preds = %85
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %100
  %104 = load i32, i32* @INV_MPU6050_TEMP_UP_TIME, align 4
  %105 = call i32 @msleep(i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @INV_MPU6050_BIT_PWR_GYRO_STBY, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = load i32, i32* @INV_CLK_PLL, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %114 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %5, align 8
  %117 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @regmap_write(i32 %115, i32 %120, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %109
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %4, align 4
  br label %130

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127, %103
  br label %129

129:                                              ; preds = %128, %100
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %125, %98, %71, %56, %26
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
