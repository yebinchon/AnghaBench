; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_cp_compute_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_cp_compute_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@AMDGPU_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@mmCP_RB1_CNTL = common dso_local global i32 0, align 4
@CP_RB1_CNTL__RB_RPTR_WR_ENA_MASK = common dso_local global i32 0, align 4
@mmCP_RB1_WPTR = common dso_local global i32 0, align 4
@mmCP_RB1_RPTR_ADDR = common dso_local global i32 0, align 4
@mmCP_RB1_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_RB1_BASE = common dso_local global i32 0, align 4
@mmCP_RB2_CNTL = common dso_local global i32 0, align 4
@CP_RB2_CNTL__RB_RPTR_WR_ENA_MASK = common dso_local global i32 0, align 4
@mmCP_RB2_WPTR = common dso_local global i32 0, align 4
@mmCP_RB2_RPTR_ADDR = common dso_local global i32 0, align 4
@mmCP_RB2_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_RB2_BASE = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v6_0_cp_compute_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v6_0_cp_compute_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i64 0
  store %struct.amdgpu_ring* %14, %struct.amdgpu_ring** %4, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 8
  %19 = call i32 @order_base_2(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %21 = sdiv i32 %20, 8
  %22 = call i32 @order_base_2(i32 %21)
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @mmCP_RB1_CNTL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WREG32(i32 %26, i32 %27)
  %29 = load i32, i32* @mmCP_RB1_CNTL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @CP_RB1_CNTL__RB_RPTR_WR_ENA_MASK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @WREG32(i32 %29, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @mmCP_RB1_WPTR, align 4
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @WREG32(i32 %36, i32 %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %44, %49
  store i64 %50, i64* %9, align 8
  %51 = load i32, i32* @mmCP_RB1_RPTR_ADDR, align 4
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @lower_32_bits(i64 %52)
  %54 = call i32 @WREG32(i32 %51, i32 %53)
  %55 = load i32, i32* @mmCP_RB1_RPTR_ADDR_HI, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @upper_32_bits(i64 %56)
  %58 = and i32 %57, 255
  %59 = call i32 @WREG32(i32 %55, i32 %58)
  %60 = call i32 @mdelay(i32 1)
  %61 = load i32, i32* @mmCP_RB1_CNTL, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @WREG32(i32 %61, i32 %62)
  %64 = load i32, i32* @mmCP_RB1_BASE, align 4
  %65 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 8
  %69 = call i32 @WREG32(i32 %64, i32 %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %72, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %73, i64 1
  store %struct.amdgpu_ring* %74, %struct.amdgpu_ring** %4, align 8
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 8
  %79 = call i32 @order_base_2(i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* @AMDGPU_GPU_PAGE_SIZE, align 4
  %81 = sdiv i32 %80, 8
  %82 = call i32 @order_base_2(i32 %81)
  %83 = shl i32 %82, 8
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @mmCP_RB2_CNTL, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @WREG32(i32 %86, i32 %87)
  %89 = load i32, i32* @mmCP_RB2_CNTL, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @CP_RB2_CNTL__RB_RPTR_WR_ENA_MASK, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @WREG32(i32 %89, i32 %92)
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %95 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load i32, i32* @mmCP_RB2_WPTR, align 4
  %97 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %98 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @WREG32(i32 %96, i32 %99)
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %106 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %104, %109
  store i64 %110, i64* %9, align 8
  %111 = load i32, i32* @mmCP_RB2_RPTR_ADDR, align 4
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @lower_32_bits(i64 %112)
  %114 = call i32 @WREG32(i32 %111, i32 %113)
  %115 = load i32, i32* @mmCP_RB2_RPTR_ADDR_HI, align 4
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @upper_32_bits(i64 %116)
  %118 = and i32 %117, 255
  %119 = call i32 @WREG32(i32 %115, i32 %118)
  %120 = call i32 @mdelay(i32 1)
  %121 = load i32, i32* @mmCP_RB2_CNTL, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @WREG32(i32 %121, i32 %122)
  %124 = load i32, i32* @mmCP_RB2_BASE, align 4
  %125 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %126 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 8
  %129 = call i32 @WREG32(i32 %124, i32 %128)
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %147, %1
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 2
  br i1 %132, label %133, label %150

133:                                              ; preds = %130
  %134 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %135 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %137, i64 %139
  %141 = call i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %133
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %151

146:                                              ; preds = %133
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %130

150:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %144
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @amdgpu_ring_test_helper(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
