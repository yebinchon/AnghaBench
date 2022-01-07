; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-a4tech.c_a4_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-a4tech.c_a4_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i64, i64, i32 }
%struct.a4tech_sc = type { i32, i32, i32 }

@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@A4_2WHEEL_MOUSE_HACK_B8 = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i64 0, align 8
@REL_WHEEL_HI_RES = common dso_local global i64 0, align 8
@A4_WHEEL_ORIENTATION = common dso_local global i32 0, align 4
@REL_HWHEEL = common dso_local global i64 0, align 8
@REL_WHEEL = common dso_local global i64 0, align 8
@REL_HWHEEL_HI_RES = common dso_local global i64 0, align 8
@A4_2WHEEL_MOUSE_HACK_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @a4_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.a4tech_sc*, align 8
  %11 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.a4tech_sc* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.a4tech_sc* %13, %struct.a4tech_sc** %10, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %22 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %4
  store i32 0, i32* %5, align 4
  br label %139

26:                                               ; preds = %20
  %27 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %28 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.input_dev*, %struct.input_dev** %30, align 8
  store %struct.input_dev* %31, %struct.input_dev** %11, align 8
  %32 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %33 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @A4_2WHEEL_MOUSE_HACK_B8, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %91

38:                                               ; preds = %26
  %39 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %40 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EV_REL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %46 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REL_WHEEL_HI_RES, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %53 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %5, align 4
  br label %139

54:                                               ; preds = %44, %38
  %55 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %56 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @A4_WHEEL_ORIENTATION, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %54
  %61 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %62 = load i64, i64* @EV_REL, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i64, i64* @REL_HWHEEL, align 8
  br label %69

67:                                               ; preds = %60
  %68 = load i64, i64* @REL_WHEEL, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i64 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %72 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @input_event(%struct.input_dev* %61, i64 %62, i64 %70, i32 %73)
  %75 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %76 = load i64, i64* @EV_REL, align 8
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i64, i64* @REL_HWHEEL_HI_RES, align 8
  br label %83

81:                                               ; preds = %69
  %82 = load i64, i64* @REL_WHEEL_HI_RES, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i64 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %86 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %87, 120
  %89 = call i32 @input_event(%struct.input_dev* %75, i64 %76, i64 %84, i32 %88)
  store i32 1, i32* %5, align 4
  br label %139

90:                                               ; preds = %54
  br label %91

91:                                               ; preds = %90, %26
  %92 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %93 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @A4_2WHEEL_MOUSE_HACK_7, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %91
  %99 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %100 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 589831
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %110 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  store i32 1, i32* %5, align 4
  br label %139

111:                                              ; preds = %98, %91
  %112 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %113 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @REL_WHEEL_HI_RES, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %111
  %118 = load %struct.a4tech_sc*, %struct.a4tech_sc** %10, align 8
  %119 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %124 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %125 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @REL_HWHEEL, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @input_event(%struct.input_dev* %123, i64 %126, i64 %127, i32 %128)
  %130 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %131 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %132 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @REL_HWHEEL_HI_RES, align 8
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 %135, 120
  %137 = call i32 @input_event(%struct.input_dev* %130, i64 %133, i64 %134, i32 %136)
  store i32 1, i32* %5, align 4
  br label %139

138:                                              ; preds = %117, %111
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %122, %103, %83, %50, %25
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local %struct.a4tech_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_event(%struct.input_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
