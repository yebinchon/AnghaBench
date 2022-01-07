; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_usage_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_usage_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.hid_usage = type { i32, i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.input_dev* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.input_dev = type { i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*)* @wacom_wac_finger_usage_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_finger_usage_mapping(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca %struct.hid_usage*, align 8
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca %struct.wacom_wac*, align 8
  %9 = alloca %struct.input_dev*, align 8
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
  store %struct.wacom_wac* %15, %struct.wacom_wac** %8, align 8
  %16 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %17 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %16, i32 0, i32 2
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %9, align 8
  %19 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %20 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wacom_equivalent_usage(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %122 [
    i32 129, label %28
    i32 128, label %46
    i32 130, label %64
    i32 132, label %64
    i32 131, label %80
    i32 134, label %87
    i32 133, label %108
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %33 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %34 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %35 = load i32, i32* @EV_ABS, align 4
  %36 = load i32, i32* @ABS_X, align 4
  %37 = call i32 @wacom_map_usage(%struct.input_dev* %32, %struct.hid_usage* %33, %struct.hid_field* %34, i32 %35, i32 %36, i32 4)
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %40 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %41 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %42 = load i32, i32* @EV_ABS, align 4
  %43 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %44 = call i32 @wacom_map_usage(%struct.input_dev* %39, %struct.hid_usage* %40, %struct.hid_field* %41, i32 %42, i32 %43, i32 4)
  br label %45

45:                                               ; preds = %38, %31
  br label %122

46:                                               ; preds = %3
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %51 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %52 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %53 = load i32, i32* @EV_ABS, align 4
  %54 = load i32, i32* @ABS_Y, align 4
  %55 = call i32 @wacom_map_usage(%struct.input_dev* %50, %struct.hid_usage* %51, %struct.hid_field* %52, i32 %53, i32 %54, i32 4)
  br label %63

56:                                               ; preds = %46
  %57 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %58 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %59 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %60 = load i32, i32* @EV_ABS, align 4
  %61 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %62 = call i32 @wacom_map_usage(%struct.input_dev* %57, %struct.hid_usage* %58, %struct.hid_field* %59, i32 %60, i32 %61, i32 4)
  br label %63

63:                                               ; preds = %56, %49
  br label %122

64:                                               ; preds = %3, %3
  %65 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %66 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %67 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %68 = load i32, i32* @EV_ABS, align 4
  %69 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %70 = call i32 @wacom_map_usage(%struct.input_dev* %65, %struct.hid_usage* %66, %struct.hid_field* %67, i32 %68, i32 %69, i32 0)
  %71 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %72 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %73 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %74 = load i32, i32* @EV_ABS, align 4
  %75 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %76 = call i32 @wacom_map_usage(%struct.input_dev* %71, %struct.hid_usage* %72, %struct.hid_field* %73, i32 %74, i32 %75, i32 0)
  %77 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %78 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %79 = call i32 @input_set_abs_params(%struct.input_dev* %77, i32 %78, i32 0, i32 1, i32 0, i32 0)
  br label %122

80:                                               ; preds = %3
  %81 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %82 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %83 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %84 = load i32, i32* @EV_KEY, align 4
  %85 = load i32, i32* @BTN_TOUCH, align 4
  %86 = call i32 @wacom_map_usage(%struct.input_dev* %81, %struct.hid_usage* %82, %struct.hid_field* %83, i32 %84, i32 %85, i32 0)
  br label %122

87:                                               ; preds = %3
  %88 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %89 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %88, i32 0, i32 3
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %94 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %97 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %100 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %103 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %106 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 8
  br label %122

108:                                              ; preds = %3
  %109 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %110 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %113 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub i32 %111, %114
  %116 = load i32, i32* %10, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %120 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %119, i32 0, i32 0
  store i32 255, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %108
  br label %122

122:                                              ; preds = %3, %121, %87, %80, %64, %63, %45
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

declare dso_local i32 @wacom_map_usage(%struct.input_dev*, %struct.hid_usage*, %struct.hid_field*, i32, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
