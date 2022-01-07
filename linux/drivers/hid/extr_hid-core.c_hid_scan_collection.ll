; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_scan_collection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_scan_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.hid_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64* }
%struct.hid_device = type { i64, i64, i64 }

@HID_UP_SENSOR = common dso_local global i32 0, align 4
@HID_COLLECTION_PHYSICAL = common dso_local global i32 0, align 4
@HID_GROUP_SENSOR_HUB = common dso_local global i64 0, align 8
@USB_VENDOR_ID_MICROSOFT = common dso_local global i64 0, align 8
@USB_DEVICE_ID_MS_POWER_COVER = common dso_local global i64 0, align 8
@HID_GROUP_MULTITOUCH = common dso_local global i64 0, align 8
@HID_GROUP_GENERIC = common dso_local global i64 0, align 8
@HID_UP_GENDESK = common dso_local global i32 0, align 4
@HID_GD_POINTER = common dso_local global i64 0, align 8
@HID_SCAN_FLAG_GD_POINTER = common dso_local global i32 0, align 4
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@HID_SCAN_FLAG_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_parser*, i32)* @hid_scan_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hid_scan_collection(%struct.hid_parser* %0, i32 %1) #0 {
  %3 = alloca %struct.hid_parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %8 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %7, i32 0, i32 3
  %9 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  store %struct.hid_device* %9, %struct.hid_device** %5, align 8
  %10 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %11 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 16
  %15 = load i32, i32* @HID_UP_SENSOR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HID_COLLECTION_PHYSICAL, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* @HID_GROUP_SENSOR_HUB, align 8
  %23 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %21, %17, %2
  %26 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %27 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_VENDOR_ID_MICROSOFT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %33 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_DEVICE_ID_MS_POWER_COVER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HID_GROUP_MULTITOUCH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* @HID_GROUP_GENERIC, align 8
  %45 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %37, %31, %25
  %48 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %49 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 16
  %53 = load i32, i32* @HID_UP_GENDESK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %81, %55
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %59 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %56
  %64 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %65 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HID_GD_POINTER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %63
  %75 = load i32, i32* @HID_SCAN_FLAG_GD_POINTER, align 4
  %76 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %77 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %63
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %56

84:                                               ; preds = %56
  br label %85

85:                                               ; preds = %84, %47
  %86 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %87 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 16
  %91 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load i32, i32* @HID_SCAN_FLAG_VENDOR_SPECIFIC, align 4
  %95 = load %struct.hid_parser*, %struct.hid_parser** %3, align 8
  %96 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %85
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
