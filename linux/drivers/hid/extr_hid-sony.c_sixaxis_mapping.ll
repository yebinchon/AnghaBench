; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sixaxis_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sony.c_sixaxis_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32, i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_BUTTON = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@sixaxis_keymap = common dso_local global i32* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@HID_GD_POINTER = common dso_local global i32 0, align 4
@HID_GD_Z = common dso_local global i32 0, align 4
@HID_GD_RZ = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@HID_UP_GENDESK = common dso_local global i32 0, align 4
@sixaxis_absmap = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @sixaxis_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sixaxis_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %17 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HID_USAGE_PAGE, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @HID_UP_BUTTON, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %6
  %24 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %25 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HID_USAGE, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** @sixaxis_keymap, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp uge i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %7, align 4
  br label %112

34:                                               ; preds = %23
  %35 = load i32*, i32** @sixaxis_keymap, align 8
  %36 = load i32, i32* %14, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %41 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %42 = load i64**, i64*** %12, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @EV_KEY, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @hid_map_usage_clear(%struct.hid_input* %40, %struct.hid_usage* %41, i64** %42, i32* %43, i32 %44, i32 %45)
  store i32 1, i32* %7, align 4
  br label %112

47:                                               ; preds = %6
  %48 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %49 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HID_GD_POINTER, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %47
  %54 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %55 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %65 [
    i32 8, label %57
    i32 9, label %61
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @HID_GD_Z, align 4
  %59 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %60 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load i32, i32* @HID_GD_RZ, align 4
  %63 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %64 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %66

65:                                               ; preds = %53
  store i32 -1, i32* %7, align 4
  br label %112

66:                                               ; preds = %61, %57
  %67 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %68 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %69 = load i64**, i64*** %12, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* @EV_ABS, align 4
  %72 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %73 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  %76 = call i32 @hid_map_usage_clear(%struct.hid_input* %67, %struct.hid_usage* %68, i64** %69, i32* %70, i32 %71, i32 %75)
  store i32 1, i32* %7, align 4
  br label %112

77:                                               ; preds = %47
  %78 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %79 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HID_USAGE_PAGE, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @HID_UP_GENDESK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %109

85:                                               ; preds = %77
  %86 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %87 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HID_USAGE, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32*, i32** @sixaxis_absmap, align 8
  %93 = call i32 @ARRAY_SIZE(i32* %92)
  %94 = icmp uge i32 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 -1, i32* %7, align 4
  br label %112

96:                                               ; preds = %85
  %97 = load i32*, i32** @sixaxis_absmap, align 8
  %98 = load i32, i32* %15, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %15, align 4
  %102 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %103 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %104 = load i64**, i64*** %12, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* @EV_ABS, align 4
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @hid_map_usage_clear(%struct.hid_input* %102, %struct.hid_usage* %103, i64** %104, i32* %105, i32 %106, i32 %107)
  store i32 1, i32* %7, align 4
  br label %112

109:                                              ; preds = %77
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  store i32 -1, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %96, %95, %66, %65, %34, %33
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
