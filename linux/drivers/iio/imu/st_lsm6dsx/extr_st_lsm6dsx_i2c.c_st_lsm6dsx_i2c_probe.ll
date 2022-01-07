; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_i2c.c_st_lsm6dsx_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_i2c.c_st_lsm6dsx_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.regmap = type { i32 }

@st_lsm6dsx_i2c_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register i2c regmap %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @st_lsm6dsx_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_lsm6dsx_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %11, i32* @st_lsm6dsx_i2c_regmap_config)
  store %struct.regmap* %12, %struct.regmap** %7, align 8
  %13 = load %struct.regmap*, %struct.regmap** %7, align 8
  %14 = call i64 @IS_ERR(%struct.regmap* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = load %struct.regmap*, %struct.regmap** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.regmap* %19)
  %21 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = call i32 @PTR_ERR(%struct.regmap* %22)
  store i32 %23, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = call i32 @st_lsm6dsx_probe(i32* %26, i32 %29, i32 %30, %struct.regmap* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @st_lsm6dsx_probe(i32*, i32, i32, %struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
