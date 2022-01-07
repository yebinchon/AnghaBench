; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c__wacom_query_tablet_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c__wacom_query_tablet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.wacom_wac, %struct.hid_device* }
%struct.wacom_wac = type { i32, i32, %struct.wacom_features }
%struct.wacom_features = type { i64, i32 }
%struct.hid_device = type { i64 }

@BUS_BLUETOOTH = common dso_local global i64 0, align 8
@HID_GENERIC = common dso_local global i64 0, align 8
@WACOM_DEVICETYPE_TOUCH = common dso_local global i32 0, align 4
@TABLETPC = common dso_local global i64 0, align 8
@WACOM_24HDT = common dso_local global i64 0, align 8
@WACOM_27QHDT = common dso_local global i64 0, align 8
@BAMBOO_PAD = common dso_local global i64 0, align 8
@WACOM_DEVICETYPE_PEN = common dso_local global i32 0, align 4
@BAMBOO_PT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*)* @_wacom_query_tablet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wacom_query_tablet_data(%struct.wacom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.wacom_wac*, align 8
  %6 = alloca %struct.wacom_features*, align 8
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  %7 = load %struct.wacom*, %struct.wacom** %3, align 8
  %8 = getelementptr inbounds %struct.wacom, %struct.wacom* %7, i32 0, i32 1
  %9 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  store %struct.hid_device* %9, %struct.hid_device** %4, align 8
  %10 = load %struct.wacom*, %struct.wacom** %3, align 8
  %11 = getelementptr inbounds %struct.wacom, %struct.wacom* %10, i32 0, i32 0
  store %struct.wacom_wac* %11, %struct.wacom_wac** %5, align 8
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %13 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %12, i32 0, i32 2
  store %struct.wacom_features* %13, %struct.wacom_features** %6, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BUS_BLUETOOTH, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %21 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %22 = call i32 @wacom_bt_query_tablet_data(%struct.hid_device* %20, i32 1, %struct.wacom_features* %21)
  store i32 %22, i32* %2, align 4
  br label %118

23:                                               ; preds = %1
  %24 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %25 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HID_GENERIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %105

29:                                               ; preds = %23
  %30 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %31 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %29
  %37 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %38 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TABLETPC, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %44 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %43, i32 0, i32 0
  store i32 3, i32* %44, align 8
  %45 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %46 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %45, i32 0, i32 1
  store i32 4, i32* %46, align 4
  br label %83

47:                                               ; preds = %36
  %48 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %49 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WACOM_24HDT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %55 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %54, i32 0, i32 0
  store i32 18, i32* %55, align 8
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %57 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %56, i32 0, i32 1
  store i32 2, i32* %57, align 4
  br label %82

58:                                               ; preds = %47
  %59 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %60 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @WACOM_27QHDT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %66 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %65, i32 0, i32 0
  store i32 131, i32* %66, align 8
  %67 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %68 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %67, i32 0, i32 1
  store i32 2, i32* %68, align 4
  br label %81

69:                                               ; preds = %58
  %70 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %71 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BAMBOO_PAD, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %77 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %76, i32 0, i32 0
  store i32 2, i32* %77, align 8
  %78 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %79 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %78, i32 0, i32 1
  store i32 2, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %69
  br label %81

81:                                               ; preds = %80, %64
  br label %82

82:                                               ; preds = %81, %53
  br label %83

83:                                               ; preds = %82, %42
  br label %104

84:                                               ; preds = %29
  %85 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %86 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %93 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BAMBOO_PT, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %99 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %98, i32 0, i32 0
  store i32 2, i32* %99, align 8
  %100 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %101 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %100, i32 0, i32 1
  store i32 2, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %91
  br label %103

103:                                              ; preds = %102, %84
  br label %104

104:                                              ; preds = %103, %83
  br label %105

105:                                              ; preds = %104, %23
  %106 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %107 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %108 = call i32 @wacom_set_device_mode(%struct.hid_device* %106, %struct.wacom_wac* %107)
  %109 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %110 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HID_GENERIC, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %116 = call i32 @wacom_hid_set_device_mode(%struct.hid_device* %115)
  store i32 %116, i32* %2, align 4
  br label %118

117:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %114, %19
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @wacom_bt_query_tablet_data(%struct.hid_device*, i32, %struct.wacom_features*) #1

declare dso_local i32 @wacom_set_device_mode(%struct.hid_device*, %struct.wacom_wac*) #1

declare dso_local i32 @wacom_hid_set_device_mode(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
