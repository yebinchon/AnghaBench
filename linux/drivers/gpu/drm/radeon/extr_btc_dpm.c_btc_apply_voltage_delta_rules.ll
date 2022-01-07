; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_apply_voltage_delta_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_btc_dpm.c_btc_apply_voltage_delta_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.evergreen_power_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_apply_voltage_delta_rules(%struct.radeon_device* %0, i64 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.evergreen_power_info*, align 8
  %12 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %13)
  store %struct.evergreen_power_info* %14, %struct.evergreen_power_info** %11, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 0, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i64*, i64** %10, align 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 0, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  br label %103

23:                                               ; preds = %18
  %24 = load i64*, i64** %9, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %31, %33
  %35 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %34, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %29
  %43 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %44 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %43, i32 0, i32 1
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %46, %52
  %54 = call i64 @btc_find_voltage(i32* %44, i64 %53)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i64, i64* %12, align 8
  br label %62

60:                                               ; preds = %42
  %61 = load i64, i64* %8, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %64 = load i64*, i64** %10, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %29
  br label %103

66:                                               ; preds = %23
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %9, align 8
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %68, %70
  %72 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %71, %77
  br i1 %78, label %79, label %102

79:                                               ; preds = %66
  %80 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %11, align 8
  %81 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %80, i32 0, i32 0
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %85 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %83, %89
  %91 = call i64 @btc_find_voltage(i32* %81, i64 %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %79
  %96 = load i64, i64* %12, align 8
  br label %99

97:                                               ; preds = %79
  %98 = load i64, i64* %7, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i64 [ %96, %95 ], [ %98, %97 ]
  %101 = load i64*, i64** %9, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %66
  br label %103

103:                                              ; preds = %22, %102, %65
  ret void
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @btc_find_voltage(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
