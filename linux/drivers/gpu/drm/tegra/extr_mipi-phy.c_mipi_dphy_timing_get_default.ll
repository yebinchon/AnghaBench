; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_mipi-phy.c_mipi_dphy_timing_get_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_mipi-phy.c_mipi_dphy_timing_get_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mipi_dphy_timing_get_default(%struct.mipi_dphy_timing* %0, i64 %1) #0 {
  %3 = alloca %struct.mipi_dphy_timing*, align 8
  %4 = alloca i64, align 8
  store %struct.mipi_dphy_timing* %0, %struct.mipi_dphy_timing** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %6 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %5, i32 0, i32 21
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = mul i64 52, %7
  %9 = add i64 70, %8
  %10 = trunc i64 %9 to i32
  %11 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %12 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %14 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %13, i32 0, i32 1
  store i32 8, i32* %14, align 4
  %15 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %16 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %15, i32 0, i32 2
  store i32 65, i32* %16, align 8
  %17 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %18 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %17, i32 0, i32 3
  store i32 95, i32* %18, align 4
  %19 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %20 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %19, i32 0, i32 20
  store i64 0, i64* %20, align 8
  %21 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %22 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %21, i32 0, i32 4
  store i32 80, i32* %22, align 8
  %23 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %24 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %23, i32 0, i32 5
  store i32 260, i32* %24, align 4
  %25 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %26 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %25, i32 0, i32 19
  store i64 0, i64* %26, align 8
  %27 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %28 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %27, i32 0, i32 18
  store i64 0, i64* %28, align 8
  %29 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %30 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %29, i32 0, i32 6
  store i32 120, i32* %30, align 8
  %31 = load i64, i64* %4, align 8
  %32 = mul i64 5, %31
  %33 = add i64 65, %32
  %34 = trunc i64 %33 to i32
  %35 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %36 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i64, i64* %4, align 8
  %38 = mul i64 5, %37
  %39 = add i64 145, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %42 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %4, align 8
  %44 = mul i64 6, %43
  %45 = add i64 85, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %48 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %50 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %49, i32 0, i32 10
  store i32 40, i32* %50, align 8
  %51 = load i64, i64* %4, align 8
  %52 = mul i64 32, %51
  %53 = trunc i64 %52 to i32
  %54 = load i64, i64* %4, align 8
  %55 = mul i64 16, %54
  %56 = add i64 60, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @max(i32 %53, i32 %57)
  %59 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %60 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %59, i32 0, i32 17
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %62 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %61, i32 0, i32 11
  store i32 100000, i32* %62, align 4
  %63 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %64 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %63, i32 0, i32 12
  store i32 60, i32* %64, align 8
  %65 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %66 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 5, %67
  %69 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %70 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %69, i32 0, i32 13
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %72 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 4, %73
  %75 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %76 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %75, i32 0, i32 14
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %78 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 2, %79
  %81 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %82 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %81, i32 0, i32 15
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mipi_dphy_timing*, %struct.mipi_dphy_timing** %3, align 8
  %84 = getelementptr inbounds %struct.mipi_dphy_timing, %struct.mipi_dphy_timing* %83, i32 0, i32 16
  store i32 1000000, i32* %84, align 8
  ret i32 0
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
