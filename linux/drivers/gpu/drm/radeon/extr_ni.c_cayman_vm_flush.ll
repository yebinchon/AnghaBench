; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni.c_cayman_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@HDP_MEM_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@VM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@PACKET3_PFP_SYNC_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cayman_vm_flush(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %10 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 %11, 2
  %13 = add i32 %10, %12
  %14 = call i32 @PACKET0(i32 %13, i32 0)
  %15 = call i32 @radeon_ring_write(%struct.radeon_ring* %9, i32 %14)
  %16 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = ashr i32 %17, 12
  %19 = call i32 @radeon_ring_write(%struct.radeon_ring* %16, i32 %18)
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %21 = load i32, i32* @HDP_MEM_COHERENCY_FLUSH_CNTL, align 4
  %22 = call i32 @PACKET0(i32 %21, i32 0)
  %23 = call i32 @radeon_ring_write(%struct.radeon_ring* %20, i32 %22)
  %24 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %24, i32 1)
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %27 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %28 = call i32 @PACKET0(i32 %27, i32 0)
  %29 = call i32 @radeon_ring_write(%struct.radeon_ring* %26, i32 %28)
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 1, %31
  %33 = call i32 @radeon_ring_write(%struct.radeon_ring* %30, i32 %32)
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %35 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %36 = call i32 @PACKET3(i32 %35, i32 5)
  %37 = call i32 @radeon_ring_write(%struct.radeon_ring* %34, i32 %36)
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %39 = call i32 @WAIT_REG_MEM_FUNCTION(i32 0)
  %40 = call i32 @WAIT_REG_MEM_ENGINE(i32 0)
  %41 = or i32 %39, %40
  %42 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 %41)
  %43 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %44 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %45 = ashr i32 %44, 2
  %46 = call i32 @radeon_ring_write(%struct.radeon_ring* %43, i32 %45)
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %48 = call i32 @radeon_ring_write(%struct.radeon_ring* %47, i32 0)
  %49 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %50 = call i32 @radeon_ring_write(%struct.radeon_ring* %49, i32 0)
  %51 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %52 = call i32 @radeon_ring_write(%struct.radeon_ring* %51, i32 0)
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %54 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 32)
  %55 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %56 = load i32, i32* @PACKET3_PFP_SYNC_ME, align 4
  %57 = call i32 @PACKET3(i32 %56, i32 0)
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %55, i32 %57)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 0)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
