; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-zydacron.c_zc_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-zydacron.c_zc_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.zc_device = type { i64*, i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_CONSUMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"zynacron input mapping event [0x%x]\0A\00", align 1
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_MODE = common dso_local global i32 0, align 4
@KEY_SCREEN = common dso_local global i32 0, align 4
@KEY_INFO = common dso_local global i32 0, align 4
@KEY_RADIO = common dso_local global i32 0, align 4
@KEY_PVR = common dso_local global i32 0, align 4
@KEY_TV = common dso_local global i32 0, align 4
@KEY_AUDIO = common dso_local global i32 0, align 4
@KEY_AUX = common dso_local global i32 0, align 4
@KEY_VIDEO = common dso_local global i32 0, align 4
@KEY_DVD = common dso_local global i32 0, align 4
@KEY_MENU = common dso_local global i32 0, align 4
@KEY_TEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @zc_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zc_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.zc_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = call %struct.zc_device* @hid_get_drvdata(%struct.hid_device* %16)
  store %struct.zc_device* %17, %struct.zc_device** %15, align 8
  %18 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %19 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.zc_device*, %struct.zc_device** %15, align 8
  %22 = getelementptr inbounds %struct.zc_device, %struct.zc_device* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HID_USAGE_PAGE, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @HID_UP_CONSUMER, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %95

31:                                               ; preds = %6
  %32 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %33 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HID_USAGE, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @dbg_hid(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %39 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HID_USAGE, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %79 [
    i32 16, label %43
    i32 48, label %46
    i32 112, label %49
    i32 4, label %52
    i32 13, label %55
    i32 37, label %58
    i32 71, label %61
    i32 73, label %64
    i32 74, label %67
    i32 72, label %70
    i32 36, label %73
    i32 50, label %76
  ]

43:                                               ; preds = %31
  %44 = load i32, i32* @KEY_MODE, align 4
  %45 = call i32 @zc_map_key_clear(i32 %44)
  br label %80

46:                                               ; preds = %31
  %47 = load i32, i32* @KEY_SCREEN, align 4
  %48 = call i32 @zc_map_key_clear(i32 %47)
  br label %80

49:                                               ; preds = %31
  %50 = load i32, i32* @KEY_INFO, align 4
  %51 = call i32 @zc_map_key_clear(i32 %50)
  br label %80

52:                                               ; preds = %31
  %53 = load i32, i32* @KEY_RADIO, align 4
  %54 = call i32 @zc_map_key_clear(i32 %53)
  br label %80

55:                                               ; preds = %31
  %56 = load i32, i32* @KEY_PVR, align 4
  %57 = call i32 @zc_map_key_clear(i32 %56)
  br label %80

58:                                               ; preds = %31
  %59 = load i32, i32* @KEY_TV, align 4
  %60 = call i32 @zc_map_key_clear(i32 %59)
  br label %80

61:                                               ; preds = %31
  %62 = load i32, i32* @KEY_AUDIO, align 4
  %63 = call i32 @zc_map_key_clear(i32 %62)
  br label %80

64:                                               ; preds = %31
  %65 = load i32, i32* @KEY_AUX, align 4
  %66 = call i32 @zc_map_key_clear(i32 %65)
  br label %80

67:                                               ; preds = %31
  %68 = load i32, i32* @KEY_VIDEO, align 4
  %69 = call i32 @zc_map_key_clear(i32 %68)
  br label %80

70:                                               ; preds = %31
  %71 = load i32, i32* @KEY_DVD, align 4
  %72 = call i32 @zc_map_key_clear(i32 %71)
  br label %80

73:                                               ; preds = %31
  %74 = load i32, i32* @KEY_MENU, align 4
  %75 = call i32 @zc_map_key_clear(i32 %74)
  br label %80

76:                                               ; preds = %31
  %77 = load i32, i32* @KEY_TEXT, align 4
  %78 = call i32 @zc_map_key_clear(i32 %77)
  br label %80

79:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %95

80:                                               ; preds = %76, %73, %70, %67, %64, %61, %58, %55, %52, %49, %46, %43
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %91, %80
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load %struct.zc_device*, %struct.zc_device** %15, align 8
  %86 = getelementptr inbounds %struct.zc_device, %struct.zc_device* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %81

94:                                               ; preds = %81
  store i32 1, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %79, %30
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local %struct.zc_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @zc_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
