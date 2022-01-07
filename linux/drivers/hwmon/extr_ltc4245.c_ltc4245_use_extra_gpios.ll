; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_use_extra_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_use_extra_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ltc4245_platform_data = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ltc4245,use-extra-gpios\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ltc4245_use_extra_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4245_use_extra_gpios(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.ltc4245_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call %struct.ltc4245_platform_data* @dev_get_platdata(%struct.TYPE_2__* %7)
  store %struct.ltc4245_platform_data* %8, %struct.ltc4245_platform_data** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.ltc4245_platform_data*, %struct.ltc4245_platform_data** %4, align 8
  %14 = icmp ne %struct.ltc4245_platform_data* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.ltc4245_platform_data*, %struct.ltc4245_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.ltc4245_platform_data, %struct.ltc4245_platform_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i64 @of_find_property(%struct.device_node* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %15
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.ltc4245_platform_data* @dev_get_platdata(%struct.TYPE_2__*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
