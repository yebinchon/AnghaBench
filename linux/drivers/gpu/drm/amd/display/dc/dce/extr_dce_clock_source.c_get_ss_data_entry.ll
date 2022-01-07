; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_get_ss_data_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_clock_source.c_get_ss_data_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spread_spectrum_data = type { i64 }
%struct.dce110_clk_src = type { i64, i64, i64, i64, %struct.spread_spectrum_data*, %struct.spread_spectrum_data*, %struct.spread_spectrum_data*, %struct.spread_spectrum_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.spread_spectrum_data* (%struct.dce110_clk_src*, i32, i64)* @get_ss_data_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.spread_spectrum_data* @get_ss_data_entry(%struct.dce110_clk_src* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.spread_spectrum_data*, align 8
  %5 = alloca %struct.dce110_clk_src*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spread_spectrum_data*, align 8
  %11 = alloca %struct.spread_spectrum_data*, align 8
  store %struct.dce110_clk_src* %0, %struct.dce110_clk_src** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.spread_spectrum_data* null, %struct.spread_spectrum_data** %10, align 8
  store %struct.spread_spectrum_data* null, %struct.spread_spectrum_data** %11, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %41 [
    i32 132, label %13
    i32 133, label %13
    i32 130, label %20
    i32 129, label %27
    i32 135, label %34
    i32 134, label %34
    i32 131, label %34
    i32 128, label %34
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %15 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %14, i32 0, i32 7
  %16 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %15, align 8
  store %struct.spread_spectrum_data* %16, %struct.spread_spectrum_data** %10, align 8
  %17 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %18 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  br label %42

20:                                               ; preds = %3
  %21 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %22 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %21, i32 0, i32 6
  %23 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %22, align 8
  store %struct.spread_spectrum_data* %23, %struct.spread_spectrum_data** %10, align 8
  %24 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %25 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  br label %42

27:                                               ; preds = %3
  %28 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %29 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %28, i32 0, i32 5
  %30 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %29, align 8
  store %struct.spread_spectrum_data* %30, %struct.spread_spectrum_data** %10, align 8
  %31 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %32 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  br label %42

34:                                               ; preds = %3, %3, %3, %3
  %35 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %36 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %35, i32 0, i32 4
  %37 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %36, align 8
  store %struct.spread_spectrum_data* %37, %struct.spread_spectrum_data** %10, align 8
  %38 = load %struct.dce110_clk_src*, %struct.dce110_clk_src** %5, align 8
  %39 = getelementptr inbounds %struct.dce110_clk_src, %struct.dce110_clk_src* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  br label %42

41:                                               ; preds = %3
  store %struct.spread_spectrum_data* null, %struct.spread_spectrum_data** %10, align 8
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %41, %34, %27, %20, %13
  %43 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  %44 = icmp eq %struct.spread_spectrum_data* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %11, align 8
  store %struct.spread_spectrum_data* %46, %struct.spread_spectrum_data** %4, align 8
  br label %68

47:                                               ; preds = %42
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  %54 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  store %struct.spread_spectrum_data* %59, %struct.spread_spectrum_data** %11, align 8
  br label %66

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %9, align 8
  %64 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %10, align 8
  %65 = getelementptr inbounds %struct.spread_spectrum_data, %struct.spread_spectrum_data* %64, i32 1
  store %struct.spread_spectrum_data* %65, %struct.spread_spectrum_data** %10, align 8
  br label %48

66:                                               ; preds = %58, %48
  %67 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %11, align 8
  store %struct.spread_spectrum_data* %67, %struct.spread_spectrum_data** %4, align 8
  br label %68

68:                                               ; preds = %66, %45
  %69 = load %struct.spread_spectrum_data*, %struct.spread_spectrum_data** %4, align 8
  ret %struct.spread_spectrum_data* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
