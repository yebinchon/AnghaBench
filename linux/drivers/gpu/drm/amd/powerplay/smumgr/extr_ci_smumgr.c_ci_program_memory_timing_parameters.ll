; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_program_memory_timing_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_program_memory_timing_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ci_smumgr = type { i32 }
%struct.TYPE_13__ = type { i32** }

@SMC_RAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_program_memory_timing_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_program_memory_timing_parameters(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca %struct.ci_smumgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %3, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ci_smumgr*
  store %struct.ci_smumgr* %16, %struct.ci_smumgr** %4, align 8
  store i32 0, i32* %5, align 4
  %17 = call i32 @memset(%struct.TYPE_13__* %6, i32 0, i32 8)
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %71, %1
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %21 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %19, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %67, %26
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %30 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %28, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %27
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %37 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %38 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %47 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i32*, i32** %56, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = call i32 @ci_populate_memory_timing_parameters(%struct.pp_hwmgr* %36, i32 %45, i32 %54, i32* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 0, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %35
  br label %70

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %27

70:                                               ; preds = %65, %27
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %18

74:                                               ; preds = %18
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 0, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %79 = load %struct.ci_smumgr*, %struct.ci_smumgr** %4, align 8
  %80 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = bitcast %struct.TYPE_13__* %6 to i32*
  %83 = load i32, i32* @SMC_RAM_END, align 4
  %84 = call i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr* %78, i32 %81, i32* %82, i32 8, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ci_populate_memory_timing_parameters(%struct.pp_hwmgr*, i32, i32, i32*) #1

declare dso_local i32 @ci_copy_bytes_to_smc(%struct.pp_hwmgr*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
