; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-chicony.c_ch_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-chicony.c_ch_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@BTN_1 = common dso_local global i32 0, align 4
@BTN_2 = common dso_local global i32 0, align 4
@BTN_3 = common dso_local global i32 0, align 4
@BTN_4 = common dso_local global i32 0, align 4
@BTN_5 = common dso_local global i32 0, align 4
@BTN_6 = common dso_local global i32 0, align 4
@BTN_7 = common dso_local global i32 0, align 4
@BTN_8 = common dso_local global i32 0, align 4
@BTN_9 = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_B = common dso_local global i32 0, align 4
@KEY_WLAN = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@KEY_DISPLAY_OFF = common dso_local global i32 0, align 4
@KEY_CAMERA = common dso_local global i32 0, align 4
@KEY_PROG1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @ch_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %15 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HID_USAGE_PAGE, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %88

22:                                               ; preds = %6
  %23 = load i32, i32* @EV_REP, align 4
  %24 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %25 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_bit(i32 %23, i32 %28)
  %30 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %31 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HID_USAGE, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %86 [
    i32 65281, label %35
    i32 65282, label %38
    i32 65283, label %41
    i32 65284, label %44
    i32 65285, label %47
    i32 65286, label %50
    i32 65287, label %53
    i32 65288, label %56
    i32 65289, label %59
    i32 65290, label %62
    i32 65291, label %65
    i32 241, label %68
    i32 242, label %71
    i32 243, label %74
    i32 244, label %77
    i32 247, label %80
    i32 248, label %83
  ]

35:                                               ; preds = %22
  %36 = load i32, i32* @BTN_1, align 4
  %37 = call i32 @ch_map_key_clear(i32 %36)
  br label %87

38:                                               ; preds = %22
  %39 = load i32, i32* @BTN_2, align 4
  %40 = call i32 @ch_map_key_clear(i32 %39)
  br label %87

41:                                               ; preds = %22
  %42 = load i32, i32* @BTN_3, align 4
  %43 = call i32 @ch_map_key_clear(i32 %42)
  br label %87

44:                                               ; preds = %22
  %45 = load i32, i32* @BTN_4, align 4
  %46 = call i32 @ch_map_key_clear(i32 %45)
  br label %87

47:                                               ; preds = %22
  %48 = load i32, i32* @BTN_5, align 4
  %49 = call i32 @ch_map_key_clear(i32 %48)
  br label %87

50:                                               ; preds = %22
  %51 = load i32, i32* @BTN_6, align 4
  %52 = call i32 @ch_map_key_clear(i32 %51)
  br label %87

53:                                               ; preds = %22
  %54 = load i32, i32* @BTN_7, align 4
  %55 = call i32 @ch_map_key_clear(i32 %54)
  br label %87

56:                                               ; preds = %22
  %57 = load i32, i32* @BTN_8, align 4
  %58 = call i32 @ch_map_key_clear(i32 %57)
  br label %87

59:                                               ; preds = %22
  %60 = load i32, i32* @BTN_9, align 4
  %61 = call i32 @ch_map_key_clear(i32 %60)
  br label %87

62:                                               ; preds = %22
  %63 = load i32, i32* @BTN_A, align 4
  %64 = call i32 @ch_map_key_clear(i32 %63)
  br label %87

65:                                               ; preds = %22
  %66 = load i32, i32* @BTN_B, align 4
  %67 = call i32 @ch_map_key_clear(i32 %66)
  br label %87

68:                                               ; preds = %22
  %69 = load i32, i32* @KEY_WLAN, align 4
  %70 = call i32 @ch_map_key_clear(i32 %69)
  br label %87

71:                                               ; preds = %22
  %72 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  %73 = call i32 @ch_map_key_clear(i32 %72)
  br label %87

74:                                               ; preds = %22
  %75 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  %76 = call i32 @ch_map_key_clear(i32 %75)
  br label %87

77:                                               ; preds = %22
  %78 = load i32, i32* @KEY_DISPLAY_OFF, align 4
  %79 = call i32 @ch_map_key_clear(i32 %78)
  br label %87

80:                                               ; preds = %22
  %81 = load i32, i32* @KEY_CAMERA, align 4
  %82 = call i32 @ch_map_key_clear(i32 %81)
  br label %87

83:                                               ; preds = %22
  %84 = load i32, i32* @KEY_PROG1, align 4
  %85 = call i32 @ch_map_key_clear(i32 %84)
  br label %87

86:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %88

87:                                               ; preds = %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %86, %21
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ch_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
