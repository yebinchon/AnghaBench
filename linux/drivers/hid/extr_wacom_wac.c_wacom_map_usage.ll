; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_map_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_map_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.hid_usage = type { i32, i8*, i32 }
%struct.hid_field = type { i32, i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.wacom_features }
%struct.wacom_features = type { i64, i64, i64, i64 }

@HID_DG_TWIST = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@HID_GD_X = common dso_local global i32 0, align 4
@HID_GD_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.hid_usage*, %struct.hid_field*, i32, i8*, i32)* @wacom_map_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_map_usage(%struct.input_dev* %0, %struct.hid_usage* %1, %struct.hid_field* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wacom*, align 8
  %14 = alloca %struct.wacom_wac*, align 8
  %15 = alloca %struct.wacom_features*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %7, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %8, align 8
  store %struct.hid_field* %2, %struct.hid_field** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %21 = call %struct.wacom* @input_get_drvdata(%struct.input_dev* %20)
  store %struct.wacom* %21, %struct.wacom** %13, align 8
  %22 = load %struct.wacom*, %struct.wacom** %13, align 8
  %23 = getelementptr inbounds %struct.wacom, %struct.wacom* %22, i32 0, i32 0
  store %struct.wacom_wac* %23, %struct.wacom_wac** %14, align 8
  %24 = load %struct.wacom_wac*, %struct.wacom_wac** %14, align 8
  %25 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %24, i32 0, i32 0
  store %struct.wacom_features* %25, %struct.wacom_features** %15, align 8
  %26 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %27 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %30 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  %32 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %33 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @wacom_equivalent_usage(i32 %34)
  store i32 %35, i32* %18, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @HID_DG_TWIST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %6
  %42 = load i32, i32* @ABS_RZ, align 4
  store i32 %42, i32* %19, align 4
  br label %43

43:                                               ; preds = %41, %6
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* @HID_GD_X, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.wacom_features*, %struct.wacom_features** %15, align 8
  %49 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %16, align 4
  %55 = load %struct.wacom_features*, %struct.wacom_features** %15, align 8
  %56 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %47, %43
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @HID_GD_Y, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.wacom_features*, %struct.wacom_features** %15, align 8
  %68 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %16, align 4
  %74 = load %struct.wacom_features*, %struct.wacom_features** %15, align 8
  %75 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = sub nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %66, %62
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %84 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %87 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @set_bit(i32 %88, i32 %91)
  %93 = load i32, i32* %10, align 4
  switch i32 %93, label %119 [
    i32 131, label %94
    i32 130, label %107
    i32 129, label %111
    i32 128, label %115
  ]

94:                                               ; preds = %81
  %95 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @input_set_abs_params(%struct.input_dev* %95, i8* %96, i32 %97, i32 %98, i32 %99, i32 0)
  %101 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @hidinput_calc_abs_res(%struct.hid_field* %103, i32 %104)
  %106 = call i32 @input_abs_set_res(%struct.input_dev* %101, i8* %102, i32 %105)
  br label %119

107:                                              ; preds = %81
  %108 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = call i32 @input_set_capability(%struct.input_dev* %108, i32 130, i8* %109)
  br label %119

111:                                              ; preds = %81
  %112 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @input_set_capability(%struct.input_dev* %112, i32 129, i8* %113)
  br label %119

115:                                              ; preds = %81
  %116 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @input_set_capability(%struct.input_dev* %116, i32 128, i8* %117)
  br label %119

119:                                              ; preds = %81, %115, %111, %107, %94
  ret void
}

declare dso_local %struct.wacom* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @wacom_equivalent_usage(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i8*, i32) #1

declare dso_local i32 @hidinput_calc_abs_res(%struct.hid_field*, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
