; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_input_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lg.c_lg_input_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_input = type { i32 }
%struct.hid_field = type { i32, i32 }
%struct.hid_usage = type { i64, i64 }
%struct.lg_drv_data = type { i32 }

@LG_BAD_RELATIVE_KEYS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i64 0, align 8
@HID_MAIN_ITEM_RELATIVE = common dso_local global i32 0, align 4
@LG_DUPLICATE_USAGES = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i64 0, align 8
@EV_ABS = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i64 0, align 8
@ABS_Y = common dso_local global i64 0, align 8
@ABS_Z = common dso_local global i64 0, align 8
@ABS_RZ = common dso_local global i64 0, align 8
@HID_GD_MULTIAXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_input*, %struct.hid_field*, %struct.hid_usage*, i64**, i32*)* @lg_input_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lg_input_mapped(%struct.hid_device* %0, %struct.hid_input* %1, %struct.hid_field* %2, %struct.hid_usage* %3, i64** %4, i32* %5) #0 {
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_input*, align 8
  %9 = alloca %struct.hid_field*, align 8
  %10 = alloca %struct.hid_usage*, align 8
  %11 = alloca i64**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.lg_drv_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.hid_input* %1, %struct.hid_input** %8, align 8
  store %struct.hid_field* %2, %struct.hid_field** %9, align 8
  store %struct.hid_usage* %3, %struct.hid_usage** %10, align 8
  store i64** %4, i64*** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %15 = call %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device* %14)
  store %struct.lg_drv_data* %15, %struct.lg_drv_data** %13, align 8
  %16 = load %struct.lg_drv_data*, %struct.lg_drv_data** %13, align 8
  %17 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LG_BAD_RELATIVE_KEYS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %6
  %23 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %24 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EV_KEY, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %30 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32, i32* @HID_MAIN_ITEM_RELATIVE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %39 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %28, %22, %6
  %43 = load %struct.lg_drv_data*, %struct.lg_drv_data** %13, align 8
  %44 = getelementptr inbounds %struct.lg_drv_data, %struct.lg_drv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @LG_DUPLICATE_USAGES, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %42
  %50 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %51 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EV_KEY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %57 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @EV_REL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %63 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EV_ABS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61, %55, %49
  %68 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %69 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64**, i64*** %11, align 8
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @clear_bit(i64 %70, i64* %72)
  br label %74

74:                                               ; preds = %67, %61, %42
  %75 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %76 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @EV_ABS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %74
  %81 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %82 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ABS_X, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %104, label %86

86:                                               ; preds = %80
  %87 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %88 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ABS_Y, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %104, label %92

92:                                               ; preds = %86
  %93 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %94 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ABS_Z, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load %struct.hid_usage*, %struct.hid_usage** %10, align 8
  %100 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ABS_RZ, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98, %92, %86, %80
  %105 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %106 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %112 [
    i32 135, label %108
    i32 128, label %108
    i32 129, label %108
    i32 131, label %108
    i32 134, label %108
    i32 138, label %108
    i32 137, label %108
    i32 139, label %108
    i32 136, label %108
    i32 130, label %108
    i32 133, label %108
    i32 132, label %108
  ]

108:                                              ; preds = %104, %104, %104, %104, %104, %104, %104, %104, %104, %104, %104, %104
  %109 = load i32, i32* @HID_GD_MULTIAXIS, align 4
  %110 = load %struct.hid_field*, %struct.hid_field** %9, align 8
  %111 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  br label %113

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %108
  br label %114

114:                                              ; preds = %113, %98, %74
  ret i32 0
}

declare dso_local %struct.lg_drv_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @clear_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
