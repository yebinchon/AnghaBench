; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_set_lpf_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/inv_mpu6050/extr_inv_mpu_core.c_inv_mpu6050_set_lpf_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inv_mpu6050_state = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inv_mpu6050_state*, i32)* @inv_mpu6050_set_lpf_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inv_mpu6050_set_lpf_regs(%struct.inv_mpu6050_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inv_mpu6050_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inv_mpu6050_state* %0, %struct.inv_mpu6050_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %8 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %11 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @regmap_write(i32 %9, i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %23 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 130, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %21, %21, %21
  store i32 0, i32* %6, align 4
  br label %37

26:                                               ; preds = %21
  %27 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %28 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.inv_mpu6050_state*, %struct.inv_mpu6050_state** %4, align 8
  %31 = getelementptr inbounds %struct.inv_mpu6050_state, %struct.inv_mpu6050_state* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @regmap_write(i32 %29, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %26, %25
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
