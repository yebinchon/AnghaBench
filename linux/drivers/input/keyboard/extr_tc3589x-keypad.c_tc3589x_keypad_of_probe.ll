; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tc3589x-keypad.c_tc3589x_keypad_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc3589x_keypad_platform_data = type { i64, i64, i32, i32, i32, i32, i64 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"keypad,num-columns\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"keypad,num-rows\00", align 1
@TC_KPD_ROWS = common dso_local global i64 0, align 8
@TC_KPD_COLUMNS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"keypad columns/rows not properly specified (%ux%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"linux,keymap\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"property linux,keymap not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"linux,no-autorepeat\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"linux,wakeup\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"debounce-delay-ms\00", align 1
@TC_KPD_DEBOUNCE_PERIOD = common dso_local global i32 0, align 4
@TC_KPD_SETTLE_TIME = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc3589x_keypad_platform_data* (%struct.device*)* @tc3589x_keypad_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc3589x_keypad_platform_data* @tc3589x_keypad_of_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.tc3589x_keypad_platform_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.tc3589x_keypad_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = load %struct.device_node*, %struct.device_node** %4, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.tc3589x_keypad_platform_data* @ERR_PTR(i32 %17)
  store %struct.tc3589x_keypad_platform_data* %18, %struct.tc3589x_keypad_platform_data** %2, align 8
  br label %127

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.tc3589x_keypad_platform_data* @devm_kzalloc(%struct.device* %20, i32 40, i32 %21)
  store %struct.tc3589x_keypad_platform_data* %22, %struct.tc3589x_keypad_platform_data** %5, align 8
  %23 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %24 = icmp ne %struct.tc3589x_keypad_platform_data* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.tc3589x_keypad_platform_data* @ERR_PTR(i32 %27)
  store %struct.tc3589x_keypad_platform_data* %28, %struct.tc3589x_keypad_platform_data** %2, align 8
  br label %127

29:                                               ; preds = %19
  %30 = load %struct.device_node*, %struct.device_node** %4, align 8
  %31 = call i32 @of_property_read_u32(%struct.device_node* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %6)
  %32 = load %struct.device_node*, %struct.device_node** %4, align 8
  %33 = call i32 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %39 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %45 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %47 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %29
  %51 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %52 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %57 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TC_KPD_ROWS, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %63 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TC_KPD_COLUMNS, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61, %55, %50, %29
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %70 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %73 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %71, i64 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  %78 = call %struct.tc3589x_keypad_platform_data* @ERR_PTR(i32 %77)
  store %struct.tc3589x_keypad_platform_data* %78, %struct.tc3589x_keypad_platform_data** %2, align 8
  br label %127

79:                                               ; preds = %61
  %80 = load %struct.device_node*, %struct.device_node** %4, align 8
  %81 = call i32 @of_get_property(%struct.device_node* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load %struct.device*, %struct.device** %3, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @ENOENT, align 4
  %87 = sub nsw i32 0, %86
  %88 = call %struct.tc3589x_keypad_platform_data* @ERR_PTR(i32 %87)
  store %struct.tc3589x_keypad_platform_data* %88, %struct.tc3589x_keypad_platform_data** %2, align 8
  br label %127

89:                                               ; preds = %79
  %90 = load %struct.device_node*, %struct.device_node** %4, align 8
  %91 = call i64 @of_property_read_bool(%struct.device_node* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %93 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %92, i32 0, i32 6
  store i64 %91, i64* %93, align 8
  %94 = load %struct.device_node*, %struct.device_node** %4, align 8
  %95 = call i64 @of_property_read_bool(%struct.device_node* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load %struct.device_node*, %struct.device_node** %4, align 8
  %99 = call i64 @of_property_read_bool(%struct.device_node* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %97, %89
  %102 = phi i1 [ true, %89 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %105 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.device_node*, %struct.device_node** %4, align 8
  %107 = call i32 @of_property_read_u32(%struct.device_node* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load i32, i32* %8, align 4
  %112 = mul nsw i32 %111, 16
  %113 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %114 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  br label %119

115:                                              ; preds = %101
  %116 = load i32, i32* @TC_KPD_DEBOUNCE_PERIOD, align 4
  %117 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %118 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i32, i32* @TC_KPD_SETTLE_TIME, align 4
  %121 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %122 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %124 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  %125 = getelementptr inbounds %struct.tc3589x_keypad_platform_data, %struct.tc3589x_keypad_platform_data* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %5, align 8
  store %struct.tc3589x_keypad_platform_data* %126, %struct.tc3589x_keypad_platform_data** %2, align 8
  br label %127

127:                                              ; preds = %119, %83, %67, %25, %15
  %128 = load %struct.tc3589x_keypad_platform_data*, %struct.tc3589x_keypad_platform_data** %2, align 8
  ret %struct.tc3589x_keypad_platform_data* %128
}

declare dso_local %struct.tc3589x_keypad_platform_data* @ERR_PTR(i32) #1

declare dso_local %struct.tc3589x_keypad_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
