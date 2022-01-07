; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i64 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@VM_CONTEXT8_PAGE_TABLE_BASE_ADDR = common dso_local global i32 0, align 4
@SRBM_GFX_CNTL = common dso_local global i32 0, align 4
@SH_MEM_BASES = common dso_local global i32 0, align 4
@SH_MEM_CONFIG_GFX_DEFAULT = common dso_local global i32 0, align 4
@VM_INVALIDATE_REQUEST = common dso_local global i32 0, align 4
@PACKET3_WAIT_REG_MEM = common dso_local global i32 0, align 4
@PACKET3_PFP_SYNC_ME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cik_vm_flush(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %17 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %18 = call i32 @PACKET3(i32 %17, i32 3)
  %19 = call i32 @radeon_ring_write(%struct.radeon_ring* %16, i32 %18)
  %20 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @WRITE_DATA_ENGINE_SEL(i32 %21)
  %23 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %24 = or i32 %22, %23
  %25 = call i32 @radeon_ring_write(%struct.radeon_ring* %20, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %30 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 %31, 2
  %33 = add i32 %30, %32
  %34 = lshr i32 %33, 2
  %35 = call i32 @radeon_ring_write(%struct.radeon_ring* %29, i32 %34)
  br label %45

36:                                               ; preds = %4
  %37 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %38 = load i32, i32* @VM_CONTEXT8_PAGE_TABLE_BASE_ADDR, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub i32 %39, 8
  %41 = shl i32 %40, 2
  %42 = add i32 %38, %41
  %43 = lshr i32 %42, 2
  %44 = call i32 @radeon_ring_write(%struct.radeon_ring* %37, i32 %43)
  br label %45

45:                                               ; preds = %36, %28
  %46 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %47 = call i32 @radeon_ring_write(%struct.radeon_ring* %46, i32 0)
  %48 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 12
  %51 = call i32 @radeon_ring_write(%struct.radeon_ring* %48, i32 %50)
  %52 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %53 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %54 = call i32 @PACKET3(i32 %53, i32 3)
  %55 = call i32 @radeon_ring_write(%struct.radeon_ring* %52, i32 %54)
  %56 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @WRITE_DATA_ENGINE_SEL(i32 %57)
  %59 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %60 = or i32 %58, %59
  %61 = call i32 @radeon_ring_write(%struct.radeon_ring* %56, i32 %60)
  %62 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %63 = load i32, i32* @SRBM_GFX_CNTL, align 4
  %64 = ashr i32 %63, 2
  %65 = call i32 @radeon_ring_write(%struct.radeon_ring* %62, i32 %64)
  %66 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %67 = call i32 @radeon_ring_write(%struct.radeon_ring* %66, i32 0)
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @VMID(i32 %69)
  %71 = call i32 @radeon_ring_write(%struct.radeon_ring* %68, i32 %70)
  %72 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %73 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %74 = call i32 @PACKET3(i32 %73, i32 6)
  %75 = call i32 @radeon_ring_write(%struct.radeon_ring* %72, i32 %74)
  %76 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @WRITE_DATA_ENGINE_SEL(i32 %77)
  %79 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %80 = or i32 %78, %79
  %81 = call i32 @radeon_ring_write(%struct.radeon_ring* %76, i32 %80)
  %82 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %83 = load i32, i32* @SH_MEM_BASES, align 4
  %84 = ashr i32 %83, 2
  %85 = call i32 @radeon_ring_write(%struct.radeon_ring* %82, i32 %84)
  %86 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %87 = call i32 @radeon_ring_write(%struct.radeon_ring* %86, i32 0)
  %88 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %89 = call i32 @radeon_ring_write(%struct.radeon_ring* %88, i32 0)
  %90 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %91 = load i32, i32* @SH_MEM_CONFIG_GFX_DEFAULT, align 4
  %92 = call i32 @radeon_ring_write(%struct.radeon_ring* %90, i32 %91)
  %93 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %94 = call i32 @radeon_ring_write(%struct.radeon_ring* %93, i32 1)
  %95 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %96 = call i32 @radeon_ring_write(%struct.radeon_ring* %95, i32 0)
  %97 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %98 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %99 = call i32 @PACKET3(i32 %98, i32 3)
  %100 = call i32 @radeon_ring_write(%struct.radeon_ring* %97, i32 %99)
  %101 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @WRITE_DATA_ENGINE_SEL(i32 %102)
  %104 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %105 = or i32 %103, %104
  %106 = call i32 @radeon_ring_write(%struct.radeon_ring* %101, i32 %105)
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %108 = load i32, i32* @SRBM_GFX_CNTL, align 4
  %109 = ashr i32 %108, 2
  %110 = call i32 @radeon_ring_write(%struct.radeon_ring* %107, i32 %109)
  %111 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %112 = call i32 @radeon_ring_write(%struct.radeon_ring* %111, i32 0)
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %114 = call i32 @VMID(i32 0)
  %115 = call i32 @radeon_ring_write(%struct.radeon_ring* %113, i32 %114)
  %116 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %117 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %118 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @cik_hdp_flush_cp_ring_emit(%struct.radeon_device* %116, i64 %119)
  %121 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %122 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %123 = call i32 @PACKET3(i32 %122, i32 3)
  %124 = call i32 @radeon_ring_write(%struct.radeon_ring* %121, i32 %123)
  %125 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @WRITE_DATA_ENGINE_SEL(i32 %126)
  %128 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %129 = or i32 %127, %128
  %130 = call i32 @radeon_ring_write(%struct.radeon_ring* %125, i32 %129)
  %131 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %132 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %133 = ashr i32 %132, 2
  %134 = call i32 @radeon_ring_write(%struct.radeon_ring* %131, i32 %133)
  %135 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %136 = call i32 @radeon_ring_write(%struct.radeon_ring* %135, i32 0)
  %137 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = shl i32 1, %138
  %140 = call i32 @radeon_ring_write(%struct.radeon_ring* %137, i32 %139)
  %141 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %142 = load i32, i32* @PACKET3_WAIT_REG_MEM, align 4
  %143 = call i32 @PACKET3(i32 %142, i32 5)
  %144 = call i32 @radeon_ring_write(%struct.radeon_ring* %141, i32 %143)
  %145 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %146 = call i32 @WAIT_REG_MEM_OPERATION(i32 0)
  %147 = call i32 @WAIT_REG_MEM_FUNCTION(i32 0)
  %148 = or i32 %146, %147
  %149 = call i32 @WAIT_REG_MEM_ENGINE(i32 0)
  %150 = or i32 %148, %149
  %151 = call i32 @radeon_ring_write(%struct.radeon_ring* %145, i32 %150)
  %152 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %153 = load i32, i32* @VM_INVALIDATE_REQUEST, align 4
  %154 = ashr i32 %153, 2
  %155 = call i32 @radeon_ring_write(%struct.radeon_ring* %152, i32 %154)
  %156 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %157 = call i32 @radeon_ring_write(%struct.radeon_ring* %156, i32 0)
  %158 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %159 = call i32 @radeon_ring_write(%struct.radeon_ring* %158, i32 0)
  %160 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %161 = call i32 @radeon_ring_write(%struct.radeon_ring* %160, i32 0)
  %162 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %163 = call i32 @radeon_ring_write(%struct.radeon_ring* %162, i32 32)
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %45
  %167 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %168 = load i32, i32* @PACKET3_PFP_SYNC_ME, align 4
  %169 = call i32 @PACKET3(i32 %168, i32 0)
  %170 = call i32 @radeon_ring_write(%struct.radeon_ring* %167, i32 %169)
  %171 = load %struct.radeon_ring*, %struct.radeon_ring** %6, align 8
  %172 = call i32 @radeon_ring_write(%struct.radeon_ring* %171, i32 0)
  br label %173

173:                                              ; preds = %166, %45
  ret void
}

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_ENGINE_SEL(i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

declare dso_local i32 @VMID(i32) #1

declare dso_local i32 @cik_hdp_flush_cp_ring_emit(%struct.radeon_device*, i64) #1

declare dso_local i32 @WAIT_REG_MEM_OPERATION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_FUNCTION(i32) #1

declare dso_local i32 @WAIT_REG_MEM_ENGINE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
