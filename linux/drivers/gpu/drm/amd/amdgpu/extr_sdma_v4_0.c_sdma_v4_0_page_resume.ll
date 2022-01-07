; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_page_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_page_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32 }

@mmSDMA0_PAGE_RB_CNTL = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_RPTR = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_RPTR_HI = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_WPTR = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_WPTR_HI = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_RPTR_ADDR_LO = common dso_local global i32 0, align 4
@SDMA0_PAGE_RB_CNTL = common dso_local global i32 0, align 4
@RPTR_WRITEBACK_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_BASE = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_BASE_HI = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_MINOR_PTR_UPDATE = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_DOORBELL = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_DOORBELL_OFFSET = common dso_local global i32 0, align 4
@SDMA0_PAGE_DOORBELL = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@SDMA0_PAGE_DOORBELL_OFFSET = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_WPTR_POLL_ADDR_LO = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_WPTR_POLL_ADDR_HI = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@SDMA0_PAGE_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@F32_POLL_ENABLE = common dso_local global i32 0, align 4
@RB_ENABLE = common dso_local global i32 0, align 4
@mmSDMA0_PAGE_IB_CNTL = common dso_local global i32 0, align 4
@SDMA0_PAGE_IB_CNTL = common dso_local global i32 0, align 4
@IB_ENABLE = common dso_local global i32 0, align 4
@IB_SWAP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v4_0_page_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_page_resume(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.amdgpu_ring* %20, %struct.amdgpu_ring** %5, align 8
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %23, 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @mmSDMA0_PAGE_RB_CNTL, align 4
  %27 = call i32 @RREG32_SDMA(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @sdma_v4_0_rb_cntl(%struct.amdgpu_ring* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @mmSDMA0_PAGE_RB_CNTL, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @WREG32_SDMA(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @mmSDMA0_PAGE_RB_RPTR, align 4
  %37 = call i32 @WREG32_SDMA(i32 %35, i32 %36, i32 0)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @mmSDMA0_PAGE_RB_RPTR_HI, align 4
  %40 = call i32 @WREG32_SDMA(i32 %38, i32 %39, i32 0)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @mmSDMA0_PAGE_RB_WPTR, align 4
  %43 = call i32 @WREG32_SDMA(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @mmSDMA0_PAGE_RB_WPTR_HI, align 4
  %46 = call i32 @WREG32_SDMA(i32 %44, i32 %45, i32 0)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @mmSDMA0_PAGE_RB_RPTR_ADDR_HI, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @upper_32_bits(i64 %55)
  %57 = call i32 @WREG32_SDMA(i32 %47, i32 %48, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @mmSDMA0_PAGE_RB_RPTR_ADDR_LO, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = call i32 @lower_32_bits(i64 %66)
  %68 = and i32 %67, -4
  %69 = call i32 @WREG32_SDMA(i32 %58, i32 %59, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SDMA0_PAGE_RB_CNTL, align 4
  %72 = load i32, i32* @RPTR_WRITEBACK_ENABLE, align 4
  %73 = call i32 @REG_SET_FIELD(i32 %70, i32 %71, i32 %72, i32 1)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @mmSDMA0_PAGE_RB_BASE, align 4
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 8
  %80 = call i32 @WREG32_SDMA(i32 %74, i32 %75, i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @mmSDMA0_PAGE_RB_BASE_HI, align 4
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 40
  %87 = call i32 @WREG32_SDMA(i32 %81, i32 %82, i32 %86)
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %89 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @mmSDMA0_PAGE_MINOR_PTR_UPDATE, align 4
  %92 = call i32 @WREG32_SDMA(i32 %90, i32 %91, i32 1)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @mmSDMA0_PAGE_DOORBELL, align 4
  %95 = call i32 @RREG32_SDMA(i32 %93, i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @mmSDMA0_PAGE_DOORBELL_OFFSET, align 4
  %98 = call i32 @RREG32_SDMA(i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @SDMA0_PAGE_DOORBELL, align 4
  %101 = load i32, i32* @ENABLE, align 4
  %102 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %103 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @REG_SET_FIELD(i32 %99, i32 %100, i32 %101, i32 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @SDMA0_PAGE_DOORBELL_OFFSET, align 4
  %108 = load i32, i32* @OFFSET, align 4
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %110 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @REG_SET_FIELD(i32 %106, i32 %107, i32 %108, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @mmSDMA0_PAGE_DOORBELL, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @WREG32_SDMA(i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @mmSDMA0_PAGE_DOORBELL_OFFSET, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @WREG32_SDMA(i32 %117, i32 %118, i32 %119)
  %121 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %122 = call i32 @sdma_v4_0_page_ring_set_wptr(%struct.amdgpu_ring* %121)
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @mmSDMA0_PAGE_MINOR_PTR_UPDATE, align 4
  %125 = call i32 @WREG32_SDMA(i32 %123, i32 %124, i32 0)
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %131 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %132, 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %129, %134
  store i64 %135, i64* %12, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @mmSDMA0_PAGE_RB_WPTR_POLL_ADDR_LO, align 4
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @lower_32_bits(i64 %138)
  %140 = call i32 @WREG32_SDMA(i32 %136, i32 %137, i32 %139)
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @mmSDMA0_PAGE_RB_WPTR_POLL_ADDR_HI, align 4
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @upper_32_bits(i64 %143)
  %145 = call i32 @WREG32_SDMA(i32 %141, i32 %142, i32 %144)
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @mmSDMA0_PAGE_RB_WPTR_POLL_CNTL, align 4
  %148 = call i32 @RREG32_SDMA(i32 %146, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @SDMA0_PAGE_RB_WPTR_POLL_CNTL, align 4
  %151 = load i32, i32* @F32_POLL_ENABLE, align 4
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %152)
  %154 = icmp ne i64 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 0
  %157 = call i32 @REG_SET_FIELD(i32 %149, i32 %150, i32 %151, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @mmSDMA0_PAGE_RB_WPTR_POLL_CNTL, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @WREG32_SDMA(i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @SDMA0_PAGE_RB_CNTL, align 4
  %164 = load i32, i32* @RB_ENABLE, align 4
  %165 = call i32 @REG_SET_FIELD(i32 %162, i32 %163, i32 %164, i32 1)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @mmSDMA0_PAGE_RB_CNTL, align 4
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @WREG32_SDMA(i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* @mmSDMA0_PAGE_IB_CNTL, align 4
  %172 = call i32 @RREG32_SDMA(i32 %170, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @SDMA0_PAGE_IB_CNTL, align 4
  %175 = load i32, i32* @IB_ENABLE, align 4
  %176 = call i32 @REG_SET_FIELD(i32 %173, i32 %174, i32 %175, i32 1)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @mmSDMA0_PAGE_IB_CNTL, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @WREG32_SDMA(i32 %177, i32 %178, i32 %179)
  %181 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %182 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32 1, i32* %183, align 4
  ret void
}

declare dso_local i32 @RREG32_SDMA(i32, i32) #1

declare dso_local i32 @sdma_v4_0_rb_cntl(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @WREG32_SDMA(i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @sdma_v4_0_page_ring_set_wptr(%struct.amdgpu_ring*) #1

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
