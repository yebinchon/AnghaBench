; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_get_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_wtp_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { %struct.wtp_data* }
%struct.wtp_data = type { i32, i64, i32, i32, i32, i32 }
%struct.hidpp_touchpad_raw_info = type { i64, i64, i32, i32, i32, i32 }

@HIDPP_PAGE_TOUCHPAD_RAW_XY = common dso_local global i32 0, align 4
@TOUCHPAD_RAW_XY_ORIGIN_LOWER_LEFT = common dso_local global i64 0, align 8
@WTP_MANUAL_RESOLUTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*)* @wtp_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wtp_get_config(%struct.hidpp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca %struct.wtp_data*, align 8
  %5 = alloca %struct.hidpp_touchpad_raw_info, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %3, align 8
  %8 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %9 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %8, i32 0, i32 0
  %10 = load %struct.wtp_data*, %struct.wtp_data** %9, align 8
  store %struct.wtp_data* %10, %struct.wtp_data** %4, align 8
  %11 = bitcast %struct.hidpp_touchpad_raw_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 32, i1 false)
  %12 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %13 = load i32, i32* @HIDPP_PAGE_TOUCHPAD_RAW_XY, align 4
  %14 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %15 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %14, i32 0, i32 5
  %16 = call i32 @hidpp_root_get_feature(%struct.hidpp_device* %12, i32 %13, i32* %15, i32* %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %23 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %24 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @hidpp_touchpad_get_raw_info(%struct.hidpp_device* %22, i32 %25, %struct.hidpp_touchpad_raw_info* %5)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %64

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.hidpp_touchpad_raw_info, %struct.hidpp_touchpad_raw_info* %5, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %35 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = getelementptr inbounds %struct.hidpp_touchpad_raw_info, %struct.hidpp_touchpad_raw_info* %5, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %39 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = getelementptr inbounds %struct.hidpp_touchpad_raw_info, %struct.hidpp_touchpad_raw_info* %5, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %43 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.hidpp_touchpad_raw_info, %struct.hidpp_touchpad_raw_info* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TOUCHPAD_RAW_XY_ORIGIN_LOWER_LEFT, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %50 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.hidpp_touchpad_raw_info, %struct.hidpp_touchpad_raw_info* %5, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %54 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %56 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %31
  %60 = load i64, i64* @WTP_MANUAL_RESOLUTION, align 8
  %61 = load %struct.wtp_data*, %struct.wtp_data** %4, align 8
  %62 = getelementptr inbounds %struct.wtp_data, %struct.wtp_data* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %31
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %29, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hidpp_root_get_feature(%struct.hidpp_device*, i32, i32*, i32*) #2

declare dso_local i32 @hidpp_touchpad_get_raw_info(%struct.hidpp_device*, i32, %struct.hidpp_touchpad_raw_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
