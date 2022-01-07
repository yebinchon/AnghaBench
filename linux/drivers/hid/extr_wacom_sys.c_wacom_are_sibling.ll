; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_are_sibling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_are_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i64 }
%struct.wacom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.wacom_features }
%struct.wacom_features = type { i64, i64, i64, i32 }

@HID_ANY_ID = common dso_local global i64 0, align 8
@HID_GENERIC = common dso_local global i64 0, align 8
@WACOM_DEVICETYPE_DIRECT = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_PEN = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device*)* @wacom_are_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_are_sibling(%struct.hid_device* %0, %struct.hid_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.wacom*, align 8
  %7 = alloca %struct.wacom_features*, align 8
  %8 = alloca %struct.wacom*, align 8
  %9 = alloca %struct.wacom_features*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device* %1, %struct.hid_device** %5, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.wacom* %13, %struct.wacom** %6, align 8
  %14 = load %struct.wacom*, %struct.wacom** %6, align 8
  %15 = getelementptr inbounds %struct.wacom, %struct.wacom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.wacom_features* %16, %struct.wacom_features** %7, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %18 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.wacom* %18, %struct.wacom** %8, align 8
  %19 = load %struct.wacom*, %struct.wacom** %8, align 8
  %20 = getelementptr inbounds %struct.wacom, %struct.wacom* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.wacom_features* %21, %struct.wacom_features** %9, align 8
  %22 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %23 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %28 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  br label %34

30:                                               ; preds = %2
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i64 [ %29, %26 ], [ %33, %30 ]
  store i64 %35, i64* %10, align 8
  %36 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %37 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %42 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  br label %48

44:                                               ; preds = %34
  %45 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i64 [ %43, %40 ], [ %47, %44 ]
  store i64 %49, i64* %11, align 8
  %50 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %51 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HID_ANY_ID, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %173

62:                                               ; preds = %55, %48
  %63 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %64 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HID_ANY_ID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %70 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %173

75:                                               ; preds = %68, %62
  %76 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %77 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %80 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %75
  %84 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %85 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %88 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %93 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %94 = call i32 @hid_compare_device_paths(%struct.hid_device* %92, %struct.hid_device* %93, i8 signext 47)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %173

97:                                               ; preds = %91
  br label %105

98:                                               ; preds = %83, %75
  %99 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %100 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %101 = call i32 @hid_compare_device_paths(%struct.hid_device* %99, %struct.hid_device* %100, i8 signext 46)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %173

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %97
  %106 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %107 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HID_GENERIC, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %173

112:                                              ; preds = %105
  %113 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %114 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %121 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %173

127:                                              ; preds = %119, %112
  %128 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %129 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %127
  %135 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %136 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %173

142:                                              ; preds = %134, %127
  %143 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %144 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %142
  %150 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %151 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %173

157:                                              ; preds = %149, %142
  %158 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %159 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @WACOM_DEVICETYPE_TOUCH, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %157
  %165 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %166 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @WACOM_DEVICETYPE_PEN, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %173

172:                                              ; preds = %164, %157
  store i32 1, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %171, %156, %141, %126, %111, %103, %96, %74, %61
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_compare_device_paths(%struct.hid_device*, %struct.hid_device*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
