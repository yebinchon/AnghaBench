; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_fw_version_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_fw_version_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mxt_data = type { %struct.mxt_info* }
%struct.mxt_info = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%u.%u.%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @mxt_fw_version_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxt_fw_version_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mxt_data*, align 8
  %8 = alloca %struct.mxt_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.mxt_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.mxt_data* %10, %struct.mxt_data** %7, align 8
  %11 = load %struct.mxt_data*, %struct.mxt_data** %7, align 8
  %12 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %11, i32 0, i32 0
  %13 = load %struct.mxt_info*, %struct.mxt_info** %12, align 8
  store %struct.mxt_info* %13, %struct.mxt_info** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.mxt_info*, %struct.mxt_info** %8, align 8
  %17 = getelementptr inbounds %struct.mxt_info, %struct.mxt_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 4
  %20 = load %struct.mxt_info*, %struct.mxt_info** %8, align 8
  %21 = getelementptr inbounds %struct.mxt_info, %struct.mxt_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 15
  %24 = load %struct.mxt_info*, %struct.mxt_info** %8, align 8
  %25 = getelementptr inbounds %struct.mxt_info, %struct.mxt_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scnprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %26)
  ret i32 %27
}

declare dso_local %struct.mxt_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
