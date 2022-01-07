; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_all_memory_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_populate_all_memory_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.vega10_hwmgr* }
%struct.vega10_hwmgr = type { i64, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.vega10_single_dpm_table }
%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i8*, i8*, i32*, i32*, i32* }

@NUM_UCLK_DPM_LEVELS = common dso_local global i64 0, align 8
@HBM_MEMORY_CHANNEL_WIDTH = common dso_local global i32 0, align 4
@channel_number = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega10_populate_all_memory_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_populate_all_memory_levels(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.vega10_hwmgr*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.vega10_single_dpm_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %11, align 8
  store %struct.vega10_hwmgr* %12, %struct.vega10_hwmgr** %4, align 8
  %13 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %14 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %17 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store %struct.vega10_single_dpm_table* %18, %struct.vega10_single_dpm_table** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %55, %1
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %22 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %27 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %28 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call i32 @vega10_populate_single_memory_level(%struct.pp_hwmgr* %26, i32 %33, i32* %38, i32* %43, i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %25
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %122

54:                                               ; preds = %25
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %19

58:                                               ; preds = %19
  %59 = load i64, i64* %8, align 8
  %60 = sub i64 %59, 1
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %94, %58
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @NUM_UCLK_DPM_LEVELS, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %61
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %67 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %68 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = call i32 @vega10_populate_single_memory_level(%struct.pp_hwmgr* %66, i32 %73, i32* %78, i32* %83, i32* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %65
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %122

94:                                               ; preds = %65
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %61

97:                                               ; preds = %61
  %98 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %99 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  %104 = load i32, i32* @HBM_MEMORY_CHANNEL_WIDTH, align 4
  %105 = load i32*, i32** @channel_number, align 8
  %106 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %107 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %104, %110
  %112 = sext i32 %111 to i64
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i8* %113, i8** %115, align 8
  %116 = load %struct.vega10_hwmgr*, %struct.vega10_hwmgr** %4, align 8
  %117 = getelementptr inbounds %struct.vega10_hwmgr, %struct.vega10_hwmgr* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %97, %92, %52
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @vega10_populate_single_memory_level(%struct.pp_hwmgr*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
