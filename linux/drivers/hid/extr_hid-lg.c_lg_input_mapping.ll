; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i64 }
%struct.hid_usage = type { i32 }
%struct.lg_drv_data = type { i32 }

@lg_input_mapping.e_keymap = internal constant [80 x i32] [i32 0, i32 216, i32 0, i32 213, i32 175, i32 156, i32 0, i32 0, i32 0, i32 0, i32 144, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 212, i32 174, i32 167, i32 152, i32 161, i32 112, i32 0, i32 0, i32 0, i32 154, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 183, i32 184, i32 185, i32 186, i32 187, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 0, i32 0, i32 0], align 16
@USB_DEVICE_ID_LOGITECH_RECEIVER = common dso_local global i64 0, align 8
@USB_DEVICE_ID_DINOVO_MINI = common dso_local global i64 0, align 8
@LG_WIRELESS = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@HID_GD_MOUSE = common dso_local global i64 0, align 8
@LG_IGNORE_DOUBLED_WHEEL = common dso_local global i32 0, align 4
@LG_EXPANDED_KEYMAP = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @lg_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.lg_drv_data*, align 8
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %16)
  store %struct.lg_drv_data* %17, %struct.lg_drv_data** %14, align 8
  %18 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %19 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 4
  %21 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USB_DEVICE_ID_LOGITECH_RECEIVER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %6
  %27 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %28 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %29 = load i64**, i64*** %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i64 @lg_ultrax_remote_mapping(%struct.hid_input* %27, %struct.hid_usage* %28, i64** %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %124

34:                                               ; preds = %26, %6
  %35 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %36 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_DEVICE_ID_DINOVO_MINI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %42 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %43 = load i64**, i64*** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i64 @lg_dinovo_mapping(%struct.hid_input* %41, %struct.hid_usage* %42, i64** %43, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %124

48:                                               ; preds = %40, %34
  %49 = load %struct.lg_drv_data*, %struct.lg_drv_data** %14, align 8
  %50 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @LG_WIRELESS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %57 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %58 = load i64**, i64*** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 @lg_wireless_mapping(%struct.hid_input* %56, %struct.hid_usage* %57, i64** %58, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %124

63:                                               ; preds = %55, %48
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @HID_USAGE_PAGE, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @HID_UP_BUTTON, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %124

70:                                               ; preds = %63
  %71 = load i32, i32* @HID_USAGE, align 4
  %72 = load i32, i32* %15, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %75 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HID_GD_MOUSE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %70
  %80 = load %struct.lg_drv_data*, %struct.lg_drv_data** %14, align 8
  %81 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LG_IGNORE_DOUBLED_WHEEL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 %87, 7
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %15, align 4
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %92, label %93

92:                                               ; preds = %89, %86
  store i32 -1, i32* %7, align 4
  br label %124

93:                                               ; preds = %89, %79
  br label %123

94:                                               ; preds = %70
  %95 = load %struct.lg_drv_data*, %struct.lg_drv_data** %14, align 8
  %96 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @LG_EXPANDED_KEYMAP, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %122

101:                                              ; preds = %94
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([80 x i32], [80 x i32]* @lg_input_mapping.e_keymap, i64 0, i64 0))
  %104 = icmp ult i32 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %101
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [80 x i32], [80 x i32]* @lg_input_mapping.e_keymap, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %113 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %114 = load i64**, i64*** %12, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* @EV_KEY, align 4
  %117 = load i32, i32* %15, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [80 x i32], [80 x i32]* @lg_input_mapping.e_keymap, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @hid_map_usage(%struct.hid_input* %112, %struct.hid_usage* %113, i64** %114, i32* %115, i32 %116, i32 %120)
  store i32 1, i32* %7, align 4
  br label %124

122:                                              ; preds = %105, %101, %94
  br label %123

123:                                              ; preds = %122, %93
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %111, %92, %69, %62, %47, %33
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @lg_ultrax_remote_mapping(%struct.hid_input*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i64 @lg_dinovo_mapping(%struct.hid_input*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i64 @lg_wireless_mapping(%struct.hid_input*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hid_map_usage(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
