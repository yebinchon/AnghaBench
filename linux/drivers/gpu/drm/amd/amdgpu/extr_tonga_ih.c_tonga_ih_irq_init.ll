; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_tonga_ih.c_tonga_ih_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_tonga_ih.c_tonga_ih_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ih_ring, i64 }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i64, i32 }

@mmINTERRUPT_CNTL2 = common dso_local global i32 0, align 4
@mmINTERRUPT_CNTL = common dso_local global i32 0, align 4
@INTERRUPT_CNTL = common dso_local global i32 0, align 4
@IH_DUMMY_RD_OVERRIDE = common dso_local global i32 0, align 4
@IH_REQ_NONSNOOP_EN = common dso_local global i32 0, align 4
@mmIH_RB_BASE = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@WPTR_OVERFLOW_CLEAR = common dso_local global i32 0, align 4
@RB_SIZE = common dso_local global i32 0, align 4
@WPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@MC_VMID = common dso_local global i32 0, align 4
@RPTR_REARM = common dso_local global i32 0, align 4
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_ADDR_LO = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmIH_RB_RPTR = common dso_local global i32 0, align 4
@mmIH_RB_WPTR = common dso_local global i32 0, align 4
@mmIH_DOORBELL_RPTR = common dso_local global i32 0, align 4
@IH_DOORBELL_RPTR = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @tonga_ih_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_ih_irq_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_ih_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.amdgpu_ih_ring* %10, %struct.amdgpu_ih_ring** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = call i32 @tonga_ih_disable_interrupts(%struct.amdgpu_device* %11)
  %13 = load i32, i32* @mmINTERRUPT_CNTL2, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 8
  %18 = call i32 @WREG32(i32 %13, i32 %17)
  %19 = load i32, i32* @mmINTERRUPT_CNTL, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @INTERRUPT_CNTL, align 4
  %23 = load i32, i32* @IH_DUMMY_RD_OVERRIDE, align 4
  %24 = call i32 @REG_SET_FIELD(i32 %21, i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @INTERRUPT_CNTL, align 4
  %27 = load i32, i32* @IH_REQ_NONSNOOP_EN, align 4
  %28 = call i32 @REG_SET_FIELD(i32 %25, i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @mmINTERRUPT_CNTL, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  %32 = load i32, i32* @mmIH_RB_BASE, align 4
  %33 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %6, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 8
  %37 = call i32 @WREG32(i32 %32, i32 %36)
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 4
  %44 = call i32 @order_base_2(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @IH_RB_CNTL, align 4
  %46 = load i32, i32* @WPTR_OVERFLOW_CLEAR, align 4
  %47 = call i32 @REG_SET_FIELD(i32 0, i32 %45, i32 %46, i32 1)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @IH_RB_CNTL, align 4
  %50 = load i32, i32* @RB_SIZE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @REG_SET_FIELD(i32 %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IH_RB_CNTL, align 4
  %55 = load i32, i32* @WPTR_WRITEBACK_ENABLE, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @IH_RB_CNTL, align 4
  %59 = load i32, i32* @MC_VMID, align 4
  %60 = call i32 @REG_SET_FIELD(i32 %57, i32 %58, i32 %59, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %1
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @IH_RB_CNTL, align 4
  %69 = load i32, i32* @RPTR_REARM, align 4
  %70 = call i32 @REG_SET_FIELD(i32 %67, i32 %68, i32 %69, i32 1)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %1
  %72 = load i32, i32* @mmIH_RB_CNTL, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @WREG32(i32 %72, i32 %73)
  %75 = load i32, i32* @mmIH_RB_WPTR_ADDR_LO, align 4
  %76 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %6, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @lower_32_bits(i32 %78)
  %80 = call i32 @WREG32(i32 %75, i32 %79)
  %81 = load i32, i32* @mmIH_RB_WPTR_ADDR_HI, align 4
  %82 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %6, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @upper_32_bits(i32 %84)
  %86 = and i32 %85, 255
  %87 = call i32 @WREG32(i32 %81, i32 %86)
  %88 = load i32, i32* @mmIH_RB_RPTR, align 4
  %89 = call i32 @WREG32(i32 %88, i32 0)
  %90 = load i32, i32* @mmIH_RB_WPTR, align 4
  %91 = call i32 @WREG32(i32 %90, i32 0)
  %92 = load i32, i32* @mmIH_DOORBELL_RPTR, align 4
  %93 = call i32 @RREG32(i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %95 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %71
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @IH_DOORBELL_RPTR, align 4
  %103 = load i32, i32* @OFFSET, align 4
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @REG_SET_FIELD(i32 %101, i32 %102, i32 %103, i32 %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @IH_DOORBELL_RPTR, align 4
  %112 = load i32, i32* @ENABLE, align 4
  %113 = call i32 @REG_SET_FIELD(i32 %110, i32 %111, i32 %112, i32 1)
  store i32 %113, i32* %5, align 4
  br label %119

114:                                              ; preds = %71
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @IH_DOORBELL_RPTR, align 4
  %117 = load i32, i32* @ENABLE, align 4
  %118 = call i32 @REG_SET_FIELD(i32 %115, i32 %116, i32 %117, i32 0)
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %114, %100
  %120 = load i32, i32* @mmIH_DOORBELL_RPTR, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @WREG32(i32 %120, i32 %121)
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @pci_set_master(i32 %125)
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %128 = call i32 @tonga_ih_enable_interrupts(%struct.amdgpu_device* %127)
  ret i32 0
}

declare dso_local i32 @tonga_ih_disable_interrupts(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @tonga_ih_enable_interrupts(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
