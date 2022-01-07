; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_max_high_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_max_high_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.amd_pp_simple_clock_info = type { i32, i32 }
%struct.smu7_hwmgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table }
%struct.smu7_single_dpm_table = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.amd_pp_simple_clock_info*)* @smu7_get_max_high_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_max_high_clocks(%struct.pp_hwmgr* %0, %struct.amd_pp_simple_clock_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.amd_pp_simple_clock_info*, align 8
  %6 = alloca %struct.smu7_hwmgr*, align 8
  %7 = alloca %struct.smu7_single_dpm_table*, align 8
  %8 = alloca %struct.smu7_single_dpm_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.amd_pp_simple_clock_info* %1, %struct.amd_pp_simple_clock_info** %5, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %6, align 8
  %13 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %14 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store %struct.smu7_single_dpm_table* %15, %struct.smu7_single_dpm_table** %7, align 8
  %16 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %17 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.smu7_single_dpm_table* %18, %struct.smu7_single_dpm_table** %8, align 8
  %19 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %20 = icmp eq %struct.amd_pp_simple_clock_info* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %2
  %25 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %26 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %31 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %34 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %48

41:                                               ; preds = %24
  %42 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %8, align 8
  %43 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %48

48:                                               ; preds = %41, %29
  %49 = phi i32 [ %40, %29 ], [ %47, %41 ]
  %50 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %51 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %7, align 8
  %53 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %7, align 8
  %58 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %7, align 8
  %61 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  br label %75

68:                                               ; preds = %48
  %69 = load %struct.smu7_single_dpm_table*, %struct.smu7_single_dpm_table** %7, align 8
  %70 = getelementptr inbounds %struct.smu7_single_dpm_table, %struct.smu7_single_dpm_table* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %68, %56
  %76 = phi i32 [ %67, %56 ], [ %74, %68 ]
  %77 = load %struct.amd_pp_simple_clock_info*, %struct.amd_pp_simple_clock_info** %5, align 8
  %78 = getelementptr inbounds %struct.amd_pp_simple_clock_info, %struct.amd_pp_simple_clock_info* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %75, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
