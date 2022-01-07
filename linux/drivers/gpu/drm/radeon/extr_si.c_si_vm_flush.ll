; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@HDP_MEM_COHERENCY_FLUSH_CNTL = common dso_local global i32 0, align 4
@VM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@PACKET3_PFP_SYNC_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @si_vm_flush(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %10 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %11 = call i32 @PACKET3(i32 %10, i32 3)
  %12 = call i32 @radeon_ring_write(%struct.radeon_ring* %9, i32 %11)
  %13 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %14 = call i32 @WRITE_DATA_ENGINE_SEL(i32 1)
  %15 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %16 = or i32 %14, %15
  %17 = call i32 @radeon_ring_write(%struct.radeon_ring* %13, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %22 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 2
  %25 = add i32 %22, %24
  %26 = lshr i32 %25, 2
  %27 = call i32 @radeon_ring_write(%struct.radeon_ring* %21, i32 %26)
  br label %37

28:                                               ; preds = %4
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %30 = load i32, i32* @VM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub i32 %31, 8
  %33 = shl i32 %32, 2
  %34 = add i32 %30, %33
  %35 = lshr i32 %34, 2
  %36 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 %35)
  br label %37

37:                                               ; preds = %28, %20
  %38 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %39 = call i32 @radeon_ring_write(%struct.radeon_ring* %38, i32 0)
  %40 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 12
  %43 = call i32 @radeon_ring_write(%struct.radeon_ring* %40, i32 %42)
  %44 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %45 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %46 = call i32 @PACKET3(i32 %45, i32 3)
  %47 = call i32 @radeon_ring_write(%struct.radeon_ring* %44, i32 %46)
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %49 = call i32 @WRITE_DATA_ENGINE_SEL(i32 1)
  %50 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %51 = or i32 %49, %50
  %52 = call i32 @radeon_ring_write(%struct.radeon_ring* %48, i32 %51)
  %53 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %54 = load i32, i32* @HDP_MEM_COHERENCY_FLUSH_CNTL, align 4
  %55 = ashr i32 %54, 2
  %56 = call i32 @radeon_ring_write(%struct.radeon_ring* %53, i32 %55)
  %57 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %58 = call i32 @radeon_ring_write(%struct.radeon_ring* %57, i32 0)
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %60 = call i32 @radeon_ring_write(%struct.radeon_ring* %59, i32 1)
  %61 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %62 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %63 = call i32 @PACKET3(i32 %62, i32 3)
  %64 = call i32 @radeon_ring_write(%struct.radeon_ring* %61, i32 %63)
  %65 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %66 = call i32 @WRITE_DATA_ENGINE_SEL(i32 1)
  %67 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %68 = or i32 %66, %67
  %69 = call i32 @radeon_ring_write(%struct.radeon_ring* %65, i32 %68)
  %70 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %71 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %72 = ashr i32 %71, 2
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %70, i32 %72)
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %75 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 0)
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 1, %77
  %79 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 %78)
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %81 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %82 = call i32 @PACKET3(i32 %81, i32 5)
  %83 = call i32 @radeon_ring_write(%struct.radeon_ring* %80, i32 %82)
  %84 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %85 = call i32 @WAIT_REG_MEM_FUNCTION(i32 0)
  %86 = call i32 @WAIT_REG_MEM_ENGINE(i32 0)
  %87 = or i32 %85, %86
  %88 = call i32 @radeon_ring_write(%struct.radeon_ring* %84, i32 %87)
  %89 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %90 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %91 = ashr i32 %90, 2
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %89, i32 %91)
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %94 = call i32 @radeon_ring_write(%struct.radeon_ring* %93, i32 0)
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %96 = call i32 @radeon_ring_write(%struct.radeon_ring* %95, i32 0)
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %98 = call i32 @radeon_ring_write(%struct.radeon_ring* %97, i32 0)
  %99 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %100 = call i32 @radeon_ring_write(%struct.radeon_ring* %99, i32 32)
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %102 = load i32, i32* @PACKET3_PFP_SYNC_ME, align 4
  %103 = call i32 @PACKET3(i32 %102, i32 0)
  %104 = call i32 @radeon_ring_write(%struct.radeon_ring* %101, i32 %103)
  %105 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %106 = call i32 @radeon_ring_write(%struct.radeon_ring* %105, i32 0)
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_ENGINE_SEL(i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
