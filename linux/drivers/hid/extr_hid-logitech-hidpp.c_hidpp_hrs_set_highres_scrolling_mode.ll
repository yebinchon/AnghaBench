; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_hrs_set_highres_scrolling_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_hrs_set_highres_scrolling_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.hidpp_report = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@HIDPP_PAGE_HI_RESOLUTION_SCROLLING = common dso_local global i32 0, align 4
@CMD_HI_RESOLUTION_SCROLLING_SET_HIGHRES_SCROLLING_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i32, i32*)* @hidpp_hrs_set_highres_scrolling_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_hrs_set_highres_scrolling_mode(%struct.hidpp_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidpp_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca %struct.hidpp_report, align 8
  store %struct.hidpp_device* %0, %struct.hidpp_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %14 = load i32, i32* @HIDPP_PAGE_HI_RESOLUTION_SCROLLING, align 4
  %15 = call i32 @hidpp_root_get_feature(%struct.hidpp_device* %13, i32 %14, i32* %8, i32* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @BIT(i32 0)
  br label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @CMD_HI_RESOLUTION_SCROLLING_SET_HIGHRES_SCROLLING_MODE, align 4
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %33 = call i32 @hidpp_send_fap_command_sync(%struct.hidpp_device* %29, i32 %30, i32 %31, i32* %32, i32 4, %struct.hidpp_report* %12)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %45

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %12, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %36, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @hidpp_root_get_feature(%struct.hidpp_device*, i32, i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hidpp_send_fap_command_sync(%struct.hidpp_device*, i32, i32, i32*, i32, %struct.hidpp_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
