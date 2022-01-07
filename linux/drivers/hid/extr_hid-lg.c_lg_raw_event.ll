; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.lg_drv_data = type { i32 }

@LG_FF4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @lg_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.lg_drv_data* %12, %struct.lg_drv_data** %10, align 8
  %13 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %14 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LG_FF4, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %21 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.lg_drv_data*, %struct.lg_drv_data** %10, align 8
  %25 = call i32 @lg4ff_raw_event(%struct.hid_device* %20, %struct.hid_report* %21, i32* %22, i32 %23, %struct.lg_drv_data* %24)
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @lg4ff_raw_event(%struct.hid_device*, %struct.hid_report*, i32*, i32, %struct.lg_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
