; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-plantronics.c_plantronics_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-plantronics.c_plantronics_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i64 }
%struct.hid_usage = type { i32 }

@HID_GD_JOYSTICK = common dso_local global i64 0, align 8
@HID_USAGE_PAGE = common dso_local global i64 0, align 8
@PLT_ALLOW_CONSUMER = common dso_local global i64 0, align 8
@HID_USAGE = common dso_local global i64 0, align 8
@PLT_BASIC_TELEPHONY = common dso_local global i64 0, align 8
@PLT_BASIC_EXCEPTION = common dso_local global i64 0, align 8
@KEY_VOLUMEUP = common dso_local global i16 0, align 2
@KEY_VOLUMEDOWN = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [38 x i8] c"usage: %08x (appl: %08x) - defaulted\0A\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"usage: %08x (appl: %08x) - mapped to key %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @plantronics_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plantronics_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i16, align 2
  %15 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = call i64 @hid_get_drvdata(%struct.hid_device* %16)
  store i64 %17, i64* %15, align 8
  %18 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %19 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HID_GD_JOYSTICK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %81

24:                                               ; preds = %6
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* @HID_USAGE_PAGE, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %42, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %15, align 8
  switch i64 %30, label %36 [
    i64 128, label %31
  ]

31:                                               ; preds = %29
  %32 = load i64, i64* @PLT_ALLOW_CONSUMER, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %81

35:                                               ; preds = %31
  br label %80

36:                                               ; preds = %29
  %37 = load i64, i64* @PLT_ALLOW_CONSUMER, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %81

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40
  br label %79

42:                                               ; preds = %24
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @HID_USAGE, align 8
  %45 = and i64 %43, %44
  %46 = load i64, i64* @PLT_BASIC_TELEPHONY, align 8
  %47 = icmp uge i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* @HID_USAGE, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* @PLT_BASIC_EXCEPTION, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i64, i64* @PLT_ALLOW_CONSUMER, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %81

58:                                               ; preds = %54
  br label %78

59:                                               ; preds = %48, %42
  %60 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %61 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %15, align 8
  %64 = xor i64 %62, %63
  %65 = load i64, i64* @HID_USAGE_PAGE, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %59
  %69 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %70 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %76 [
    i32 131, label %72
    i32 129, label %72
    i32 132, label %74
    i32 130, label %74
  ]

72:                                               ; preds = %68, %68
  %73 = load i16, i16* @KEY_VOLUMEUP, align 2
  store i16 %73, i16* %14, align 2
  br label %90

74:                                               ; preds = %68, %68
  %75 = load i16, i16* @KEY_VOLUMEDOWN, align 2
  store i16 %75, i16* %14, align 2
  br label %90

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %59
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %41
  br label %80

80:                                               ; preds = %79, %35
  store i32 -1, i32* %7, align 4
  br label %108

81:                                               ; preds = %57, %39, %34, %23
  %82 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %83 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %84 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %87 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.hid_device*, i8*, i32, i64, ...) @hid_dbg(%struct.hid_device* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %85, i64 %88)
  store i32 0, i32* %7, align 4
  br label %108

90:                                               ; preds = %74, %72
  %91 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %92 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %93 = load i64**, i64*** %12, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* @EV_KEY, align 4
  %96 = load i16, i16* %14, align 2
  %97 = call i32 @hid_map_usage_clear(%struct.hid_input* %91, %struct.hid_usage* %92, i64** %93, i32* %94, i32 %95, i16 zeroext %96)
  %98 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %99 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %100 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %103 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i16, i16* %14, align 2
  %106 = zext i16 %105 to i32
  %107 = call i32 (%struct.hid_device*, i8*, i32, i64, ...) @hid_dbg(%struct.hid_device* %98, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %101, i64 %104, i32 %106)
  store i32 1, i32* %7, align 4
  br label %108

108:                                              ; preds = %90, %81, %80
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i32, i64, ...) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
