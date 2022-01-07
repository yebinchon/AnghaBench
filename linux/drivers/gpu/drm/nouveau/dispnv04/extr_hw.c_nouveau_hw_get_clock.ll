; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_get_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_hw.c_nouveau_hw_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nvkm_pll_vals = type { i32 }

@PLL_MEMORY = common dso_local global i32 0, align 4
@CHIPSET_NFORCE = common dso_local global i32 0, align 4
@CHIPSET_NFORCE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_hw_get_clock(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_pll_vals, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pci_domain_nr(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PLL_MEMORY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 4080
  %27 = load i32, i32* @CHIPSET_NFORCE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pci_get_domain_bus_and_slot(i32 %30, i32 0, i32 3)
  %32 = call i32 @pci_read_config_dword(i32 %31, i32 108, i32* %9)
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 15
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i32 4, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 400000, %40
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %20, %2
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PLL_MEMORY, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 4080
  %53 = load i32, i32* @CHIPSET_NFORCE2, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %46
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @pci_get_domain_bus_and_slot(i32 %56, i32 0, i32 5)
  %58 = call i32 @pci_read_config_dword(i32 %57, i32 76, i32* %10)
  %59 = load i32, i32* %10, align 4
  %60 = sdiv i32 %59, 1000
  store i32 %60, i32* %3, align 4
  br label %72

61:                                               ; preds = %46, %42
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @nouveau_hw_get_pllvals(%struct.drm_device* %63, i32 %64, %struct.nvkm_pll_vals* %6)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %72

70:                                               ; preds = %62
  %71 = call i32 @nouveau_hw_pllvals_to_clk(%struct.nvkm_pll_vals* %6)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %68, %55, %39
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @nouveau_hw_get_pllvals(%struct.drm_device*, i32, %struct.nvkm_pll_vals*) #1

declare dso_local i32 @nouveau_hw_pllvals_to_clk(%struct.nvkm_pll_vals*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
