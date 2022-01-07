; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_trim_single_dpm_states_with_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_trim_single_dpm_states_with_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.vega10_single_dpm_table*, i64, i64, i64)* @vega10_trim_single_dpm_states_with_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_trim_single_dpm_states_with_mask(%struct.pp_hwmgr* %0, %struct.vega10_single_dpm_table* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca %struct.vega10_single_dpm_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store %struct.vega10_single_dpm_table* %1, %struct.vega10_single_dpm_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %69, %5
  %13 = load i64, i64* %11, align 8
  %14 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %15 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %12
  %19 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %20 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %30 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %28, %18
  %39 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %40 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %68

45:                                               ; preds = %28
  %46 = load i64, i64* %11, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %10, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45
  %54 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %55 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 0, i32* %59, align 8
  br label %67

60:                                               ; preds = %45
  %61 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %7, align 8
  %62 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 8
  br label %67

67:                                               ; preds = %60, %53
  br label %68

68:                                               ; preds = %67, %38
  br label %69

69:                                               ; preds = %68
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %12

72:                                               ; preds = %12
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
