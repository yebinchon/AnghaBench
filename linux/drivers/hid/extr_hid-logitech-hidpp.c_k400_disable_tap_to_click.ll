; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_k400_disable_tap_to_click.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_k400_disable_tap_to_click.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { %struct.k400_private_data* }
%struct.k400_private_data = type { i32 }
%struct.hidpp_touchpad_fw_items = type { i32 }

@HIDPP_PAGE_TOUCHPAD_FW_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*)* @k400_disable_tap_to_click to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k400_disable_tap_to_click(%struct.hidpp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.k400_private_data*, align 8
  %5 = alloca %struct.hidpp_touchpad_fw_items, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  %8 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %9 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %8, i32 0, i32 0
  %10 = load %struct.k400_private_data*, %struct.k400_private_data** %9, align 8
  store %struct.k400_private_data* %10, %struct.k400_private_data** %4, align 8
  %11 = bitcast %struct.hidpp_touchpad_fw_items* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.k400_private_data*, %struct.k400_private_data** %4, align 8
  %13 = getelementptr inbounds %struct.k400_private_data, %struct.k400_private_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %18 = load i32, i32* @HIDPP_PAGE_TOUCHPAD_FW_ITEMS, align 4
  %19 = load %struct.k400_private_data*, %struct.k400_private_data** %4, align 8
  %20 = getelementptr inbounds %struct.k400_private_data, %struct.k400_private_data* %19, i32 0, i32 0
  %21 = call i32 @hidpp_root_get_feature(%struct.hidpp_device* %17, i32 %18, i32* %20, i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %38

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %29 = load %struct.k400_private_data*, %struct.k400_private_data** %4, align 8
  %30 = getelementptr inbounds %struct.k400_private_data, %struct.k400_private_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hidpp_touchpad_fw_items_set(%struct.hidpp_device* %28, i32 %31, %struct.hidpp_touchpad_fw_items* %5)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %35, %24
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hidpp_root_get_feature(%struct.hidpp_device*, i32, i32*, i32*) #2

declare dso_local i32 @hidpp_touchpad_fw_items_set(%struct.hidpp_device*, i32, %struct.hidpp_touchpad_fw_items*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
