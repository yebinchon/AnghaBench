; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vegam_smumgr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.SMU75_Discrete_MCArbDramTimingTable = type { i32** }

@SMC_RAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vegam_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_program_memory_timing_parameters(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.vegam_smumgr*, align 8
  %6 = alloca %struct.SMU75_Discrete_MCArbDramTimingTable, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %13, %struct.smu7_hwmgr** %4, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.vegam_smumgr*
  store %struct.vegam_smumgr* %17, %struct.vegam_smumgr** %5, align 8
  store i32 0, i32* %9, align 4
  %18 = call i32 @memset(%struct.SMU75_Discrete_MCArbDramTimingTable* %6, i32 0, i32 4)
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %73, %1
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %22 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %20, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %31 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ult i64 %29, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %28
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %38 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %39 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %48 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.SMU75_Discrete_MCArbDramTimingTable, %struct.SMU75_Discrete_MCArbDramTimingTable* %6, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = call i32 @vegam_populate_memory_timing_parameters(%struct.pp_hwmgr* %37, i32 %46, i32 %55, i32* %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %36
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %2, align 4
  br label %86

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %28

72:                                               ; preds = %28
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %7, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %7, align 8
  br label %19

76:                                               ; preds = %19
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %78 = load %struct.vegam_smumgr*, %struct.vegam_smumgr** %5, align 8
  %79 = getelementptr inbounds %struct.vegam_smumgr, %struct.vegam_smumgr* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = bitcast %struct.SMU75_Discrete_MCArbDramTimingTable* %6 to i32*
  %83 = load i32, i32* @SMC_RAM_END, align 4
  %84 = call i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr* %77, i32 %81, i32* %82, i32 4, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %76, %66
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @memset(%struct.SMU75_Discrete_MCArbDramTimingTable*, i32, i32) #1

declare dso_local i32 @vegam_populate_memory_timing_parameters(%struct.pp_hwmgr*, i32, i32, i32*) #1

declare dso_local i32 @smu7_copy_bytes_to_smc(%struct.pp_hwmgr*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
