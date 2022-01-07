; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_get_clk_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_arcturus_ppt.c_arcturus_get_clk_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { i32 }
%struct.pp_clock_levels_with_latency = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.arcturus_single_dpm_table = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MAX_NUM_CLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, %struct.pp_clock_levels_with_latency*, %struct.arcturus_single_dpm_table*)* @arcturus_get_clk_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcturus_get_clk_table(%struct.smu_context* %0, %struct.pp_clock_levels_with_latency* %1, %struct.arcturus_single_dpm_table* %2) #0 {
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca %struct.pp_clock_levels_with_latency*, align 8
  %6 = alloca %struct.arcturus_single_dpm_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store %struct.pp_clock_levels_with_latency* %1, %struct.pp_clock_levels_with_latency** %5, align 8
  store %struct.arcturus_single_dpm_table* %2, %struct.arcturus_single_dpm_table** %6, align 8
  %9 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %6, align 8
  %10 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX_NUM_CLOCKS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @MAX_NUM_CLOCKS, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %6, align 8
  %18 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i32 [ %15, %14 ], [ %19, %16 ]
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %24 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %53, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load %struct.arcturus_single_dpm_table*, %struct.arcturus_single_dpm_table** %6, align 8
  %31 = getelementptr inbounds %struct.arcturus_single_dpm_table, %struct.arcturus_single_dpm_table* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %40 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 8
  %46 = load %struct.pp_clock_levels_with_latency*, %struct.pp_clock_levels_with_latency** %5, align 8
  %47 = getelementptr inbounds %struct.pp_clock_levels_with_latency, %struct.pp_clock_levels_with_latency* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %29
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %25

56:                                               ; preds = %25
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
