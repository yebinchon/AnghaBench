; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_smc_acp_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_smc_acp_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, i8* }
%struct.atom_clock_dividers = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.TYPE_15__*)* @ci_populate_smc_acp_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_smc_acp_level(%struct.radeon_device* %0, %struct.TYPE_15__* %1) #0 {
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
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %121, %2
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %124

28:                                               ; preds = %22
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  store i32 %39, i32* %45, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  store i32 %56, i32* %62, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %70 = load i32, i32* @COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %69, i32 %70, i32 %77, i32 0, %struct.atom_clock_dividers* %7)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %28
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %126

83:                                               ; preds = %28
  %84 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %7, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 3
  store i8* %86, i8** %92, align 8
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
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @cpu_to_be16(i32 %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %83
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %6, align 8
  br label %22

124:                                              ; preds = %22
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %124, %81
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
