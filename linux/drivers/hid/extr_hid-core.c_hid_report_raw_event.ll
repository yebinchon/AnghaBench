; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_report_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_report_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, %struct.hid_driver*, i32 (%struct.hid_device*, %struct.hid_report*)*, %struct.hid_report_enum* }
%struct.hid_driver = type { i32 (%struct.hid_device.0*, %struct.hid_report*)* }
%struct.hid_device.0 = type opaque
%struct.hid_report = type { i32, i32, i32*, i32 }
%struct.hid_report_enum = type { i64 }

@HID_MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"report %d is too short, (%d < %d)\0A\00", align 1
@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDRAW = common dso_local global i32 0, align 4
@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_report_raw_event(%struct.hid_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_report_enum*, align 8
  %12 = alloca %struct.hid_report*, align 8
  %13 = alloca %struct.hid_driver*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 3
  %21 = load %struct.hid_report_enum*, %struct.hid_report_enum** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %21, i64 %23
  store %struct.hid_report_enum* %24, %struct.hid_report_enum** %11, align 8
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i32*, i32** %8, align 8
  store i32* %26, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %27 = load %struct.hid_report_enum*, %struct.hid_report_enum** %11, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.hid_report* @hid_get_report(%struct.hid_report_enum* %27, i32* %28)
  store %struct.hid_report* %29, %struct.hid_report** %12, align 8
  %30 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %31 = icmp ne %struct.hid_report* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %5
  br label %174

33:                                               ; preds = %5
  %34 = load %struct.hid_report_enum*, %struct.hid_report_enum** %11, align 8
  %35 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %17, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %17, align 8
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %45 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = ashr i32 %47, 3
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @HID_MAX_BUFFER_SIZE, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* @HID_MAX_BUFFER_SIZE, align 4
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %53, %43
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %61 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @dbg_hid(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64)
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 @memset(i32* %69, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %59, %55
  %75 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %76 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %83 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %82, i32 0, i32 2
  %84 = load i32 (%struct.hid_device*, %struct.hid_report*)*, i32 (%struct.hid_device*, %struct.hid_report*)** %83, align 8
  %85 = icmp ne i32 (%struct.hid_device*, %struct.hid_report*)* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %88 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %87, i32 0, i32 2
  %89 = load i32 (%struct.hid_device*, %struct.hid_report*)*, i32 (%struct.hid_device*, %struct.hid_report*)** %88, align 8
  %90 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %91 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %92 = call i32 %89(%struct.hid_device* %90, %struct.hid_report* %91)
  br label %93

93:                                               ; preds = %86, %81, %74
  %94 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %95 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @HID_CLAIMED_HIDRAW, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @hidraw_report_event(%struct.hid_device* %101, i32* %102, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %174

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %93
  %110 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %111 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @HID_CLAIMED_HIDRAW, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %162

115:                                              ; preds = %109
  %116 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %117 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %115
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %139, %120
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %124 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ult i32 %122, %125
  br i1 %126, label %127, label %142

127:                                              ; preds = %121
  %128 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %129 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %130 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %17, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @hid_input_field(%struct.hid_device* %128, i32 %135, i32* %136, i32 %137)
  br label %139

139:                                              ; preds = %127
  %140 = load i32, i32* %14, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %121

142:                                              ; preds = %121
  %143 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %144 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %143, i32 0, i32 1
  %145 = load %struct.hid_driver*, %struct.hid_driver** %144, align 8
  store %struct.hid_driver* %145, %struct.hid_driver** %13, align 8
  %146 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %147 = icmp ne %struct.hid_driver* %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %142
  %149 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %150 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %149, i32 0, i32 0
  %151 = load i32 (%struct.hid_device.0*, %struct.hid_report*)*, i32 (%struct.hid_device.0*, %struct.hid_report*)** %150, align 8
  %152 = icmp ne i32 (%struct.hid_device.0*, %struct.hid_report*)* %151, null
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.hid_driver*, %struct.hid_driver** %13, align 8
  %155 = getelementptr inbounds %struct.hid_driver, %struct.hid_driver* %154, i32 0, i32 0
  %156 = load i32 (%struct.hid_device.0*, %struct.hid_report*)*, i32 (%struct.hid_device.0*, %struct.hid_report*)** %155, align 8
  %157 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %158 = bitcast %struct.hid_device* %157 to %struct.hid_device.0*
  %159 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %160 = call i32 %156(%struct.hid_device.0* %158, %struct.hid_report* %159)
  br label %161

161:                                              ; preds = %153, %148, %142
  br label %162

162:                                              ; preds = %161, %115, %109
  %163 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %164 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %171 = load %struct.hid_report*, %struct.hid_report** %12, align 8
  %172 = call i32 @hidinput_report_event(%struct.hid_device* %170, %struct.hid_report* %171)
  br label %173

173:                                              ; preds = %169, %162
  br label %174

174:                                              ; preds = %173, %107, %32
  %175 = load i32, i32* %18, align 4
  ret i32 %175
}

declare dso_local %struct.hid_report* @hid_get_report(%struct.hid_report_enum*, i32*) #1

declare dso_local i32 @dbg_hid(i8*, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hidraw_report_event(%struct.hid_device*, i32*, i32) #1

declare dso_local i32 @hid_input_field(%struct.hid_device*, i32, i32*, i32) #1

declare dso_local i32 @hidinput_report_event(%struct.hid_device*, %struct.hid_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
