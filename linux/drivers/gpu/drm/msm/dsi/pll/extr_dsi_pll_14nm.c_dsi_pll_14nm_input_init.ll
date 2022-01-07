; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_dsi_pll_14nm_input_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/pll/extr_dsi_pll_14nm.c_dsi_pll_14nm_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_pll_14nm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsi_pll_14nm*)* @dsi_pll_14nm_input_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_14nm_input_init(%struct.dsi_pll_14nm* %0) #0 {
  %2 = alloca %struct.dsi_pll_14nm*, align 8
  store %struct.dsi_pll_14nm* %0, %struct.dsi_pll_14nm** %2, align 8
  %3 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %4 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %7 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 31
  store i32 %5, i32* %8, align 8
  %9 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %10 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 30
  store i64 0, i64* %11, align 8
  %12 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %13 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %16 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 29
  store i64 0, i64* %17, align 8
  %18 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %19 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 28
  store i64 0, i64* %20, align 8
  %21 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %22 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32 5, i32* %23, align 4
  %24 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %25 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 5, i32* %26, align 8
  %27 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %28 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 4, i32* %29, align 4
  %30 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %31 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i32 5, i32* %32, align 8
  %33 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %34 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 5
  store i32 1, i32* %35, align 4
  %36 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %37 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 27
  store i64 0, i64* %38, align 8
  %39 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %40 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  store i32 1, i32* %41, align 8
  %42 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %43 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 26
  store i64 0, i64* %44, align 8
  %45 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %46 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  store i32 5, i32* %47, align 4
  %48 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %49 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 8
  store i32 31500, i32* %50, align 8
  %51 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %52 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 9
  store i32 37, i32* %53, align 4
  %54 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %55 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 10
  store i32 4, i32* %56, align 8
  %57 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %58 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 11
  store i32 4, i32* %59, align 4
  %60 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %61 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 12
  store i32 1, i32* %62, align 8
  %63 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %64 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 13
  store i32 1, i32* %65, align 4
  %66 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %67 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 14
  store i32 4, i32* %68, align 8
  %69 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %70 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 15
  store i32 4, i32* %71, align 4
  %72 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %73 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 25
  store i64 0, i64* %74, align 8
  %75 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %76 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 24
  store i64 0, i64* %77, align 8
  %78 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %79 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 23
  store i64 0, i64* %80, align 8
  %81 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %82 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 22
  store i64 0, i64* %83, align 8
  %84 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %85 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 16
  store i32 3, i32* %86, align 8
  %87 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %88 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 17
  store i32 11, i32* %89, align 4
  %90 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %91 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 18
  store i32 1, i32* %92, align 8
  %93 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %94 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 19
  store i32 7, i32* %95, align 4
  %96 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %97 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 20
  store i32 2, i32* %98, align 8
  %99 = load %struct.dsi_pll_14nm*, %struct.dsi_pll_14nm** %2, align 8
  %100 = getelementptr inbounds %struct.dsi_pll_14nm, %struct.dsi_pll_14nm* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 21
  store i32 1, i32* %101, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
