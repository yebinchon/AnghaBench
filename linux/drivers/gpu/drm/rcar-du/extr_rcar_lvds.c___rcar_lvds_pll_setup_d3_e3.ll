; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c___rcar_lvds_pll_setup_d3_e3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_lvds.c___rcar_lvds_pll_setup_d3_e3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_lvds = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.pll_info = type { i64, i32, i64, i32, i64, i64 }

@LVDPLLCR_CKSEL_EXTAL = common dso_local global i32 0, align 4
@LVDPLLCR_PLLON = common dso_local global i32 0, align 4
@LVDPLLCR_CLKOUT = common dso_local global i32 0, align 4
@LVDPLLCR_STP_CLKOUTE = common dso_local global i32 0, align 4
@LVDPLLCR_OUTCLKSEL = common dso_local global i32 0, align 4
@LVDPLLCR_OCKSEL = common dso_local global i32 0, align 4
@LVDPLLCR = common dso_local global i32 0, align 4
@LVDDIV = common dso_local global i32 0, align 4
@LVDDIV_DIVSEL = common dso_local global i32 0, align 4
@LVDDIV_DIVRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_lvds*, i32, i32)* @__rcar_lvds_pll_setup_d3_e3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rcar_lvds_pll_setup_d3_e3(%struct.rcar_lvds* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rcar_lvds*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pll_info, align 8
  %8 = alloca i32, align 4
  store %struct.rcar_lvds* %0, %struct.rcar_lvds** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.pll_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %10 = bitcast i8* %9 to %struct.pll_info*
  %11 = getelementptr inbounds %struct.pll_info, %struct.pll_info* %10, i32 0, i32 0
  store i64 -1, i64* %11, align 8
  %12 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %13 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %14 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @LVDPLLCR_CKSEL_DU_DOTCLKIN(i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @rcar_lvds_d3_e3_pll_calc(%struct.rcar_lvds* %12, i32 %18, i32 %19, %struct.pll_info* %7, i32 %20, i32 %21)
  %23 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %24 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %25 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @LVDPLLCR_CKSEL_DU_DOTCLKIN(i32 1)
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @rcar_lvds_d3_e3_pll_calc(%struct.rcar_lvds* %23, i32 %29, i32 %30, %struct.pll_info* %7, i32 %31, i32 %32)
  %34 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %35 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %36 = getelementptr inbounds %struct.rcar_lvds, %struct.rcar_lvds* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @LVDPLLCR_CKSEL_EXTAL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @rcar_lvds_d3_e3_pll_calc(%struct.rcar_lvds* %34, i32 %38, i32 %39, %struct.pll_info* %7, i32 %40, i32 %41)
  %43 = load i32, i32* @LVDPLLCR_PLLON, align 4
  %44 = getelementptr inbounds %struct.pll_info, %struct.pll_info* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %43, %45
  %47 = load i32, i32* @LVDPLLCR_CLKOUT, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds %struct.pll_info, %struct.pll_info* %7, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @LVDPLLCR_PLLN(i64 %51)
  %53 = or i32 %48, %52
  %54 = getelementptr inbounds %struct.pll_info, %struct.pll_info* %7, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i32 @LVDPLLCR_PLLM(i64 %56)
  %58 = or i32 %53, %57
  store i32 %58, i32* %8, align 4
  %59 = getelementptr inbounds %struct.pll_info, %struct.pll_info* %7, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %3
  %63 = load i32, i32* @LVDPLLCR_STP_CLKOUTE, align 4
  %64 = load i32, i32* @LVDPLLCR_OUTCLKSEL, align 4
  %65 = or i32 %63, %64
  %66 = getelementptr inbounds %struct.pll_info, %struct.pll_info* %7, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 1
  %69 = call i32 @LVDPLLCR_PLLE(i64 %68)
  %70 = or i32 %65, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %62, %3
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @LVDPLLCR_OCKSEL, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %82 = load i32, i32* @LVDPLLCR, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %81, i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.pll_info, %struct.pll_info* %7, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %90 = load i32, i32* @LVDDIV, align 4
  %91 = load i32, i32* @LVDDIV_DIVSEL, align 4
  %92 = load i32, i32* @LVDDIV_DIVRESET, align 4
  %93 = or i32 %91, %92
  %94 = getelementptr inbounds %struct.pll_info, %struct.pll_info* %7, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @LVDDIV_DIV(i32 %96)
  %98 = or i32 %93, %97
  %99 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %89, i32 %90, i32 %98)
  br label %104

100:                                              ; preds = %80
  %101 = load %struct.rcar_lvds*, %struct.rcar_lvds** %4, align 8
  %102 = load i32, i32* @LVDDIV, align 4
  %103 = call i32 @rcar_lvds_write(%struct.rcar_lvds* %101, i32 %102, i32 0)
  br label %104

104:                                              ; preds = %100, %88
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rcar_lvds_d3_e3_pll_calc(%struct.rcar_lvds*, i32, i32, %struct.pll_info*, i32, i32) #2

declare dso_local i32 @LVDPLLCR_CKSEL_DU_DOTCLKIN(i32) #2

declare dso_local i32 @LVDPLLCR_PLLN(i64) #2

declare dso_local i32 @LVDPLLCR_PLLM(i64) #2

declare dso_local i32 @LVDPLLCR_PLLE(i64) #2

declare dso_local i32 @rcar_lvds_write(%struct.rcar_lvds*, i32, i32) #2

declare dso_local i32 @LVDDIV_DIV(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
