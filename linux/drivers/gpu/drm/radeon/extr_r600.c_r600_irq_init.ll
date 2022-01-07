; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@CHIP_CEDAR = common dso_local global i64 0, align 8
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r600_irq_init(%struct.radeon_device* %0) #0 {
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
  br label %146

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call i32 @r600_disable_interrupts(%struct.radeon_device* %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_CEDAR, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %25 = call i32 @evergreen_rlc_resume(%struct.radeon_device* %24)
  store i32 %25, i32* %4, align 4
  br label %29

26:                                               ; preds = %15
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @r600_rlc_resume(%struct.radeon_device* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = call i32 @r600_ih_ring_fini(%struct.radeon_device* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %146

36:                                               ; preds = %29
  %37 = load i32, i32* @INTERRUPT_CNTL2, align 4
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 8
  %43 = call i32 @WREG32(i32 %37, i32 %42)
  %44 = load i32, i32* @INTERRUPT_CNTL, align 4
  %45 = call i32 @RREG32(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @IH_DUMMY_RD_OVERRIDE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @IH_REQ_NONSNOOP_EN, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @INTERRUPT_CNTL, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  %57 = load i32, i32* @IH_RB_BASE, align 4
  %58 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 8
  %63 = call i32 @WREG32(i32 %57, i32 %62)
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 4
  %69 = call i32 @order_base_2(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @IH_WPTR_OVERFLOW_ENABLE, align 4
  %71 = load i32, i32* @IH_WPTR_OVERFLOW_CLEAR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = shl i32 %73, 1
  %75 = or i32 %72, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %36
  %82 = load i32, i32* @IH_WPTR_WRITEBACK_ENABLE, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %81, %36
  %86 = load i32, i32* @IH_RB_WPTR_ADDR_LO, align 4
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @R600_WB_IH_WPTR_OFFSET, align 4
  %92 = add nsw i32 %90, %91
  %93 = and i32 %92, -4
  %94 = call i32 @WREG32(i32 %86, i32 %93)
  %95 = load i32, i32* @IH_RB_WPTR_ADDR_HI, align 4
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @R600_WB_IH_WPTR_OFFSET, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 @upper_32_bits(i32 %101)
  %103 = and i32 %102, 255
  %104 = call i32 @WREG32(i32 %95, i32 %103)
  %105 = load i32, i32* @IH_RB_CNTL, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @WREG32(i32 %105, i32 %106)
  %108 = load i32, i32* @IH_RB_RPTR, align 4
  %109 = call i32 @WREG32(i32 %108, i32 0)
  %110 = load i32, i32* @IH_RB_WPTR, align 4
  %111 = call i32 @WREG32(i32 %110, i32 0)
  %112 = call i32 @MC_WRREQ_CREDIT(i32 16)
  %113 = call i32 @MC_WR_CLEAN_CNT(i32 16)
  %114 = or i32 %112, %113
  store i32 %114, i32* %7, align 4
  %115 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %85
  %120 = load i32, i32* @RPTR_REARM, align 4
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %119, %85
  %124 = load i32, i32* @IH_CNTL, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @WREG32(i32 %124, i32 %125)
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @CHIP_CEDAR, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = call i32 @evergreen_disable_interrupt_state(%struct.radeon_device* %133)
  br label %138

135:                                              ; preds = %123
  %136 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %137 = call i32 @r600_disable_interrupt_state(%struct.radeon_device* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %140 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @pci_set_master(i32 %141)
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = call i32 @r600_enable_interrupts(%struct.radeon_device* %143)
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %138, %32, %13
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @r600_ih_ring_alloc(%struct.radeon_device*) #1

declare dso_local i32 @r600_disable_interrupts(%struct.radeon_device*) #1

declare dso_local i32 @evergreen_rlc_resume(%struct.radeon_device*) #1

declare dso_local i32 @r600_rlc_resume(%struct.radeon_device*) #1

declare dso_local i32 @r600_ih_ring_fini(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @MC_WRREQ_CREDIT(i32) #1

declare dso_local i32 @MC_WR_CLEAN_CNT(i32) #1

declare dso_local i32 @evergreen_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i32 @r600_disable_interrupt_state(%struct.radeon_device*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @r600_enable_interrupts(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
