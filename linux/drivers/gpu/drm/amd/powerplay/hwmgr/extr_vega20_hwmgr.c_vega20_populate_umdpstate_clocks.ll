; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_populate_umdpstate_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_populate_umdpstate_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, i64 }
%struct.vega20_hwmgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table }
%struct.vega20_single_dpm_table = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@VEGA20_UMD_PSTATE_GFXCLK_LEVEL = common dso_local global i64 0, align 8
@VEGA20_UMD_PSTATE_MCLK_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @vega20_populate_umdpstate_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_populate_umdpstate_clocks(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.vega20_hwmgr*, align 8
  %4 = alloca %struct.vega20_single_dpm_table*, align 8
  %5 = alloca %struct.vega20_single_dpm_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %9, %struct.vega20_hwmgr** %3, align 8
  %10 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store %struct.vega20_single_dpm_table* %12, %struct.vega20_single_dpm_table** %4, align 8
  %13 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.vega20_single_dpm_table* %15, %struct.vega20_single_dpm_table** %5, align 8
  %16 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %17 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %23 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %25 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %31 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %33 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %1
  %38 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %39 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %4, align 8
  %45 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @VEGA20_UMD_PSTATE_GFXCLK_LEVEL, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %52 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.vega20_single_dpm_table*, %struct.vega20_single_dpm_table** %5, align 8
  %54 = getelementptr inbounds %struct.vega20_single_dpm_table, %struct.vega20_single_dpm_table* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* @VEGA20_UMD_PSTATE_MCLK_LEVEL, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %61 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %43, %37, %1
  %63 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %64 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 100
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %68 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %70 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 100
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %74 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
