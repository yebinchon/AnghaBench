; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ina3221_data = type { i32, i32 }

@INA3221_NUM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ina3221_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.ina3221_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %5, i32 0, i32 0
  %7 = call %struct.ina3221_data* @dev_get_drvdata(i32* %6)
  store %struct.ina3221_data* %7, %struct.ina3221_data** %3, align 8
  %8 = load %struct.ina3221_data*, %struct.ina3221_data** %3, align 8
  %9 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pm_runtime_disable(i32 %10)
  %12 = load %struct.ina3221_data*, %struct.ina3221_data** %3, align 8
  %13 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pm_runtime_set_suspended(i32 %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %25, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @INA3221_NUM_CHANNELS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.ina3221_data*, %struct.ina3221_data** %3, align 8
  %22 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_put_noidle(i32 %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %16

28:                                               ; preds = %16
  %29 = load %struct.ina3221_data*, %struct.ina3221_data** %3, align 8
  %30 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_destroy(i32* %30)
  ret i32 0
}

declare dso_local %struct.ina3221_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_set_suspended(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
