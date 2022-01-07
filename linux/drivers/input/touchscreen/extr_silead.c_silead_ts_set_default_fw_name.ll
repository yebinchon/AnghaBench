; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_set_default_fw_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_silead.c_silead_ts_set_default_fw_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.silead_ts_data = type { i32 }
%struct.i2c_device_id = type { i8* }

@.str = private unnamed_addr constant [13 x i8] c"silead/%s.fw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.silead_ts_data*, %struct.i2c_device_id*)* @silead_ts_set_default_fw_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @silead_ts_set_default_fw_name(%struct.silead_ts_data* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca %struct.silead_ts_data*, align 8
  %4 = alloca %struct.i2c_device_id*, align 8
  store %struct.silead_ts_data* %0, %struct.silead_ts_data** %3, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %4, align 8
  %5 = load %struct.silead_ts_data*, %struct.silead_ts_data** %3, align 8
  %6 = getelementptr inbounds %struct.silead_ts_data, %struct.silead_ts_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @snprintf(i32 %7, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %10)
  ret i32 0
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
