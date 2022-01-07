; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_vce_state_table_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_vce_state_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.amd_vce_state = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@NUM_BITS_CLOCK_INFO_ARRAY_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i64, %struct.amd_vce_state*, i8**, i64*)* @get_vce_state_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vce_state_table_entry(%struct.pp_hwmgr* %0, i64 %1, %struct.amd_vce_state* %2, i8** %3, i64* %4) #0 {
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.amd_vce_state*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i16, align 2
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.amd_vce_state* %2, %struct.amd_vce_state** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64* %4, i64** %10, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %20 = call %struct.TYPE_16__* @get_powerplay_table(%struct.pp_hwmgr* %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %11, align 8
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %23 = call %struct.TYPE_14__* @get_vce_state_table(%struct.pp_hwmgr* %21, %struct.TYPE_16__* %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %12, align 8
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %26 = call zeroext i16 @get_vce_clock_info_array_offset(%struct.pp_hwmgr* %24, %struct.TYPE_16__* %25)
  store i16 %26, i16* %13, align 2
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %28 = ptrtoint %struct.TYPE_16__* %27 to i64
  %29 = load i16, i16* %13, align 2
  %30 = zext i16 %29 to i64
  %31 = add i64 %28, %30
  %32 = inttoptr i64 %31 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %14, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %34 = ptrtoint %struct.TYPE_16__* %33 to i64
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le16_to_cpu(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = add i64 %34, %39
  %41 = inttoptr i64 %40 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %15, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i64 %45
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %16, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %52
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %17, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 63
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %18, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* @NUM_BITS_CLOCK_INFO_ARRAY_INDEX, align 8
  %63 = trunc i64 %62 to i32
  %64 = ashr i32 %61, %63
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %10, align 8
  store i64 %65, i64* %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %70, 16
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = or i32 %71, %75
  %77 = load %struct.amd_vce_state*, %struct.amd_vce_state** %8, align 8
  %78 = getelementptr inbounds %struct.amd_vce_state, %struct.amd_vce_state* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = shl i32 %82, 16
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = or i32 %83, %87
  %89 = load %struct.amd_vce_state*, %struct.amd_vce_state** %8, align 8
  %90 = getelementptr inbounds %struct.amd_vce_state, %struct.amd_vce_state* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %18, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = mul i64 %94, %97
  %99 = add i64 %93, %98
  %100 = inttoptr i64 %99 to i8*
  %101 = load i8**, i8*** %9, align 8
  store i8* %100, i8** %101, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_16__* @get_powerplay_table(%struct.pp_hwmgr*) #1

declare dso_local %struct.TYPE_14__* @get_vce_state_table(%struct.pp_hwmgr*, %struct.TYPE_16__*) #1

declare dso_local zeroext i16 @get_vce_clock_info_array_offset(%struct.pp_hwmgr*, %struct.TYPE_16__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
