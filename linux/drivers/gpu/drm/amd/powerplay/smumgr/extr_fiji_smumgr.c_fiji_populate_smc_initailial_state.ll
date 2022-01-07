; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_smc_initailial_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_populate_smc_initailial_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64, i64 }
%struct.smu7_hwmgr = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.fiji_smumgr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.phm_ppt_v1_information = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_populate_smc_initailial_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_populate_smc_initailial_state(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca %struct.fiji_smumgr*, align 8
  %5 = alloca %struct.phm_ppt_v1_information*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %15, %struct.fiji_smumgr** %4, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.phm_ppt_v1_information*
  store %struct.phm_ppt_v1_information* %19, %struct.phm_ppt_v1_information** %5, align 8
  %20 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %21 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %50, %1
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %31 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %40 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %38, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %47 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  br label %53

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %25

53:                                               ; preds = %44, %25
  %54 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %55 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %59

59:                                               ; preds = %84, %53
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %59
  %64 = load %struct.phm_ppt_v1_information*, %struct.phm_ppt_v1_information** %5, align 8
  %65 = getelementptr inbounds %struct.phm_ppt_v1_information, %struct.phm_ppt_v1_information* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %74 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %72, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %63
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %81 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  br label %87

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %7, align 8
  br label %59

87:                                               ; preds = %78, %59
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
