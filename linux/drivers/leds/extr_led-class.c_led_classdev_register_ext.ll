; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_led-class.c_led_classdev_register_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_led-class.c_led_classdev_register_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.led_classdev = type { i8*, i32, i32, i32, i64, i32, i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.led_init_data = type { i64, i32, i64 }

@LED_MAX_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Mandatory device name is missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@leds_class = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Led %s renamed to %s due to name collision\00", align 1
@LED_BRIGHT_HW_CHANGED = common dso_local global i32 0, align 4
@leds_list_lock = common dso_local global i32 0, align 4
@leds_list = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Registered led device: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @led_classdev_register_ext(%struct.device* %0, %struct.led_classdev* %1, %struct.led_init_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.led_classdev*, align 8
  %7 = alloca %struct.led_init_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.led_classdev* %1, %struct.led_classdev** %6, align 8
  store %struct.led_init_data* %2, %struct.led_init_data** %7, align 8
  %14 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @LED_MAX_NAME_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i8* %17, i8** %11, align 8
  %21 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %22 = icmp ne %struct.led_init_data* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %3
  %24 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %25 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %30 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

38:                                               ; preds = %28, %23
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %41 = call i32 @led_compose_name(%struct.device* %39, %struct.led_init_data* %40, i8* %17)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

46:                                               ; preds = %38
  br label %51

47:                                               ; preds = %3
  %48 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %49 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %11, align 8
  br label %51

51:                                               ; preds = %47, %46
  %52 = load i8*, i8** %11, align 8
  %53 = trunc i64 %19 to i32
  %54 = call i32 @led_classdev_next_name(i8* %52, i8* %20, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

59:                                               ; preds = %51
  %60 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %61 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %60, i32 0, i32 3
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %64 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %63, i32 0, i32 3
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load i32, i32* @leds_class, align 4
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %69 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %70 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_6__* @device_create_with_groups(i32 %66, %struct.device* %67, i32 0, %struct.led_classdev* %68, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %73 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %74 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %73, i32 0, i32 8
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %74, align 8
  %75 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %76 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %75, i32 0, i32 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i64 @IS_ERR(%struct.TYPE_6__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %59
  %81 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %82 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %81, i32 0, i32 3
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %85 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %84, i32 0, i32 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @PTR_ERR(%struct.TYPE_6__* %86)
  store i32 %87, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

88:                                               ; preds = %59
  %89 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %90 = icmp ne %struct.led_init_data* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %93 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.led_init_data*, %struct.led_init_data** %7, align 8
  %98 = getelementptr inbounds %struct.led_init_data, %struct.led_init_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %101 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %100, i32 0, i32 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i64 %99, i64* %103, align 8
  br label %104

104:                                              ; preds = %96, %91, %88
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %110 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %113 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %112, i32 0, i32 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = call i32 @dev_name(%struct.TYPE_6__* %114)
  %116 = call i32 @dev_warn(%struct.device* %108, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %111, i32 %115)
  br label %117

117:                                              ; preds = %107, %104
  %118 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %119 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @LED_BRIGHT_HW_CHANGED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %117
  %125 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %126 = call i32 @led_add_brightness_hw_changed(%struct.led_classdev* %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %124
  %130 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %131 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %130, i32 0, i32 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = call i32 @device_unregister(%struct.TYPE_6__* %132)
  %134 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %135 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %134, i32 0, i32 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %135, align 8
  %136 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %137 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %136, i32 0, i32 3
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %117
  %142 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %143 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %142, i32 0, i32 7
  store i64 0, i64* %143, align 8
  %144 = call i32 @down_write(i32* @leds_list_lock)
  %145 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %146 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %145, i32 0, i32 5
  %147 = call i32 @list_add_tail(i32* %146, i32* @leds_list)
  %148 = call i32 @up_write(i32* @leds_list_lock)
  %149 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %150 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %141
  %154 = load i64, i64* @LED_FULL, align 8
  %155 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %156 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %155, i32 0, i32 4
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %141
  %158 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %159 = call i32 @led_update_brightness(%struct.led_classdev* %158)
  %160 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %161 = call i32 @led_init_core(%struct.led_classdev* %160)
  %162 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %163 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %162, i32 0, i32 3
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %167 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @dev_dbg(%struct.device* %165, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %168)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %170

170:                                              ; preds = %157, %129, %80, %57, %44, %33
  %171 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %171)
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @led_compose_name(%struct.device*, %struct.led_init_data*, i8*) #2

declare dso_local i32 @led_classdev_next_name(i8*, i8*, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.TYPE_6__* @device_create_with_groups(i32, %struct.device*, i32, %struct.led_classdev*, i32, i8*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*, i32) #2

declare dso_local i32 @dev_name(%struct.TYPE_6__*) #2

declare dso_local i32 @led_add_brightness_hw_changed(%struct.led_classdev*) #2

declare dso_local i32 @device_unregister(%struct.TYPE_6__*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @list_add_tail(i32*, i32*) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @led_update_brightness(%struct.led_classdev*) #2

declare dso_local i32 @led_init_core(%struct.led_classdev*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
