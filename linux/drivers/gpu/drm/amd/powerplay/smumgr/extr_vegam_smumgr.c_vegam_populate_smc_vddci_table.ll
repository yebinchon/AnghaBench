; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_populate_smc_vddci_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_vegam_smumgr.c_vegam_populate_smc_vddci_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.SMU75_Discrete_DpmTable = type { i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.smu7_hwmgr = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@SMU7_VOLTAGE_CONTROL_BY_GPIO = common dso_local global i64 0, align 8
@SMU_MAX_SMIO_LEVELS = common dso_local global i64 0, align 8
@VOLTAGE_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.SMU75_Discrete_DpmTable*)* @vegam_populate_smc_vddci_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vegam_populate_smc_vddci_table(%struct.pp_hwmgr* %0, %struct.SMU75_Discrete_DpmTable* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.SMU75_Discrete_DpmTable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.SMU75_Discrete_DpmTable* %1, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %7, align 8
  %12 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %13 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @SMU7_VOLTAGE_CONTROL_BY_GPIO, align 8
  %17 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %18 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @SMU_MAX_SMIO_LEVELS, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* @SMU_MAX_SMIO_LEVELS, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %25, %21
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %34 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VOLTAGE_SCALE, align 4
  %42 = mul nsw i32 %40, %41
  %43 = call i32 @PP_HOST_TO_SMC_US(i32 %42)
  %44 = load %struct.SMU75_Discrete_DpmTable*, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %45 = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, %struct.SMU75_Discrete_DpmTable* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %43, i32* %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.SMU75_Discrete_DpmTable*, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %53 = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, %struct.SMU75_Discrete_DpmTable* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 %51, i64* %58, align 8
  %59 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %60 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.SMU75_Discrete_DpmTable*, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %68 = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, %struct.SMU75_Discrete_DpmTable* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %66
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %32
  %75 = load i64, i64* %6, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %28

77:                                               ; preds = %28
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %7, align 8
  %80 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.SMU75_Discrete_DpmTable*, %struct.SMU75_Discrete_DpmTable** %4, align 8
  %84 = getelementptr inbounds %struct.SMU75_Discrete_DpmTable, %struct.SMU75_Discrete_DpmTable* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  ret i32 0
}

declare dso_local i32 @PP_HOST_TO_SMC_US(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
