; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_get_port_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_get_port_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_port = type { %struct.extcon_dev* }
%struct.extcon_dev = type { i32 }
%union.extcon_property_value = type { i64 }

@EXTCON_DISP_DP = common dso_local global i32 0, align 4
@EXTCON_PROP_USB_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_port*)* @cdn_dp_get_port_lanes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_get_port_lanes(%struct.cdn_dp_port* %0) #0 {
  %2 = alloca %struct.cdn_dp_port*, align 8
  %3 = alloca %struct.extcon_dev*, align 8
  %4 = alloca %union.extcon_property_value, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdn_dp_port* %0, %struct.cdn_dp_port** %2, align 8
  %7 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %2, align 8
  %8 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %7, i32 0, i32 0
  %9 = load %struct.extcon_dev*, %struct.extcon_dev** %8, align 8
  store %struct.extcon_dev* %9, %struct.extcon_dev** %3, align 8
  %10 = load %struct.extcon_dev*, %struct.extcon_dev** %3, align 8
  %11 = load i32, i32* @EXTCON_DISP_DP, align 4
  %12 = call i32 @extcon_get_state(%struct.extcon_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.extcon_dev*, %struct.extcon_dev** %3, align 8
  %17 = load i32, i32* @EXTCON_DISP_DP, align 4
  %18 = load i32, i32* @EXTCON_PROP_USB_SS, align 4
  %19 = call i32 @extcon_get_property(%struct.extcon_dev* %16, i32 %17, i32 %18, %union.extcon_property_value* %4)
  %20 = bitcast %union.extcon_property_value* %4 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 2, i32* %6, align 4
  br label %25

24:                                               ; preds = %15
  store i32 4, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @extcon_get_state(%struct.extcon_dev*, i32) #1

declare dso_local i32 @extcon_get_property(%struct.extcon_dev*, i32, i32, %union.extcon_property_value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
