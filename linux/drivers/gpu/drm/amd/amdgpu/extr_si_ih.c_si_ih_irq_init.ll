; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_ih.c_si_ih_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_ih.c_si_ih_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.amdgpu_ih_ring }
%struct.amdgpu_ih_ring = type { i32, i32, i32 }

@INTERRUPT_CNTL2 = common dso_local global i32 0, align 4
@INTERRUPT_CNTL = common dso_local global i32 0, align 4
@IH_DUMMY_RD_OVERRIDE = common dso_local global i32 0, align 4
@IH_REQ_NONSNOOP_EN = common dso_local global i32 0, align 4
@IH_RB_BASE = common dso_local global i32 0, align 4
@IH_WPTR_OVERFLOW_ENABLE = common dso_local global i32 0, align 4
@IH_WPTR_OVERFLOW_CLEAR = common dso_local global i32 0, align 4
@IH_WPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@IH_RB_WPTR_ADDR_LO = common dso_local global i32 0, align 4
@IH_RB_WPTR_ADDR_HI = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IH_RB_WPTR = common dso_local global i32 0, align 4
@RPTR_REARM = common dso_local global i32 0, align 4
@IH_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_ih_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_ih_irq_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ih_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.amdgpu_ih_ring* %10, %struct.amdgpu_ih_ring** %3, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = call i32 @si_ih_disable_interrupts(%struct.amdgpu_device* %11)
  %13 = load i32, i32* @INTERRUPT_CNTL2, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 8
  %20 = call i32 @WREG32(i32 %13, i32 %19)
  %21 = load i32, i32* @INTERRUPT_CNTL, align 4
  %22 = call i32 @RREG32(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @IH_DUMMY_RD_OVERRIDE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @IH_REQ_NONSNOOP_EN, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @INTERRUPT_CNTL, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  %34 = load i32, i32* @IH_RB_BASE, align 4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 8
  %41 = call i32 @WREG32(i32 %34, i32 %40)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %43 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 4
  %48 = call i32 @order_base_2(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @IH_WPTR_OVERFLOW_ENABLE, align 4
  %50 = load i32, i32* @IH_WPTR_OVERFLOW_CLEAR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 %52, 1
  %54 = or i32 %51, %53
  %55 = load i32, i32* @IH_WPTR_WRITEBACK_ENABLE, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @IH_RB_WPTR_ADDR_LO, align 4
  %58 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @lower_32_bits(i32 %60)
  %62 = call i32 @WREG32(i32 %57, i32 %61)
  %63 = load i32, i32* @IH_RB_WPTR_ADDR_HI, align 4
  %64 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @upper_32_bits(i32 %66)
  %68 = and i32 %67, 255
  %69 = call i32 @WREG32(i32 %63, i32 %68)
  %70 = load i32, i32* @IH_RB_CNTL, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @WREG32(i32 %70, i32 %71)
  %73 = load i32, i32* @IH_RB_RPTR, align 4
  %74 = call i32 @WREG32(i32 %73, i32 0)
  %75 = load i32, i32* @IH_RB_WPTR, align 4
  %76 = call i32 @WREG32(i32 %75, i32 0)
  %77 = call i32 @MC_WRREQ_CREDIT(i32 16)
  %78 = call i32 @MC_WR_CLEAN_CNT(i32 16)
  %79 = or i32 %77, %78
  %80 = call i32 @MC_VMID(i32 0)
  %81 = or i32 %79, %80
  store i32 %81, i32* %6, align 4
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %83 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %1
  %88 = load i32, i32* @RPTR_REARM, align 4
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %87, %1
  %92 = load i32, i32* @IH_CNTL, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @WREG32(i32 %92, i32 %93)
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pci_set_master(i32 %97)
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %100 = call i32 @si_ih_enable_interrupts(%struct.amdgpu_device* %99)
  ret i32 0
}

declare dso_local i32 @si_ih_disable_interrupts(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @MC_WRREQ_CREDIT(i32) #1

declare dso_local i32 @MC_WR_CLEAN_CNT(i32) #1

declare dso_local i32 @MC_VMID(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @si_ih_enable_interrupts(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
