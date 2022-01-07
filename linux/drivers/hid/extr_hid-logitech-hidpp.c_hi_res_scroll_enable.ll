; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hi_res_scroll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hi_res_scroll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HIDPP_QUIRK_HI_RES_SCROLL_X2121 = common dso_local global i32 0, align 4
@HIDPP_QUIRK_HI_RES_SCROLL_X2120 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"multiplier = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*)* @hi_res_scroll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi_res_scroll_enable(%struct.hidpp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %7 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @HIDPP_QUIRK_HI_RES_SCROLL_X2121, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %14 = call i32 @hidpp_hrw_set_wheel_mode(%struct.hidpp_device* %13, i32 0, i32 1, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %19 = call i32 @hidpp_hrw_get_wheel_capability(%struct.hidpp_device* %18, i32* %5)
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %12
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %23 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HIDPP_QUIRK_HI_RES_SCROLL_X2120, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %30 = call i32 @hidpp_hrs_set_highres_scrolling_mode(%struct.hidpp_device* %29, i32 1, i32* %5)
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %21
  %32 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %33 = call i32 @hidpp10_enable_scrolling_acceleration(%struct.hidpp_device* %32)
  store i32 %33, i32* %4, align 4
  store i32 8, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %47 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %50 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @hid_info(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %44, %38
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @hidpp_hrw_set_wheel_mode(%struct.hidpp_device*, i32, i32, i32) #1

declare dso_local i32 @hidpp_hrw_get_wheel_capability(%struct.hidpp_device*, i32*) #1

declare dso_local i32 @hidpp_hrs_set_highres_scrolling_mode(%struct.hidpp_device*, i32, i32*) #1

declare dso_local i32 @hidpp10_enable_scrolling_acceleration(%struct.hidpp_device*) #1

declare dso_local i32 @hid_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
