; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32, %struct.hid_field** }
%struct.hid_field = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HID_GENERIC = common dso_local global i64 0, align 8
@HID_DG_TABLETFUNCTIONKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wacom_wac_report(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca %struct.wacom_wac*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %14)
  store %struct.wacom* %15, %struct.wacom** %5, align 8
  %16 = load %struct.wacom*, %struct.wacom** %5, align 8
  %17 = getelementptr inbounds %struct.wacom, %struct.wacom* %16, i32 0, i32 0
  store %struct.wacom_wac* %17, %struct.wacom_wac** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  %18 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %19 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HID_GENERIC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %173

25:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %63, %25
  %27 = load i32, i32* %12, align 4
  %28 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %29 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %26
  %33 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %34 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %33, i32 0, i32 1
  %35 = load %struct.hid_field**, %struct.hid_field*** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %35, i64 %37
  %39 = load %struct.hid_field*, %struct.hid_field** %38, align 8
  store %struct.hid_field* %39, %struct.hid_field** %7, align 8
  %40 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %41 = call i64 @WACOM_PAD_FIELD(%struct.hid_field* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %46 = call i64 @WACOM_PEN_FIELD(%struct.hid_field* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %51 = call i64 @WACOM_FINGER_FIELD(%struct.hid_field* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %56 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @wacom_equivalent_usage(i32 %57)
  %59 = load i64, i64* @HID_DG_TABLETFUNCTIONKEY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %54
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %26

66:                                               ; preds = %26
  %67 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %68 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %69 = call i32 @wacom_wac_battery_pre_report(%struct.hid_device* %67, %struct.hid_report* %68)
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.wacom*, %struct.wacom** %5, align 8
  %74 = getelementptr inbounds %struct.wacom, %struct.wacom* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %80 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %81 = call i32 @wacom_wac_pad_pre_report(%struct.hid_device* %79, %struct.hid_report* %80)
  br label %82

82:                                               ; preds = %78, %72, %66
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.wacom*, %struct.wacom** %5, align 8
  %87 = getelementptr inbounds %struct.wacom, %struct.wacom* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %93 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %94 = call i32 @wacom_wac_pen_pre_report(%struct.hid_device* %92, %struct.hid_report* %93)
  br label %95

95:                                               ; preds = %91, %85, %82
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load %struct.wacom*, %struct.wacom** %5, align 8
  %100 = getelementptr inbounds %struct.wacom, %struct.wacom* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %106 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %107 = call i32 @wacom_wac_finger_pre_report(%struct.hid_device* %105, %struct.hid_report* %106)
  br label %108

108:                                              ; preds = %104, %98, %95
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %153, %108
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %112 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %156

115:                                              ; preds = %109
  %116 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %117 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %116, i32 0, i32 1
  %118 = load %struct.hid_field**, %struct.hid_field*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %118, i64 %120
  %122 = load %struct.hid_field*, %struct.hid_field** %121, align 8
  store %struct.hid_field* %122, %struct.hid_field** %7, align 8
  %123 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %124 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %115
  %132 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %133 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %134 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %135 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i64 @wacom_wac_collection(%struct.hid_device* %132, %struct.hid_report* %133, i32 %139, %struct.hid_field* %140, i32 %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %131
  br label %173

145:                                              ; preds = %131
  %146 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %147 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %13, align 4
  br label %152

152:                                              ; preds = %145, %115
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %109

156:                                              ; preds = %109
  %157 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %158 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %159 = call i32 @wacom_wac_battery_report(%struct.hid_device* %157, %struct.hid_report* %158)
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load %struct.wacom*, %struct.wacom** %5, align 8
  %164 = getelementptr inbounds %struct.wacom, %struct.wacom* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %170 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %171 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %172 = call i32 @wacom_wac_pad_report(%struct.hid_device* %169, %struct.hid_report* %170, %struct.hid_field* %171)
  br label %173

173:                                              ; preds = %24, %144, %168, %162, %156
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @WACOM_PAD_FIELD(%struct.hid_field*) #1

declare dso_local i64 @WACOM_PEN_FIELD(%struct.hid_field*) #1

declare dso_local i64 @WACOM_FINGER_FIELD(%struct.hid_field*) #1

declare dso_local i64 @wacom_equivalent_usage(i32) #1

declare dso_local i32 @wacom_wac_battery_pre_report(%struct.hid_device*, %struct.hid_report*) #1

declare dso_local i32 @wacom_wac_pad_pre_report(%struct.hid_device*, %struct.hid_report*) #1

declare dso_local i32 @wacom_wac_pen_pre_report(%struct.hid_device*, %struct.hid_report*) #1

declare dso_local i32 @wacom_wac_finger_pre_report(%struct.hid_device*, %struct.hid_report*) #1

declare dso_local i64 @wacom_wac_collection(%struct.hid_device*, %struct.hid_report*, i32, %struct.hid_field*, i32) #1

declare dso_local i32 @wacom_wac_battery_report(%struct.hid_device*, %struct.hid_report*) #1

declare dso_local i32 @wacom_wac_pad_report(%struct.hid_device*, %struct.hid_report*, %struct.hid_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
