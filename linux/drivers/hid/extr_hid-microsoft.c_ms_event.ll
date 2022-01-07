; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i32, i32 }
%struct.ms_data = type { i64 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@MS_ERGONOMY = common dso_local global i64 0, align 8
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@KEY_KPEQUAL = common dso_local global i32 0, align 4
@KEY_KPLEFTPAREN = common dso_local global i32 0, align 4
@KEY_KPRIGHTPAREN = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@ms_event.last_key = internal global i32 0, align 4
@KEY_F14 = common dso_local global i32 0, align 4
@KEY_F15 = common dso_local global i32 0, align 4
@KEY_F16 = common dso_local global i32 0, align 4
@KEY_F17 = common dso_local global i32 0, align 4
@KEY_F18 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @ms_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ms_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.input_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %16 = call %struct.ms_data* @hid_get_drvdata(%struct.hid_device* %15)
  store %struct.ms_data* %16, %struct.ms_data** %10, align 8
  %17 = load %struct.ms_data*, %struct.ms_data** %10, align 8
  %18 = getelementptr inbounds %struct.ms_data, %struct.ms_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %28 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = icmp ne %struct.TYPE_2__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %33 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %26, %4
  store i32 0, i32* %5, align 4
  br label %145

37:                                               ; preds = %31
  %38 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %39 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.input_dev*, %struct.input_dev** %41, align 8
  store %struct.input_dev* %42, %struct.input_dev** %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @MS_ERGONOMY, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %37
  %48 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %49 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %52 = or i32 %51, 65280
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %56 = load i32, i32* @KEY_KPEQUAL, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 1
  %59 = call i32 @input_report_key(%struct.input_dev* %55, i32 %56, i32 %58)
  %60 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %61 = load i32, i32* @KEY_KPLEFTPAREN, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 2
  %64 = call i32 @input_report_key(%struct.input_dev* %60, i32 %61, i32 %63)
  %65 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %66 = load i32, i32* @KEY_KPRIGHTPAREN, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 4
  %69 = call i32 @input_report_key(%struct.input_dev* %65, i32 %66, i32 %68)
  store i32 1, i32* %5, align 4
  br label %145

70:                                               ; preds = %47, %37
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @MS_ERGONOMY, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %70
  %76 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %77 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %80 = or i32 %79, 65281
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = and i32 %83, 96
  %85 = ashr i32 %84, 5
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, 31
  switch i32 %88, label %100 [
    i32 1, label %89
    i32 31, label %94
  ]

89:                                               ; preds = %82
  %90 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %91 = load i32, i32* @REL_WHEEL, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @input_report_rel(%struct.input_dev* %90, i32 %91, i32 %92)
  br label %100

94:                                               ; preds = %82
  %95 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %96 = load i32, i32* @REL_WHEEL, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sub nsw i32 0, %97
  %99 = call i32 @input_report_rel(%struct.input_dev* %95, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %82, %94, %89
  store i32 1, i32* %5, align 4
  br label %145

101:                                              ; preds = %75, %70
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @MS_ERGONOMY, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %101
  %107 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %108 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %111 = or i32 %110, 65285
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %144

113:                                              ; preds = %106
  store i32 0, i32* %14, align 4
  %114 = load i32, i32* %9, align 4
  switch i32 %114, label %125 [
    i32 1, label %115
    i32 2, label %117
    i32 4, label %119
    i32 8, label %121
    i32 16, label %123
  ]

115:                                              ; preds = %113
  %116 = load i32, i32* @KEY_F14, align 4
  store i32 %116, i32* %14, align 4
  br label %125

117:                                              ; preds = %113
  %118 = load i32, i32* @KEY_F15, align 4
  store i32 %118, i32* %14, align 4
  br label %125

119:                                              ; preds = %113
  %120 = load i32, i32* @KEY_F16, align 4
  store i32 %120, i32* %14, align 4
  br label %125

121:                                              ; preds = %113
  %122 = load i32, i32* @KEY_F17, align 4
  store i32 %122, i32* %14, align 4
  br label %125

123:                                              ; preds = %113
  %124 = load i32, i32* @KEY_F18, align 4
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %113, %123, %121, %119, %117, %115
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %130 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %131 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @input_event(%struct.input_dev* %129, i32 %132, i32 %133, i32 1)
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* @ms_event.last_key, align 4
  br label %143

136:                                              ; preds = %125
  %137 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %138 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %139 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @ms_event.last_key, align 4
  %142 = call i32 @input_event(%struct.input_dev* %137, i32 %140, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %136, %128
  store i32 1, i32* %5, align 4
  br label %145

144:                                              ; preds = %106, %101
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %143, %100, %54, %36
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.ms_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_rel(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
