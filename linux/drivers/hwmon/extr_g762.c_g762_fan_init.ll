; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_g762_fan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_g762_fan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.g762_data = type { i32, i32, i32 }

@G762_REG_FAN_CMD1_DET_FAN_FAIL = common dso_local global i32 0, align 4
@G762_REG_FAN_CMD1_DET_FAN_OOC = common dso_local global i32 0, align 4
@G762_REG_FAN_CMD1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @g762_fan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g762_fan_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.g762_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.g762_data* @g762_update_client(%struct.device* %5)
  store %struct.g762_data* %6, %struct.g762_data** %4, align 8
  %7 = load %struct.g762_data*, %struct.g762_data** %4, align 8
  %8 = call i64 @IS_ERR(%struct.g762_data* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.g762_data*, %struct.g762_data** %4, align 8
  %12 = call i32 @PTR_ERR(%struct.g762_data* %11)
  store i32 %12, i32* %2, align 4
  br label %34

13:                                               ; preds = %1
  %14 = load i32, i32* @G762_REG_FAN_CMD1_DET_FAN_FAIL, align 4
  %15 = load %struct.g762_data*, %struct.g762_data** %4, align 8
  %16 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @G762_REG_FAN_CMD1_DET_FAN_OOC, align 4
  %20 = load %struct.g762_data*, %struct.g762_data** %4, align 8
  %21 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.g762_data*, %struct.g762_data** %4, align 8
  %25 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load %struct.g762_data*, %struct.g762_data** %4, align 8
  %27 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @G762_REG_FAN_CMD1, align 4
  %30 = load %struct.g762_data*, %struct.g762_data** %4, align 8
  %31 = getelementptr inbounds %struct.g762_data, %struct.g762_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i2c_smbus_write_byte_data(i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %13, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.g762_data* @g762_update_client(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.g762_data*) #1

declare dso_local i32 @PTR_ERR(%struct.g762_data*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
