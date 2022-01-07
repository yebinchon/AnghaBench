; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_ih.c_cik_ih_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik_ih.c_cik_ih_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.amdgpu_ih_ring }
%struct.amdgpu_ih_ring = type { i32, i32, i32 }

@mmINTERRUPT_CNTL2 = common dso_local global i32 0, align 4
@mmINTERRUPT_CNTL = common dso_local global i32 0, align 4
@INTERRUPT_CNTL__IH_DUMMY_RD_OVERRIDE_MASK = common dso_local global i32 0, align 4
@INTERRUPT_CNTL__IH_REQ_NONSNOOP_EN_MASK = common dso_local global i32 0, align 4
@mmIH_RB_BASE = common dso_local global i32 0, align 4
@IH_RB_CNTL__WPTR_OVERFLOW_ENABLE_MASK = common dso_local global i32 0, align 4
@IH_RB_CNTL__WPTR_OVERFLOW_CLEAR_MASK = common dso_local global i32 0, align 4
@IH_RB_CNTL__WPTR_WRITEBACK_ENABLE_MASK = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_ADDR_LO = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@mmIH_RB_RPTR = common dso_local global i32 0, align 4
@mmIH_RB_WPTR = common dso_local global i32 0, align 4
@IH_CNTL__MC_WRREQ_CREDIT__SHIFT = common dso_local global i32 0, align 4
@IH_CNTL__MC_WR_CLEAN_CNT__SHIFT = common dso_local global i32 0, align 4
@IH_CNTL__MC_VMID__SHIFT = common dso_local global i32 0, align 4
@IH_CNTL__RPTR_REARM_MASK = common dso_local global i32 0, align 4
@mmIH_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @cik_ih_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_ih_irq_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ih_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.amdgpu_ih_ring* %10, %struct.amdgpu_ih_ring** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = call i32 @cik_ih_disable_interrupts(%struct.amdgpu_device* %11)
  %13 = load i32, i32* @mmINTERRUPT_CNTL2, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 8
  %18 = call i32 @WREG32(i32 %13, i32 %17)
  %19 = load i32, i32* @mmINTERRUPT_CNTL, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @INTERRUPT_CNTL__IH_DUMMY_RD_OVERRIDE_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @INTERRUPT_CNTL__IH_REQ_NONSNOOP_EN_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @mmINTERRUPT_CNTL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  %32 = load i32, i32* @mmIH_RB_BASE, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 8
  %39 = call i32 @WREG32(i32 %32, i32 %38)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 4
  %46 = call i32 @order_base_2(i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @IH_RB_CNTL__WPTR_OVERFLOW_ENABLE_MASK, align 4
  %48 = load i32, i32* @IH_RB_CNTL__WPTR_OVERFLOW_CLEAR_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 %50, 1
  %52 = or i32 %49, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @IH_RB_CNTL__WPTR_WRITEBACK_ENABLE_MASK, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @mmIH_RB_WPTR_ADDR_LO, align 4
  %57 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @lower_32_bits(i32 %59)
  %61 = call i32 @WREG32(i32 %56, i32 %60)
  %62 = load i32, i32* @mmIH_RB_WPTR_ADDR_HI, align 4
  %63 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @upper_32_bits(i32 %65)
  %67 = and i32 %66, 255
  %68 = call i32 @WREG32(i32 %62, i32 %67)
  %69 = load i32, i32* @mmIH_RB_CNTL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  %72 = load i32, i32* @mmIH_RB_RPTR, align 4
  %73 = call i32 @WREG32(i32 %72, i32 0)
  %74 = load i32, i32* @mmIH_RB_WPTR, align 4
  %75 = call i32 @WREG32(i32 %74, i32 0)
  %76 = load i32, i32* @IH_CNTL__MC_WRREQ_CREDIT__SHIFT, align 4
  %77 = shl i32 16, %76
  %78 = load i32, i32* @IH_CNTL__MC_WR_CLEAN_CNT__SHIFT, align 4
  %79 = shl i32 16, %78
  %80 = or i32 %77, %79
  %81 = load i32, i32* @IH_CNTL__MC_VMID__SHIFT, align 4
  %82 = shl i32 0, %81
  %83 = or i32 %80, %82
  store i32 %83, i32* %6, align 4
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %1
  %90 = load i32, i32* @IH_CNTL__RPTR_REARM_MASK, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %1
  %94 = load i32, i32* @mmIH_CNTL, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pci_set_master(i32 %99)
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %102 = call i32 @cik_ih_enable_interrupts(%struct.amdgpu_device* %101)
  ret i32 0
}

declare dso_local i32 @cik_ih_disable_interrupts(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @cik_ih_enable_interrupts(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
