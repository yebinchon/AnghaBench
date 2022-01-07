; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_get_phy_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/kirin/extr_dw_drm_dsi.c_dsi_get_phy_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_phy_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PHY_REF_CLK_PERIOD_PS = common dso_local global i32 0, align 4
@MAX_TX_ESC_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mipi_phy_params*)* @dsi_get_phy_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_get_phy_params(i32 %0, %struct.mipi_phy_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_phy_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mipi_phy_params* %1, %struct.mipi_phy_params** %4, align 8
  %8 = load i32, i32* @PHY_REF_CLK_PERIOD_PS, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %10 = call i32 @memset(%struct.mipi_phy_params* %9, i32 0, i32 84)
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %13 = call i32 @dsi_calc_phy_rate(i32 %11, %struct.mipi_phy_params* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %157

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 1000000, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 8, %20
  %22 = call i32 @ROUND(i32 50, i32 %21)
  %23 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %24 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 16, %25
  %27 = call i32 @ROUND(i32 133, i32 %26)
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %30 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 8, %31
  %33 = call i32 @ROUND(i32 262, i32 %32)
  %34 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %35 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 8, %36
  %38 = call i32 @ROUND(i32 60, i32 %37)
  %39 = sub nsw i32 %38, 1
  %40 = mul nsw i32 2, %39
  %41 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %42 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %43, 1000
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @ROUND(i32 1000000, i32 %45)
  %47 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %48 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %50 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 255
  br i1 %52, label %53, label %56

53:                                               ; preds = %17
  %54 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %55 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %54, i32 0, i32 4
  store i32 255, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %17
  %57 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %58 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %61 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %63 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %66 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 10, %67
  %69 = add nsw i32 125, %68
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 16, %70
  %72 = call i32 @ROUND(i32 %69, i32 %71)
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %75 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %7, align 4
  %77 = mul nsw i32 6, %76
  %78 = add nsw i32 105, %77
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 8, %79
  %81 = call i32 @ROUND(i32 %78, i32 %80)
  %82 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %83 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %82, i32 0, i32 8
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 4, %84
  %86 = add nsw i32 60, %85
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 8, %87
  %89 = call i32 @ROUND(i32 %86, i32 %88)
  %90 = sub nsw i32 %89, 1
  %91 = mul nsw i32 2, %90
  %92 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %93 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 4
  %94 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %95 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %94, i32 0, i32 10
  store i32 3, i32* %95, align 4
  %96 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %97 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %96, i32 0, i32 11
  store i32 4, i32* %97, align 4
  %98 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %99 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %98, i32 0, i32 12
  store i32 1, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 8, %100
  %102 = call i32 @ROUND(i32 407, i32 %101)
  %103 = add nsw i32 %102, 12
  %104 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %105 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %104, i32 0, i32 13
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = mul nsw i32 12, %106
  %108 = add nsw i32 105, %107
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 8, %109
  %111 = call i32 @ROUND(i32 %108, i32 %110)
  %112 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %113 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %112, i32 0, i32 14
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %7, align 4
  %115 = mul nsw i32 12, %114
  %116 = add nsw i32 240, %115
  %117 = load i32, i32* %7, align 4
  %118 = mul nsw i32 8, %117
  %119 = call i32 @ROUND(i32 %116, i32 %118)
  %120 = add nsw i32 %119, 1
  %121 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %122 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %121, i32 0, i32 15
  store i32 %120, i32* %122, align 4
  %123 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %124 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %127 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %126, i32 0, i32 16
  store i32 %125, i32* %127, align 4
  %128 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %129 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 1, %130
  %132 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %133 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %132, i32 0, i32 17
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %7, align 4
  %135 = mul nsw i32 52, %134
  %136 = add nsw i32 60, %135
  %137 = load i32, i32* %7, align 4
  %138 = mul nsw i32 8, %137
  %139 = call i32 @ROUND(i32 %136, i32 %138)
  %140 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %141 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %139, %142
  %144 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %145 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %144, i32 0, i32 18
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %6, align 4
  %147 = sdiv i32 %146, 8
  %148 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %149 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %148, i32 0, i32 19
  store i32 %147, i32* %149, align 4
  %150 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %151 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %150, i32 0, i32 19
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MAX_TX_ESC_CLK, align 4
  %154 = call i32 @DIV_ROUND_UP(i32 %152, i32 %153)
  %155 = load %struct.mipi_phy_params*, %struct.mipi_phy_params** %4, align 8
  %156 = getelementptr inbounds %struct.mipi_phy_params, %struct.mipi_phy_params* %155, i32 0, i32 20
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %56, %16
  ret void
}

declare dso_local i32 @memset(%struct.mipi_phy_params*, i32, i32) #1

declare dso_local i32 @dsi_calc_phy_rate(i32, %struct.mipi_phy_params*) #1

declare dso_local i32 @ROUND(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
