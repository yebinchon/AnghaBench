; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_fan_div_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_fan_div_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.w83627ehf_data = type { i32 }
%struct.w83627ehf_sio_data = type { i64 }

@nct6776 = common dso_local global i64 0, align 8
@nct6775 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.w83627ehf_data*)* @w83627ehf_update_fan_div_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_update_fan_div_common(%struct.device* %0, %struct.w83627ehf_data* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.w83627ehf_data*, align 8
  %5 = alloca %struct.w83627ehf_sio_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.w83627ehf_data* %1, %struct.w83627ehf_data** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device* %6)
  store %struct.w83627ehf_sio_data* %7, %struct.w83627ehf_sio_data** %5, align 8
  %8 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %9 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @nct6776, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %5, align 8
  %16 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @nct6775, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %22 = call i32 @nct6775_update_fan_div(%struct.w83627ehf_data* %21)
  br label %26

23:                                               ; preds = %14
  %24 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %25 = call i32 @w83627ehf_update_fan_div(%struct.w83627ehf_data* %24)
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %13
  ret void
}

declare dso_local %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @nct6775_update_fan_div(%struct.w83627ehf_data*) #1

declare dso_local i32 @w83627ehf_update_fan_div(%struct.w83627ehf_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
