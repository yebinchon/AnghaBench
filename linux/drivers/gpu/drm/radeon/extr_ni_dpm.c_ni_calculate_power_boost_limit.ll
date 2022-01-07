; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_calculate_power_boost_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_calculate_power_boost_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.ni_ps = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.evergreen_power_info = type { i32 }
%struct.ni_power_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.radeon_device*, %struct.radeon_ps*, i64)* @ni_calculate_power_boost_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ni_calculate_power_boost_limit(%struct.radeon_device* %0, %struct.radeon_ps* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ni_ps*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca %struct.ni_power_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %20 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %19)
  store %struct.ni_ps* %20, %struct.ni_ps** %8, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %22 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %21)
  store %struct.evergreen_power_info* %22, %struct.evergreen_power_info** %9, align 8
  %23 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %24 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %23)
  store %struct.ni_power_info* %24, %struct.ni_power_info** %10, align 8
  store i64 0, i64* %11, align 8
  %25 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %26 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %116

29:                                               ; preds = %3
  %30 = load %struct.ni_power_info*, %struct.ni_power_info** %10, align 8
  %31 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %116

34:                                               ; preds = %29
  %35 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %36 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %118

40:                                               ; preds = %34
  %41 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %42 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %43 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %42, i32 0, i32 0
  %44 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %45 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %48 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %41, i32* %43, i32 %54, i32* %13)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %40
  store i64 0, i64* %4, align 8
  br label %118

59:                                               ; preds = %40
  %60 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %61 = call i32 @ni_get_std_voltage_value(%struct.radeon_device* %60, i32* %13, i64* %14)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i64 0, i64* %4, align 8
  br label %118

65:                                               ; preds = %59
  %66 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %67 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %68 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %67, i32 0, i32 0
  %69 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %70 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.ni_ps*, %struct.ni_ps** %8, align 8
  %73 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ni_populate_voltage_value(%struct.radeon_device* %66, i32* %68, i32 %79, i32* %13)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  store i64 0, i64* %4, align 8
  br label %118

84:                                               ; preds = %65
  %85 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %86 = call i32 @ni_get_std_voltage_value(%struct.radeon_device* %85, i32* %13, i64* %15)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i64 0, i64* %4, align 8
  br label %118

90:                                               ; preds = %84
  %91 = load i64, i64* %7, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i64, i64* %14, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i64, i64* %14, align 8
  %96 = trunc i64 %95 to i32
  %97 = mul nsw i32 %94, %96
  %98 = mul nsw i32 %92, %97
  %99 = mul nsw i32 %98, 90
  store i32 %99, i32* %17, align 4
  %100 = load i64, i64* %15, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i64, i64* %15, align 8
  %103 = trunc i64 %102 to i32
  %104 = mul nsw i32 %101, %103
  %105 = mul nsw i32 %104, 100
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @div64_u64(i32 %106, i32 %107)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = ashr i32 %109, 32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %90
  store i64 0, i64* %4, align 8
  br label %118

113:                                              ; preds = %90
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %113, %29, %3
  %117 = load i64, i64* %11, align 8
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %116, %112, %89, %83, %64, %58, %39
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ni_populate_voltage_value(%struct.radeon_device*, i32*, i32, i32*) #1

declare dso_local i32 @ni_get_std_voltage_value(%struct.radeon_device*, i32*, i64*) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
