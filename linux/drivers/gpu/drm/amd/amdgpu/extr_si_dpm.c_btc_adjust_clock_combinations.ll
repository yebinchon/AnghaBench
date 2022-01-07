; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_btc_adjust_clock_combinations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_btc_adjust_clock_combinations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.amdgpu_clock_and_voltage_limits = type { i32, i32 }
%struct.rv7xx_pl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_clock_and_voltage_limits*, %struct.rv7xx_pl*)* @btc_adjust_clock_combinations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btc_adjust_clock_combinations(%struct.amdgpu_device* %0, %struct.amdgpu_clock_and_voltage_limits* %1, %struct.rv7xx_pl* %2) #0 {
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_clock_and_voltage_limits*, align 8
  %6 = alloca %struct.rv7xx_pl*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_clock_and_voltage_limits* %1, %struct.amdgpu_clock_and_voltage_limits** %5, align 8
  store %struct.rv7xx_pl* %2, %struct.rv7xx_pl** %6, align 8
  %7 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %8 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %13 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %3
  br label %118

17:                                               ; preds = %11
  %18 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %19 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %22 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %118

26:                                               ; preds = %17
  %27 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %28 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %31 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %26
  %35 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %36 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %39 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = add nsw i32 %37, %41
  %43 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %44 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sgt i32 %46, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %34
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %56 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %5, align 8
  %57 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %60 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = add nsw i32 %61, %68
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %69, %75
  %77 = call i32 @btc_get_valid_sclk(%struct.amdgpu_device* %55, i32 %58, i32 %76)
  %78 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %79 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %54, %34
  br label %118

81:                                               ; preds = %26
  %82 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %83 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %86 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %89, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %81
  %98 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %99 = load %struct.amdgpu_clock_and_voltage_limits*, %struct.amdgpu_clock_and_voltage_limits** %5, align 8
  %100 = getelementptr inbounds %struct.amdgpu_clock_and_voltage_limits, %struct.amdgpu_clock_and_voltage_limits* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %103 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %107 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %105, %111
  %113 = call i64 @btc_get_valid_mclk(%struct.amdgpu_device* %98, i32 %101, i64 %112)
  %114 = trunc i64 %113 to i32
  %115 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %6, align 8
  %116 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %97, %81
  br label %118

118:                                              ; preds = %16, %25, %117, %80
  ret void
}

declare dso_local i32 @btc_get_valid_sclk(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i64 @btc_get_valid_mclk(%struct.amdgpu_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
