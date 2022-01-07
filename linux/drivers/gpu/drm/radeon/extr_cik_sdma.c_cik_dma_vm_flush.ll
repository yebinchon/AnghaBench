; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_dma_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik_sdma.c_cik_dma_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@SDMA_OPCODE_SRBM_WRITE = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL = common dso_local global i32 0, align 4
@SH_MEM_BASES = common dso_local global i32 0, align 4
@SH_MEM_CONFIG = common dso_local global i32 0, align 4
@SH_MEM_APE1_BASE = common dso_local global i32 0, align 4
@SH_MEM_APE1_LIMIT = common dso_local global i32 0, align 4
@VM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@SDMA_OPCODE_POLL_REG_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_dma_vm_flush(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @SDMA_POLL_REG_MEM_EXTRA_OP(i32 0)
  %11 = call i32 @SDMA_POLL_REG_MEM_EXTRA_FUNC(i32 0)
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %14 = load i32, i32* @SDMA_OPCODE_SRBM_WRITE, align 4
  %15 = call i32 @SDMA_PACKET(i32 %14, i32 0, i32 61440)
  %16 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %21 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = shl i32 %22, 2
  %24 = add i32 %21, %23
  %25 = lshr i32 %24, 2
  %26 = call i32 @radeon_ring_write(%struct.radeon_ring* %20, i32 %25)
  br label %36

27:                                               ; preds = %4
  %28 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %29 = load i32, i32* @VM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub i32 %30, 8
  %32 = shl i32 %31, 2
  %33 = add i32 %29, %32
  %34 = lshr i32 %33, 2
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %28, i32 %34)
  br label %36

36:                                               ; preds = %27, %19
  %37 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %38, 12
  %40 = call i32 @radeon_ring_write(%struct.radeon_ring* %37, i32 %39)
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %42 = load i32, i32* @SDMA_OPCODE_SRBM_WRITE, align 4
  %43 = call i32 @SDMA_PACKET(i32 %42, i32 0, i32 61440)
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %41, i32 %43)
  %45 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %46 = load i32, i32* @SRBM_GFX_CNTL, align 4
  %47 = ashr i32 %46, 2
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %45, i32 %47)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @VMID(i32 %50)
  %52 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 %51)
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %54 = load i32, i32* @SDMA_OPCODE_SRBM_WRITE, align 4
  %55 = call i32 @SDMA_PACKET(i32 %54, i32 0, i32 61440)
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 %55)
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %58 = load i32, i32* @SH_MEM_BASES, align 4
  %59 = ashr i32 %58, 2
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 %59)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %62 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 0)
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %64 = load i32, i32* @SDMA_OPCODE_SRBM_WRITE, align 4
  %65 = call i32 @SDMA_PACKET(i32 %64, i32 0, i32 61440)
  %66 = call i32 @radeon_ring_write(%struct.radeon_ring* %63, i32 %65)
  %67 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %68 = load i32, i32* @SH_MEM_CONFIG, align 4
  %69 = ashr i32 %68, 2
  %70 = call i32 @radeon_ring_write(%struct.radeon_ring* %67, i32 %69)
  %71 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %72 = call i32 @radeon_ring_write(%struct.radeon_ring* %71, i32 0)
  %73 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %74 = load i32, i32* @SDMA_OPCODE_SRBM_WRITE, align 4
  %75 = call i32 @SDMA_PACKET(i32 %74, i32 0, i32 61440)
  %76 = call i32 @radeon_ring_write(%struct.radeon_ring* %73, i32 %75)
  %77 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %78 = load i32, i32* @SH_MEM_APE1_BASE, align 4
  %79 = ashr i32 %78, 2
  %80 = call i32 @radeon_ring_write(%struct.radeon_ring* %77, i32 %79)
  %81 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %82 = call i32 @radeon_ring_write(%struct.radeon_ring* %81, i32 1)
  %83 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %84 = load i32, i32* @SDMA_OPCODE_SRBM_WRITE, align 4
  %85 = call i32 @SDMA_PACKET(i32 %84, i32 0, i32 61440)
  %86 = call i32 @radeon_ring_write(%struct.radeon_ring* %83, i32 %85)
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %88 = load i32, i32* @SH_MEM_APE1_LIMIT, align 4
  %89 = ashr i32 %88, 2
  %90 = call i32 @radeon_ring_write(%struct.radeon_ring* %87, i32 %89)
  %91 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %91, i32 0)
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %94 = load i32, i32* @SDMA_OPCODE_SRBM_WRITE, align 4
  %95 = call i32 @SDMA_PACKET(i32 %94, i32 0, i32 61440)
  %96 = call i32 @radeon_ring_write(%struct.radeon_ring* %93, i32 %95)
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %98 = load i32, i32* @SRBM_GFX_CNTL, align 4
  %99 = ashr i32 %98, 2
  %100 = call i32 @radeon_ring_write(%struct.radeon_ring* %97, i32 %99)
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %102 = call i32 @VMID(i32 0)
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %101, i32 %102)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %105 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %106 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cik_sdma_hdp_flush_ring_emit(%struct.radeon_device* %104, i32 %107)
  %109 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %110 = load i32, i32* @SDMA_OPCODE_SRBM_WRITE, align 4
  %111 = call i32 @SDMA_PACKET(i32 %110, i32 0, i32 61440)
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %109, i32 %111)
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %114 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %115 = ashr i32 %114, 2
  %116 = call i32 @radeon_ring_write(%struct.radeon_ring* %113, i32 %115)
  %117 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %118 = load i32, i32* %7, align 4
  %119 = shl i32 1, %118
  %120 = call i32 @radeon_ring_write(%struct.radeon_ring* %117, i32 %119)
  %121 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %122 = load i32, i32* @SDMA_OPCODE_POLL_REG_MEM, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @SDMA_PACKET(i32 %122, i32 0, i32 %123)
  %125 = call i32 @radeon_ring_write(%struct.radeon_ring* %121, i32 %124)
  %126 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %127 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %128 = ashr i32 %127, 2
  %129 = call i32 @radeon_ring_write(%struct.radeon_ring* %126, i32 %128)
  %130 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %131 = call i32 @radeon_ring_write(%struct.radeon_ring* %130, i32 0)
  %132 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %133 = call i32 @radeon_ring_write(%struct.radeon_ring* %132, i32 0)
  %134 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %135 = call i32 @radeon_ring_write(%struct.radeon_ring* %134, i32 0)
  %136 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %137 = call i32 @radeon_ring_write(%struct.radeon_ring* %136, i32 268369930)
  ret void
}

declare dso_local i32 @SDMA_POLL_REG_MEM_EXTRA_OP(i32) #1

declare dso_local i32 @SDMA_POLL_REG_MEM_EXTRA_FUNC(i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @SDMA_PACKET(i32, i32, i32) #1

declare dso_local i32 @VMID(i32) #1

declare dso_local i32 @cik_sdma_hdp_flush_ring_emit(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
