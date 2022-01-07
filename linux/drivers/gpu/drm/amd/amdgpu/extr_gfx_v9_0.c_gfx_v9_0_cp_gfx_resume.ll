; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_cp_gfx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_cp_gfx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_DELAY = common dso_local global i32 0, align 4
@mmCP_RB_VMID = common dso_local global i32 0, align 4
@CP_RB0_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_BLKSZ = common dso_local global i32 0, align 4
@mmCP_RB0_CNTL = common dso_local global i32 0, align 4
@mmCP_RB0_WPTR = common dso_local global i32 0, align 4
@mmCP_RB0_WPTR_HI = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR = common dso_local global i32 0, align 4
@mmCP_RB0_RPTR_ADDR_HI = common dso_local global i32 0, align 4
@CP_RB_RPTR_ADDR_HI__RB_RPTR_ADDR_HI_MASK = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_ADDR_LO = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_ADDR_HI = common dso_local global i32 0, align 4
@mmCP_RB0_BASE = common dso_local global i32 0, align 4
@mmCP_RB0_BASE_HI = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@DOORBELL_OFFSET = common dso_local global i32 0, align 4
@DOORBELL_EN = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_RANGE_UPPER = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK = common dso_local global i32 0, align 4
@BUF_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_cp_gfx_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_cp_gfx_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %9 = load i32, i32* @GC, align 4
  %10 = load i32, i32* @mmCP_RB_WPTR_DELAY, align 4
  %11 = call i32 @WREG32_SOC15(i32 %9, i32 0, i32 %10, i32 0)
  %12 = load i32, i32* @GC, align 4
  %13 = load i32, i32* @mmCP_RB_VMID, align 4
  %14 = call i32 @WREG32_SOC15(i32 %12, i32 0, i32 %13, i32 0)
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %17, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %18, i64 0
  store %struct.amdgpu_ring* %19, %struct.amdgpu_ring** %3, align 8
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 8
  %24 = call i32 @order_base_2(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @CP_RB0_CNTL, align 4
  %26 = load i32, i32* @RB_BUFSZ, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @REG_SET_FIELD(i32 0, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CP_RB0_CNTL, align 4
  %31 = load i32, i32* @RB_BLKSZ, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 2
  %34 = call i32 @REG_SET_FIELD(i32 %29, i32 %30, i32 %31, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @GC, align 4
  %36 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @WREG32_SOC15(i32 %35, i32 0, i32 %36, i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @GC, align 4
  %42 = load i32, i32* @mmCP_RB0_WPTR, align 4
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = call i32 @WREG32_SOC15(i32 %41, i32 0, i32 %42, i32 %46)
  %48 = load i32, i32* @GC, align 4
  %49 = load i32, i32* @mmCP_RB0_WPTR_HI, align 4
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @upper_32_bits(i32 %52)
  %54 = call i32 @WREG32_SOC15(i32 %48, i32 0, i32 %49, i32 %53)
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 %58, %62
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @GC, align 4
  %65 = load i32, i32* @mmCP_RB0_RPTR_ADDR, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @lower_32_bits(i32 %66)
  %68 = call i32 @WREG32_SOC15(i32 %64, i32 0, i32 %65, i32 %67)
  %69 = load i32, i32* @GC, align 4
  %70 = load i32, i32* @mmCP_RB0_RPTR_ADDR_HI, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @upper_32_bits(i32 %71)
  %73 = load i32, i32* @CP_RB_RPTR_ADDR_HI__RB_RPTR_ADDR_HI_MASK, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @WREG32_SOC15(i32 %69, i32 0, i32 %70, i32 %74)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %81 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 4
  %84 = add nsw i32 %79, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @GC, align 4
  %86 = load i32, i32* @mmCP_RB_WPTR_POLL_ADDR_LO, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @lower_32_bits(i32 %87)
  %89 = call i32 @WREG32_SOC15(i32 %85, i32 0, i32 %86, i32 %88)
  %90 = load i32, i32* @GC, align 4
  %91 = load i32, i32* @mmCP_RB_WPTR_POLL_ADDR_HI, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @upper_32_bits(i32 %92)
  %94 = call i32 @WREG32_SOC15(i32 %90, i32 0, i32 %91, i32 %93)
  %95 = call i32 @mdelay(i32 1)
  %96 = load i32, i32* @GC, align 4
  %97 = load i32, i32* @mmCP_RB0_CNTL, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @WREG32_SOC15(i32 %96, i32 0, i32 %97, i32 %98)
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %101 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = ashr i32 %102, 8
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* @GC, align 4
  %105 = load i32, i32* @mmCP_RB0_BASE, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @WREG32_SOC15(i32 %104, i32 0, i32 %105, i32 %106)
  %108 = load i32, i32* @GC, align 4
  %109 = load i32, i32* @mmCP_RB0_BASE_HI, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @upper_32_bits(i32 %110)
  %112 = call i32 @WREG32_SOC15(i32 %108, i32 0, i32 %109, i32 %111)
  %113 = load i32, i32* @GC, align 4
  %114 = load i32, i32* @mmCP_RB_DOORBELL_CONTROL, align 4
  %115 = call i32 @RREG32_SOC15(i32 %113, i32 0, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %117 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %1
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %123 = load i32, i32* @DOORBELL_OFFSET, align 4
  %124 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %125 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @REG_SET_FIELD(i32 %121, i32 %122, i32 %123, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %130 = load i32, i32* @DOORBELL_EN, align 4
  %131 = call i32 @REG_SET_FIELD(i32 %128, i32 %129, i32 %130, i32 1)
  store i32 %131, i32* %4, align 4
  br label %137

132:                                              ; preds = %1
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %135 = load i32, i32* @DOORBELL_EN, align 4
  %136 = call i32 @REG_SET_FIELD(i32 %133, i32 %134, i32 %135, i32 0)
  store i32 %136, i32* %4, align 4
  br label %137

137:                                              ; preds = %132, %120
  %138 = load i32, i32* @GC, align 4
  %139 = load i32, i32* @mmCP_RB_DOORBELL_CONTROL, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @WREG32_SOC15(i32 %138, i32 0, i32 %139, i32 %140)
  %142 = load i32, i32* @CP_RB_DOORBELL_RANGE_LOWER, align 4
  %143 = load i32, i32* @DOORBELL_RANGE_LOWER, align 4
  %144 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %145 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @REG_SET_FIELD(i32 0, i32 %142, i32 %143, i32 %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* @GC, align 4
  %149 = load i32, i32* @mmCP_RB_DOORBELL_RANGE_LOWER, align 4
  %150 = load i32, i32* %4, align 4
  %151 = call i32 @WREG32_SOC15(i32 %148, i32 0, i32 %149, i32 %150)
  %152 = load i32, i32* @GC, align 4
  %153 = load i32, i32* @mmCP_RB_DOORBELL_RANGE_UPPER, align 4
  %154 = load i32, i32* @CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK, align 4
  %155 = call i32 @WREG32_SOC15(i32 %152, i32 0, i32 %153, i32 %154)
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %157 = call i32 @gfx_v9_0_cp_gfx_start(%struct.amdgpu_device* %156)
  %158 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %159 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %158, i32 0, i32 6
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  ret i32 0
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_cp_gfx_start(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
