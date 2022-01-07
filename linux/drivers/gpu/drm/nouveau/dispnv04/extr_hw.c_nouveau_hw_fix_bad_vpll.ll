; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_fix_bad_vpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_fix_bad_vpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvif_device }
%struct.nvif_device = type { i32 }
%struct.nvkm_clk = type { i32 (%struct.nvkm_clk*, i32, %struct.nvkm_pll_vals*)* }
%struct.nvkm_pll_vals = type { i64, i64, i64 }
%struct.nvkm_bios = type { i32 }
%struct.nvbios_pll = type { i64, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@PLL_VPLL1 = common dso_local global i32 0, align 4
@PLL_VPLL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"VPLL %d outwith limits, attempting to fix\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @nouveau_hw_fix_bad_vpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_hw_fix_bad_vpll(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_drm*, align 8
  %6 = alloca %struct.nvif_device*, align 8
  %7 = alloca %struct.nvkm_clk*, align 8
  %8 = alloca %struct.nvkm_bios*, align 8
  %9 = alloca %struct.nvbios_pll, align 8
  %10 = alloca %struct.nvkm_pll_vals, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %12)
  store %struct.nouveau_drm* %13, %struct.nouveau_drm** %5, align 8
  %14 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.nvif_device* %16, %struct.nvif_device** %6, align 8
  %17 = load %struct.nvif_device*, %struct.nvif_device** %6, align 8
  %18 = call %struct.nvkm_clk* @nvxx_clk(%struct.nvif_device* %17)
  store %struct.nvkm_clk* %18, %struct.nvkm_clk** %7, align 8
  %19 = load %struct.nvif_device*, %struct.nvif_device** %6, align 8
  %20 = call %struct.nvkm_bios* @nvxx_bios(%struct.nvif_device* %19)
  store %struct.nvkm_bios* %20, %struct.nvkm_bios** %8, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @PLL_VPLL1, align 4
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @PLL_VPLL0, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %11, align 4
  %29 = load %struct.nvkm_bios*, %struct.nvkm_bios** %8, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @nvbios_pll_parse(%struct.nvkm_bios* %29, i32 %30, %struct.nvbios_pll* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %95

34:                                               ; preds = %27
  %35 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @nouveau_hw_get_pllvals(%struct.drm_device* %35, i32 %36, %struct.nvkm_pll_vals* %10)
  %38 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %95

72:                                               ; preds = %65, %58, %51, %44, %34
  %73 = load %struct.nouveau_drm*, %struct.nouveau_drm** %5, align 8
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  %76 = call i32 @NV_WARN(%struct.nouveau_drm* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  %81 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 1
  store i64 %83, i64* %84, align 8
  %85 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.nvkm_pll_vals, %struct.nvkm_pll_vals* %10, i32 0, i32 2
  store i64 %86, i64* %87, align 8
  %88 = load %struct.nvkm_clk*, %struct.nvkm_clk** %7, align 8
  %89 = getelementptr inbounds %struct.nvkm_clk, %struct.nvkm_clk* %88, i32 0, i32 0
  %90 = load i32 (%struct.nvkm_clk*, i32, %struct.nvkm_pll_vals*)*, i32 (%struct.nvkm_clk*, i32, %struct.nvkm_pll_vals*)** %89, align 8
  %91 = load %struct.nvkm_clk*, %struct.nvkm_clk** %7, align 8
  %92 = getelementptr inbounds %struct.nvbios_pll, %struct.nvbios_pll* %9, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 %90(%struct.nvkm_clk* %91, i32 %93, %struct.nvkm_pll_vals* %10)
  br label %95

95:                                               ; preds = %72, %71, %33
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_clk* @nvxx_clk(%struct.nvif_device*) #1

declare dso_local %struct.nvkm_bios* @nvxx_bios(%struct.nvif_device*) #1

declare dso_local i64 @nvbios_pll_parse(%struct.nvkm_bios*, i32, %struct.nvbios_pll*) #1

declare dso_local i32 @nouveau_hw_get_pllvals(%struct.drm_device*, i32, %struct.nvkm_pll_vals*) #1

declare dso_local i32 @NV_WARN(%struct.nouveau_drm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
