; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_register_hwmon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_asus_atk0110.c_atk_register_hwmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atk_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"registering hwmon device\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"atk0110\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atk_data*)* @atk_register_hwmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atk_register_hwmon(%struct.atk_data* %0) #0 {
  %2 = alloca %struct.atk_data*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.atk_data* %0, %struct.atk_data** %2, align 8
  %4 = load %struct.atk_data*, %struct.atk_data** %2, align 8
  %5 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @dev_dbg(%struct.device* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = load %struct.atk_data*, %struct.atk_data** %2, align 8
  %12 = load %struct.atk_data*, %struct.atk_data** %2, align 8
  %13 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @hwmon_device_register_with_groups(%struct.device* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.atk_data* %11, i32 %14)
  %16 = load %struct.atk_data*, %struct.atk_data** %2, align 8
  %17 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.atk_data*, %struct.atk_data** %2, align 8
  %19 = getelementptr inbounds %struct.atk_data, %struct.atk_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @PTR_ERR_OR_ZERO(i32 %20)
  ret i32 %21
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @hwmon_device_register_with_groups(%struct.device*, i8*, %struct.atk_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
