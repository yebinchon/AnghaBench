; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_smc_vce_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_smc_vce_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.atom_clock_dividers = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@VOLTAGE_SCALE = common dso_local global i32 0, align 4
@COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_15__*)* @ci_populate_smc_vce_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_smc_vce_level(%struct.radeon_device* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atom_clock_dividers, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %121, %2
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %124

26:                                               ; preds = %20
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  store i32 %37, i32* %43, align 8
  %44 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @VOLTAGE_SCALE, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %71 = load i32, i32* @COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %70, i32 %71, i32 %78, i32 0, %struct.atom_clock_dividers* %7)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %26
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %126

84:                                               ; preds = %26
  %85 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %7, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  store i64 %86, i64* %92, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @cpu_to_be32(i32 %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i32 %100, i32* %106, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = load i64, i64* %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @cpu_to_be16(i32 %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  store i32 %114, i32* %120, align 8
  br label %121

121:                                              ; preds = %84
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %6, align 8
  br label %20

124:                                              ; preds = %20
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %82
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
