; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_usage_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_usage_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32, i32, i32, i32 }
%struct.hid_usage = type { i32 }
%struct.wacom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wacom_features }
%struct.wacom_features = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@WACOM_DEVICETYPE_PEN = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_TOUCH = common dso_local global i32 0, align 4
@BAMBOO_PT = common dso_local global i64 0, align 8
@BAMBOO_TOUCH = common dso_local global i64 0, align 8
@HID_GENERIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* @wacom_usage_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_usage_mapping(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca %struct.hid_usage*, align 8
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca %struct.wacom_features*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_field* %1, %struct.hid_field** %5, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.wacom* %13, %struct.wacom** %7, align 8
  %14 = load %struct.wacom*, %struct.wacom** %7, align 8
  %15 = getelementptr inbounds %struct.wacom, %struct.wacom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.wacom_features* %16, %struct.wacom_features** %8, align 8
  %17 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %18 = call i32 @WACOM_FINGER_FIELD(%struct.hid_field* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %20 = call i32 @WACOM_PEN_FIELD(%struct.hid_field* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %22 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @wacom_equivalent_usage(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %29 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %30 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %44

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %38 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %39 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %43

42:                                               ; preds = %33
  br label %147

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %27
  %45 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %46 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %47 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %48 = call i32 @wacom_hid_usage_quirk(%struct.hid_device* %45, %struct.hid_field* %46, %struct.hid_usage* %47)
  %49 = load i32, i32* %11, align 4
  switch i32 %49, label %136 [
    i32 129, label %50
    i32 128, label %88
    i32 130, label %126
  ]

50:                                               ; preds = %44
  %51 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %52 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %55 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %50
  %59 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %60 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %63 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %65 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BAMBOO_PT, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %58
  %70 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %71 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BAMBOO_TOUCH, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %77 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %80 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %82 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %85 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %75, %69, %58
  br label %87

87:                                               ; preds = %86, %50
  br label %136

88:                                               ; preds = %44
  %89 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %90 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %93 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %88
  %97 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %98 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %101 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %103 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BAMBOO_PT, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %96
  %108 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %109 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @BAMBOO_TOUCH, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %115 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %118 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %120 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %123 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %113, %107, %96
  br label %125

125:                                              ; preds = %124, %88
  br label %136

126:                                              ; preds = %44
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %131 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %134 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  br label %135

135:                                              ; preds = %129, %126
  br label %136

136:                                              ; preds = %44, %135, %125, %87
  %137 = load %struct.wacom_features*, %struct.wacom_features** %8, align 8
  %138 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @HID_GENERIC, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %144 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %145 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %146 = call i32 @wacom_wac_usage_mapping(%struct.hid_device* %143, %struct.hid_field* %144, %struct.hid_usage* %145)
  br label %147

147:                                              ; preds = %42, %142, %136
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @WACOM_FINGER_FIELD(%struct.hid_field*) #1

declare dso_local i32 @WACOM_PEN_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

declare dso_local i32 @wacom_hid_usage_quirk(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*) #1

declare dso_local i32 @wacom_wac_usage_mapping(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
