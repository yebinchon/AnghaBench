; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@INTERRUPT_CNTL2 = common dso_local global i32 0, align 4
@INTERRUPT_CNTL = common dso_local global i32 0, align 4
@IH_DUMMY_RD_OVERRIDE = common dso_local global i32 0, align 4
@IH_REQ_NONSNOOP_EN = common dso_local global i32 0, align 4
@IH_RB_BASE = common dso_local global i32 0, align 4
@IH_WPTR_OVERFLOW_ENABLE = common dso_local global i32 0, align 4
@IH_WPTR_OVERFLOW_CLEAR = common dso_local global i32 0, align 4
@IH_WPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@IH_RB_WPTR_ADDR_LO = common dso_local global i32 0, align 4
@R600_WB_IH_WPTR_OFFSET = common dso_local global i32 0, align 4
@IH_RB_WPTR_ADDR_HI = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@IH_RB_RPTR = common dso_local global i32 0, align 4
@IH_RB_WPTR = common dso_local global i32 0, align 4
@RPTR_REARM = common dso_local global i32 0, align 4
@IH_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_irq_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call i32 @r600_ih_ring_alloc(%struct.radeon_device* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %128

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call i32 @si_disable_interrupts(%struct.radeon_device* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @si_rlc_resume(%struct.radeon_device* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = call i32 @r600_ih_ring_fini(%struct.radeon_device* %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %128

26:                                               ; preds = %15
  %27 = load i32, i32* @INTERRUPT_CNTL2, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 8
  %33 = call i32 @WREG32(i32 %27, i32 %32)
  %34 = load i32, i32* @INTERRUPT_CNTL, align 4
  %35 = call i32 @RREG32(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @IH_DUMMY_RD_OVERRIDE, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @IH_REQ_NONSNOOP_EN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @INTERRUPT_CNTL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @WREG32(i32 %44, i32 %45)
  %47 = load i32, i32* @IH_RB_BASE, align 4
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 8
  %53 = call i32 @WREG32(i32 %47, i32 %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 4
  %59 = call i32 @order_base_2(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @IH_WPTR_OVERFLOW_ENABLE, align 4
  %61 = load i32, i32* @IH_WPTR_OVERFLOW_CLEAR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 %63, 1
  %65 = or i32 %62, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %26
  %72 = load i32, i32* @IH_WPTR_WRITEBACK_ENABLE, align 4
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71, %26
  %76 = load i32, i32* @IH_RB_WPTR_ADDR_LO, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @R600_WB_IH_WPTR_OFFSET, align 4
  %82 = add nsw i32 %80, %81
  %83 = and i32 %82, -4
  %84 = call i32 @WREG32(i32 %76, i32 %83)
  %85 = load i32, i32* @IH_RB_WPTR_ADDR_HI, align 4
  %86 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %87 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @R600_WB_IH_WPTR_OFFSET, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 @upper_32_bits(i32 %91)
  %93 = and i32 %92, 255
  %94 = call i32 @WREG32(i32 %85, i32 %93)
  %95 = load i32, i32* @IH_RB_CNTL, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @WREG32(i32 %95, i32 %96)
  %98 = load i32, i32* @IH_RB_RPTR, align 4
  %99 = call i32 @WREG32(i32 %98, i32 0)
  %100 = load i32, i32* @IH_RB_WPTR, align 4
  %101 = call i32 @WREG32(i32 %100, i32 0)
  %102 = call i32 @MC_WRREQ_CREDIT(i32 16)
  %103 = call i32 @MC_WR_CLEAN_CNT(i32 16)
  %104 = or i32 %102, %103
  %105 = call i32 @MC_VMID(i32 0)
  %106 = or i32 %104, %105
  store i32 %106, i32* %7, align 4
  %107 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %108 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %75
  %112 = load i32, i32* @RPTR_REARM, align 4
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %111, %75
  %116 = load i32, i32* @IH_CNTL, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @WREG32(i32 %116, i32 %117)
  %119 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %120 = call i32 @si_disable_interrupt_state(%struct.radeon_device* %119)
  %121 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @pci_set_master(i32 %123)
  %125 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %126 = call i32 @si_enable_interrupts(%struct.radeon_device* %125)
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %115, %22, %13
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @r600_ih_ring_alloc(%struct.radeon_device*) #1

declare dso_local i32 @si_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @si_rlc_resume(%struct.radeon_device*) #1

declare dso_local i32 @r600_ih_ring_fini(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @MC_WRREQ_CREDIT(i32) #1

declare dso_local i32 @MC_WR_CLEAN_CNT(i32) #1

declare dso_local i32 @MC_VMID(i32) #1

declare dso_local i32 @si_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @si_enable_interrupts(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
