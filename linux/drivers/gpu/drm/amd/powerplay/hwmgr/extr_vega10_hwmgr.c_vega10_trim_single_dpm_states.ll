; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_trim_single_dpm_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_trim_single_dpm_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.vega10_single_dpm_table*, i64, i64)* @vega10_trim_single_dpm_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_trim_single_dpm_states(%struct.pp_hwmgr* %0, %struct.vega10_single_dpm_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.vega10_single_dpm_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.vega10_single_dpm_table* %1, %struct.vega10_single_dpm_table** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %51, %4
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %13 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %18 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %16
  %27 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %28 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %26, %16
  %37 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %38 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 8
  br label %50

43:                                               ; preds = %26
  %44 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %6, align 8
  %45 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %10

54:                                               ; preds = %10
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
