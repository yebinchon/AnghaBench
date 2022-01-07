; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hidpp_device = type { %struct.wtp_data* }
%struct.wtp_data = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Can not get wtp config: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32)* @wtp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wtp_connect(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidpp_device*, align 8
  %7 = alloca %struct.wtp_data*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.hidpp_device* %10, %struct.hidpp_device** %6, align 8
  %11 = load %struct.hidpp_device*, %struct.hidpp_device** %6, align 8
  %12 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %11, i32 0, i32 0
  %13 = load %struct.wtp_data*, %struct.wtp_data** %12, align 8
  store %struct.wtp_data* %13, %struct.wtp_data** %7, align 8
  %14 = load %struct.wtp_data*, %struct.wtp_data** %7, align 8
  %15 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %2
  %19 = load %struct.hidpp_device*, %struct.hidpp_device** %6, align 8
  %20 = call i32 @wtp_get_config(%struct.hidpp_device* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @hid_err(%struct.hid_device* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.hidpp_device*, %struct.hidpp_device** %6, align 8
  %31 = load %struct.wtp_data*, %struct.wtp_data** %7, align 8
  %32 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hidpp_touchpad_set_raw_report_state(%struct.hidpp_device* %30, i32 %33, i32 1, i32 1)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wtp_get_config(%struct.hidpp_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @hidpp_touchpad_set_raw_report_state(%struct.hidpp_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
