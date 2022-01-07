; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sony_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32, i32 }
%struct.sony_sc = type { i32 }

@BUZZ_CONTROLLER = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@buzz_keymap = common dso_local global i32* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@PS3REMOTE = common dso_local global i32 0, align 4
@NAVIGATION_CONTROLLER = common dso_local global i32 0, align 4
@SIXAXIS_CONTROLLER = common dso_local global i32 0, align 4
@DUALSHOCK4_CONTROLLER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @sony_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sony_sc*, align 8
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %17 = call %struct.sony_sc* @hid_get_drvdata(%struct.hid_device* %16)
  store %struct.sony_sc* %17, %struct.sony_sc** %14, align 8
  %18 = load %struct.sony_sc*, %struct.sony_sc** %14, align 8
  %19 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BUZZ_CONTROLLER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %6
  %25 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %26 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @HID_USAGE, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %31 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HID_USAGE_PAGE, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @HID_UP_BUTTON, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %128

38:                                               ; preds = %24
  %39 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %40 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %58 [
    i32 1, label %42
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = load i32*, i32** @buzz_keymap, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp uge i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 -1, i32* %7, align 4
  br label %128

48:                                               ; preds = %42
  %49 = load i32*, i32** @buzz_keymap, align 8
  %50 = load i32, i32* %15, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store i32 -1, i32* %7, align 4
  br label %128

57:                                               ; preds = %48
  br label %59

58:                                               ; preds = %38
  store i32 -1, i32* %7, align 4
  br label %128

59:                                               ; preds = %57
  %60 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %61 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %62 = load i64**, i64*** %12, align 8
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* @EV_KEY, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @hid_map_usage_clear(%struct.hid_input* %60, %struct.hid_usage* %61, i64** %62, i32* %63, i32 %64, i32 %65)
  store i32 1, i32* %7, align 4
  br label %128

67:                                               ; preds = %6
  %68 = load %struct.sony_sc*, %struct.sony_sc** %14, align 8
  %69 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PS3REMOTE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %76 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %77 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %78 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %79 = load i64**, i64*** %12, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i32 @ps3remote_mapping(%struct.hid_device* %75, %struct.hid_input* %76, %struct.hid_field* %77, %struct.hid_usage* %78, i64** %79, i32* %80)
  store i32 %81, i32* %7, align 4
  br label %128

82:                                               ; preds = %67
  %83 = load %struct.sony_sc*, %struct.sony_sc** %14, align 8
  %84 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NAVIGATION_CONTROLLER, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %91 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %92 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %93 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %94 = load i64**, i64*** %12, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @navigation_mapping(%struct.hid_device* %90, %struct.hid_input* %91, %struct.hid_field* %92, %struct.hid_usage* %93, i64** %94, i32* %95)
  store i32 %96, i32* %7, align 4
  br label %128

97:                                               ; preds = %82
  %98 = load %struct.sony_sc*, %struct.sony_sc** %14, align 8
  %99 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @SIXAXIS_CONTROLLER, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %106 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %107 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %108 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %109 = load i64**, i64*** %12, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = call i32 @sixaxis_mapping(%struct.hid_device* %105, %struct.hid_input* %106, %struct.hid_field* %107, %struct.hid_usage* %108, i64** %109, i32* %110)
  store i32 %111, i32* %7, align 4
  br label %128

112:                                              ; preds = %97
  %113 = load %struct.sony_sc*, %struct.sony_sc** %14, align 8
  %114 = getelementptr inbounds %struct.sony_sc, %struct.sony_sc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @DUALSHOCK4_CONTROLLER, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %112
  %120 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  %121 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %122 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %123 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %124 = load i64**, i64*** %12, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @ds4_mapping(%struct.hid_device* %120, %struct.hid_input* %121, %struct.hid_field* %122, %struct.hid_usage* %123, i64** %124, i32* %125)
  store i32 %126, i32* %7, align 4
  br label %128

127:                                              ; preds = %112
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %119, %104, %89, %74, %59, %58, %56, %47, %37
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local %struct.sony_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

declare dso_local i32 @ps3remote_mapping(%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i32 @navigation_mapping(%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i32 @sixaxis_mapping(%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*) #1

declare dso_local i32 @ds4_mapping(%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
