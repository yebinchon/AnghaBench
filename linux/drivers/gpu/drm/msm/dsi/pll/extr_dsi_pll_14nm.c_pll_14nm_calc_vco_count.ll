; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_pll_14nm_calc_vco_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_pll_14nm_calc_vco_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_14nm = type { i32, i32, %struct.dsi_pll_output, %struct.dsi_pll_input }
%struct.dsi_pll_output = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.dsi_pll_input = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_pll_14nm*)* @pll_14nm_calc_vco_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pll_14nm_calc_vco_count(%struct.dsi_pll_14nm* %0) #0 {
  %2 = alloca %struct.dsi_pll_14nm*, align 8
  %3 = alloca %struct.dsi_pll_input*, align 8
  %4 = alloca %struct.dsi_pll_output*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dsi_pll_14nm* %0, %struct.dsi_pll_14nm** %2, align 8
  %9 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %10 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %9, i32 0, i32 3
  store %struct.dsi_pll_input* %10, %struct.dsi_pll_input** %3, align 8
  %11 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %12 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %11, i32 0, i32 2
  store %struct.dsi_pll_output* %12, %struct.dsi_pll_output** %4, align 8
  %13 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %14 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %17 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %3, align 8
  %21 = getelementptr inbounds %struct.dsi_pll_input, %struct.dsi_pll_input* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @do_div(i32 %24, i32 1000000)
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 1023
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %32 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @div_u64(i32 %33, i32 1000000)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %3, align 8
  %36 = getelementptr inbounds %struct.dsi_pll_input, %struct.dsi_pll_input* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @do_div(i32 %40, i32 10)
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %44 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %3, align 8
  %47 = getelementptr inbounds %struct.dsi_pll_input, %struct.dsi_pll_input* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @do_div(i32 %50, i32 1000000)
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 1023
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %58 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @pll_14nm_kvco_slop(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %61, 2
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sdiv i32 %63, 100
  store i32 %64, i32* %8, align 4
  %65 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %3, align 8
  %66 = getelementptr inbounds %struct.dsi_pll_input, %struct.dsi_pll_input* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %72 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %74 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %73, i32 0, i32 4
  store i32 16, i32* %74, align 8
  %75 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %76 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %75, i32 0, i32 5
  store i32 48, i32* %76, align 4
  %77 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %3, align 8
  %78 = getelementptr inbounds %struct.dsi_pll_input, %struct.dsi_pll_input* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 3
  %81 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %82 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 8
  %83 = load %struct.dsi_pll_input*, %struct.dsi_pll_input** %3, align 8
  %84 = getelementptr inbounds %struct.dsi_pll_input, %struct.dsi_pll_input* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %87 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  %88 = load %struct.dsi_pll_output*, %struct.dsi_pll_output** %4, align 8
  %89 = getelementptr inbounds %struct.dsi_pll_output, %struct.dsi_pll_output* %88, i32 0, i32 7
  store i64 0, i64* %89, align 8
  ret void
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @pll_14nm_kvco_slop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
