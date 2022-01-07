; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.fiji_smumgr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.SMU73_Discrete_MCArbDramTimingTable = type { i32** }

@SMC_RAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_program_memory_timing_parameters(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca %struct.fiji_smumgr*, align 8
  %5 = alloca %struct.SMU73_Discrete_MCArbDramTimingTable, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %3, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %16, %struct.fiji_smumgr** %4, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %70, %1
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %20 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %18, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %66, %25
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %29 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %27, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %26
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %36 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %37 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.SMU73_Discrete_MCArbDramTimingTable, %struct.SMU73_Discrete_MCArbDramTimingTable* %5, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = call i32 @fiji_populate_memory_timing_parameters(%struct.pp_hwmgr* %35, i32 %44, i32 %53, i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %34
  br label %69

65:                                               ; preds = %34
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %26

69:                                               ; preds = %64, %26
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %17

73:                                               ; preds = %17
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %78 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %79 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = bitcast %struct.SMU73_Discrete_MCArbDramTimingTable* %5 to i32*
  %83 = load i32, i32* @SMC_RAM_END, align 4
  %84 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %77, i32 %81, i32* %82, i32 4, i32 %83)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %76, %73
  %86 = load i32, i32* %8, align 4
  ret i32 %86
}

declare dso_local i32 @fiji_populate_memory_timing_parameters(%struct.pp_hwmgr*, i32, i32, i32*) #1

declare dso_local i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
