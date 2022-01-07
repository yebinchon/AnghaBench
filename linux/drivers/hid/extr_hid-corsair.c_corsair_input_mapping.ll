; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_corsair_input_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_corsair_input_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_KEYBOARD = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@corsair_gkey_map = common dso_local global i32* null, align 8
@CORSAIR_USAGE_SPECIAL_MIN = common dso_local global i32 0, align 4
@CORSAIR_USAGE_SPECIAL_MAX = common dso_local global i32 0, align 4
@corsair_record_keycodes = common dso_local global i32* null, align 8
@corsair_profile_keycodes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @corsair_input_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corsair_input_mapping(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_device*, align 8
  %9 = alloca %struct.hid_input*, align 8
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca %struct.hid_usage*, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %8, align 8
  store %struct.hid_input* %1, %struct.hid_input** %9, align 8
  store %struct.hid_field* %2, %struct.hid_field** %10, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %11, align 8
  store i64** %4, i64*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %16 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HID_USAGE_PAGE, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @HID_UP_KEYBOARD, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %119

23:                                               ; preds = %6
  %24 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %25 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @HID_USAGE, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @corsair_usage_to_gkey(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %34 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %35 = load i64**, i64*** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* @EV_KEY, align 4
  %38 = load i32*, i32** @corsair_gkey_map, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @hid_map_usage_clear(%struct.hid_input* %33, %struct.hid_usage* %34, i64** %35, i32* %36, i32 %37, i32 %43)
  store i32 1, i32* %7, align 4
  br label %119

45:                                               ; preds = %23
  %46 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %47 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HID_USAGE, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @CORSAIR_USAGE_SPECIAL_MIN, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %118

53:                                               ; preds = %45
  %54 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %55 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @HID_USAGE, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @CORSAIR_USAGE_SPECIAL_MAX, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %118

61:                                               ; preds = %53
  %62 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %63 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HID_USAGE, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %117 [
    i32 129, label %67
    i32 128, label %77
    i32 132, label %87
    i32 131, label %97
    i32 130, label %107
  ]

67:                                               ; preds = %61
  %68 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %69 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %70 = load i64**, i64*** %12, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* @EV_KEY, align 4
  %73 = load i32*, i32** @corsair_record_keycodes, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @hid_map_usage_clear(%struct.hid_input* %68, %struct.hid_usage* %69, i64** %70, i32* %71, i32 %72, i32 %75)
  store i32 1, i32* %7, align 4
  br label %119

77:                                               ; preds = %61
  %78 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %79 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %80 = load i64**, i64*** %12, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* @EV_KEY, align 4
  %83 = load i32*, i32** @corsair_record_keycodes, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @hid_map_usage_clear(%struct.hid_input* %78, %struct.hid_usage* %79, i64** %80, i32* %81, i32 %82, i32 %85)
  store i32 1, i32* %7, align 4
  br label %119

87:                                               ; preds = %61
  %88 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %89 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %90 = load i64**, i64*** %12, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* @EV_KEY, align 4
  %93 = load i32*, i32** @corsair_profile_keycodes, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hid_map_usage_clear(%struct.hid_input* %88, %struct.hid_usage* %89, i64** %90, i32* %91, i32 %92, i32 %95)
  store i32 1, i32* %7, align 4
  br label %119

97:                                               ; preds = %61
  %98 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %99 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %100 = load i64**, i64*** %12, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* @EV_KEY, align 4
  %103 = load i32*, i32** @corsair_profile_keycodes, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @hid_map_usage_clear(%struct.hid_input* %98, %struct.hid_usage* %99, i64** %100, i32* %101, i32 %102, i32 %105)
  store i32 1, i32* %7, align 4
  br label %119

107:                                              ; preds = %61
  %108 = load %struct.hid_input*, %struct.hid_input** %9, align 8
  %109 = load %struct.hid_usage*, %struct.hid_usage** %11, align 8
  %110 = load i64**, i64*** %12, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* @EV_KEY, align 4
  %113 = load i32*, i32** @corsair_profile_keycodes, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @hid_map_usage_clear(%struct.hid_input* %108, %struct.hid_usage* %109, i64** %110, i32* %111, i32 %112, i32 %115)
  store i32 1, i32* %7, align 4
  br label %119

117:                                              ; preds = %61
  store i32 -1, i32* %7, align 4
  br label %119

118:                                              ; preds = %53, %45
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %117, %107, %97, %87, %77, %67, %32, %22
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @corsair_usage_to_gkey(i32) #1

declare dso_local i32 @hid_map_usage_clear(%struct.hid_input*, %struct.hid_usage*, i64**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
