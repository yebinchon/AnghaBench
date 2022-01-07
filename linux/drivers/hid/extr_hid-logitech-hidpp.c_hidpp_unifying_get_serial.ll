; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_unifying_get_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_unifying_get_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.hidpp_report = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@HIDPP_EXTENDED_PAIRING = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_SHORT = common dso_local global i32 0, align 4
@HIDPP_GET_LONG_REGISTER = common dso_local global i32 0, align 4
@HIDPP_REG_PAIRING_INFORMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i32*)* @hidpp_unifying_get_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_unifying_get_serial(%struct.hidpp_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidpp_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hidpp_report, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @HIDPP_EXTENDED_PAIRING, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.hidpp_device*, %struct.hidpp_device** %4, align 8
  %12 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  %13 = load i32, i32* @HIDPP_GET_LONG_REGISTER, align 4
  %14 = load i32, i32* @HIDPP_REG_PAIRING_INFORMATION, align 4
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %16 = call i32 @hidpp_send_rap_command_sync(%struct.hidpp_device* %11, i32 %12, i32 %13, i32 %14, i32* %15, i32 1, %struct.hidpp_report* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %6, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @hidpp_send_rap_command_sync(%struct.hidpp_device*, i32, i32, i32, i32*, i32, %struct.hidpp_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
