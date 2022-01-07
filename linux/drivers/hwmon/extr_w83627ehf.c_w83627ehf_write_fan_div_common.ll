; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_write_fan_div_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_write_fan_div_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.w83627ehf_data = type { i32 }
%struct.w83627ehf_sio_data = type { i64 }

@nct6776 = common dso_local global i64 0, align 8
@nct6775 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.w83627ehf_data*, i32)* @w83627ehf_write_fan_div_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_write_fan_div_common(%struct.device* %0, %struct.w83627ehf_data* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.w83627ehf_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.w83627ehf_sio_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.w83627ehf_data* %1, %struct.w83627ehf_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device* %8)
  store %struct.w83627ehf_sio_data* %9, %struct.w83627ehf_sio_data** %7, align 8
  %10 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %7, align 8
  %11 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @nct6776, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %31

16:                                               ; preds = %3
  %17 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %7, align 8
  %18 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @nct6775, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @nct6775_write_fan_div(%struct.w83627ehf_data* %23, i32 %24)
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @w83627ehf_write_fan_div(%struct.w83627ehf_data* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %15
  ret void
}

declare dso_local %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @nct6775_write_fan_div(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_fan_div(%struct.w83627ehf_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
