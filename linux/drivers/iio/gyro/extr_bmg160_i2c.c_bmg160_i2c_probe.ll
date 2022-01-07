; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_i2c.c_bmg160_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_i2c.c_bmg160_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i8* }
%struct.regmap = type { i32 }

@bmg160_regmap_i2c_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register i2c regmap %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bmg160_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %8, i32* @bmg160_regmap_i2c_conf)
  store %struct.regmap* %9, %struct.regmap** %6, align 8
  %10 = load %struct.regmap*, %struct.regmap** %6, align 8
  %11 = call i64 @IS_ERR(%struct.regmap* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.regmap*, %struct.regmap** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.regmap* %16)
  %18 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.regmap*, %struct.regmap** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.regmap* %19)
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %2
  %22 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %23 = icmp ne %struct.i2c_device_id* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = load %struct.regmap*, %struct.regmap** %6, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @bmg160_core_probe(i32* %30, %struct.regmap* %31, i32 %34, i8* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @bmg160_core_probe(i32*, %struct.regmap*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
