; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_arb.c_nv04_update_arb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_arb.c_nv04_update_arb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.nouveau_drm = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.nvif_object }
%struct.TYPE_6__ = type { i64 }
%struct.nvif_object = type { i32 }
%struct.nv_fifo_info = type { i32, i32 }
%struct.nv_sim_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PLL_MEMORY = common dso_local global i32 0, align 4
@PLL_CORE = common dso_local global i32 0, align 4
@NV04_PFB_CFG1 = common dso_local global i32 0, align 4
@NV04_PFB_CFG0 = common dso_local global i32 0, align 4
@NV_PEXTDEV_BOOT_0 = common dso_local global i32 0, align 4
@NV_DEVICE_INFO_V0_TNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32, i32, i32*, i32*)* @nv04_update_arb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_update_arb(%struct.drm_device* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nouveau_drm*, align 8
  %12 = alloca %struct.nvif_object*, align 8
  %13 = alloca %struct.nv_fifo_info, align 4
  %14 = alloca %struct.nv_sim_state, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %20)
  store %struct.nouveau_drm* %21, %struct.nouveau_drm** %11, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %23 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %22)
  %24 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store %struct.nvif_object* %26, %struct.nvif_object** %12, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %28 = load i32, i32* @PLL_MEMORY, align 4
  %29 = call i32 @nouveau_hw_get_clock(%struct.drm_device* %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = load i32, i32* @PLL_CORE, align 4
  %32 = call i32 @nouveau_hw_get_clock(%struct.drm_device* %30, i32 %31)
  store i32 %32, i32* %16, align 4
  %33 = load %struct.nvif_object*, %struct.nvif_object** %12, align 8
  %34 = load i32, i32* @NV04_PFB_CFG1, align 4
  %35 = call i32 @nvif_rd32(%struct.nvif_object* %33, i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %15, align 4
  %39 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %16, align 4
  %41 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %45 = call i32 @nv_two_heads(%struct.drm_device* %44)
  %46 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 416
  br i1 %53, label %62, label %54

54:                                               ; preds = %5
  %55 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 496
  br i1 %61, label %62, label %79

62:                                               ; preds = %54, %5
  %63 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pci_domain_nr(i32 %67)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @pci_get_domain_bus_and_slot(i32 %69, i32 0, i32 1)
  %71 = call i32 @pci_read_config_dword(i32 %70, i32 124, i32* %18)
  %72 = load i32, i32* %18, align 4
  %73 = ashr i32 %72, 12
  %74 = and i32 %73, 1
  %75 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 4
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 5
  store i32 64, i32* %76, align 4
  %77 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 6
  store i32 3, i32* %77, align 4
  %78 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 7
  store i32 10, i32* %78, align 4
  br label %104

79:                                               ; preds = %54
  %80 = load %struct.nvif_object*, %struct.nvif_object** %12, align 8
  %81 = load i32, i32* @NV04_PFB_CFG0, align 4
  %82 = call i32 @nvif_rd32(%struct.nvif_object* %80, i32 %81)
  %83 = and i32 %82, 1
  %84 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 4
  store i32 %83, i32* %84, align 4
  %85 = load %struct.nvif_object*, %struct.nvif_object** %12, align 8
  %86 = load i32, i32* @NV_PEXTDEV_BOOT_0, align 4
  %87 = call i32 @nvif_rd32(%struct.nvif_object* %85, i32 %86)
  %88 = and i32 %87, 16
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 128, i32 64
  %92 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 5
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %17, align 4
  %94 = and i32 %93, 15
  %95 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 6
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %17, align 4
  %97 = ashr i32 %96, 4
  %98 = and i32 %97, 15
  %99 = load i32, i32* %17, align 4
  %100 = ashr i32 %99, 31
  %101 = and i32 %100, 1
  %102 = add nsw i32 %98, %101
  %103 = getelementptr inbounds %struct.nv_sim_state, %struct.nv_sim_state* %14, i32 0, i32 7
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %79, %62
  %105 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %106 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @NV_DEVICE_INFO_V0_TNT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = call i32 @nv04_calc_arb(%struct.nv_fifo_info* %13, %struct.nv_sim_state* %14)
  br label %117

115:                                              ; preds = %104
  %116 = call i32 @nv10_calc_arb(%struct.nv_fifo_info* %13, %struct.nv_sim_state* %14)
  br label %117

117:                                              ; preds = %115, %113
  %118 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %13, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 4
  %121 = call i32 @ilog2(i32 %120)
  %122 = load i32*, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.nv_fifo_info, %struct.nv_fifo_info* %13, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = ashr i32 %124, 3
  %126 = load i32*, i32** %10, align 8
  store i32 %125, i32* %126, align 4
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_hw_get_clock(%struct.drm_device*, i32) #1

declare dso_local i32 @nvif_rd32(%struct.nvif_object*, i32) #1

declare dso_local i32 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @pci_domain_nr(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @nv04_calc_arb(%struct.nv_fifo_info*, %struct.nv_sim_state*) #1

declare dso_local i32 @nv10_calc_arb(%struct.nv_fifo_info*, %struct.nv_sim_state*) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
