; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_i2c.c_fxas21002c_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_fxas21002c_i2c.c_fxas21002c_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.regmap = type { i32 }

@fxas21002c_regmap_i2c_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to register i2c regmap: %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @fxas21002c_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fxas21002c_i2c_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.regmap*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %5, i32* @fxas21002c_regmap_i2c_conf)
  store %struct.regmap* %6, %struct.regmap** %4, align 8
  %7 = load %struct.regmap*, %struct.regmap** %4, align 8
  %8 = call i64 @IS_ERR(%struct.regmap* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.regmap* %13)
  %15 = call i32 @dev_err(i32* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.regmap* %16)
  store i32 %17, i32* %2, align 4
  br label %29

18:                                               ; preds = %1
  %19 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 2
  %21 = load %struct.regmap*, %struct.regmap** %4, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fxas21002c_core_probe(i32* %20, %struct.regmap* %21, i32 %24, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %18, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @fxas21002c_core_probe(i32*, %struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
