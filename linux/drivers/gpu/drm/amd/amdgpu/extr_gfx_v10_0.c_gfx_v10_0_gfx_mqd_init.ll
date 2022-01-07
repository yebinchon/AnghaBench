; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_gfx_mqd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_gfx_mqd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.v10_gfx_mqd*, %struct.amdgpu_device* }
%struct.v10_gfx_mqd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64, i64 }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_GFX_MQD_CONTROL = common dso_local global i32 0, align 4
@CP_GFX_MQD_CONTROL = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@PRIV_STATE = common dso_local global i32 0, align 4
@CACHE_POLICY = common dso_local global i32 0, align 4
@mmCP_GFX_HQD_VMID = common dso_local global i32 0, align 4
@CP_GFX_HQD_VMID = common dso_local global i32 0, align 4
@mmCP_GFX_HQD_QUEUE_PRIORITY = common dso_local global i32 0, align 4
@CP_GFX_HQD_QUEUE_PRIORITY = common dso_local global i32 0, align 4
@PRIORITY_LEVEL = common dso_local global i32 0, align 4
@mmCP_GFX_HQD_QUANTUM = common dso_local global i32 0, align 4
@CP_GFX_HQD_QUANTUM = common dso_local global i32 0, align 4
@QUANTUM_EN = common dso_local global i32 0, align 4
@mmCP_GFX_HQD_CNTL = common dso_local global i32 0, align 4
@CP_GFX_HQD_CNTL = common dso_local global i32 0, align 4
@RB_BUFSZ = common dso_local global i32 0, align 4
@RB_BLKSZ = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@DOORBELL_OFFSET = common dso_local global i32 0, align 4
@DOORBELL_EN = common dso_local global i32 0, align 4
@mmCP_GFX_HQD_RPTR = common dso_local global i32 0, align 4
@BUF_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v10_0_gfx_mqd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_gfx_mqd_init(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.v10_gfx_mqd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 9
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %10, align 8
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %3, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 8
  %14 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %13, align 8
  store %struct.v10_gfx_mqd* %14, %struct.v10_gfx_mqd** %4, align 8
  %15 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %16 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %15, i32 0, i32 17
  store i64 0, i64* %16, align 8
  %17 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %18 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %17, i32 0, i32 16
  store i64 0, i64* %18, align 8
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, -4
  %23 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %24 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @upper_32_bits(i32 %27)
  %29 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %30 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @GC, align 4
  %32 = load i32, i32* @mmCP_GFX_MQD_CONTROL, align 4
  %33 = call i8* @RREG32_SOC15(i32 %31, i32 0, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @CP_GFX_MQD_CONTROL, align 4
  %37 = load i32, i32* @VMID, align 4
  %38 = call i32 @REG_SET_FIELD(i32 %35, i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @CP_GFX_MQD_CONTROL, align 4
  %41 = load i32, i32* @PRIV_STATE, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 1)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @CP_GFX_MQD_CONTROL, align 4
  %45 = load i32, i32* @CACHE_POLICY, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %49 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @GC, align 4
  %51 = load i32, i32* @mmCP_GFX_HQD_VMID, align 4
  %52 = call i8* @RREG32_SOC15(i32 %50, i32 0, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @CP_GFX_HQD_VMID, align 4
  %56 = load i32, i32* @VMID, align 4
  %57 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %59 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %58, i32 0, i32 15
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @GC, align 4
  %61 = load i32, i32* @mmCP_GFX_HQD_QUEUE_PRIORITY, align 4
  %62 = call i8* @RREG32_SOC15(i32 %60, i32 0, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CP_GFX_HQD_QUEUE_PRIORITY, align 4
  %66 = load i32, i32* @PRIORITY_LEVEL, align 4
  %67 = call i32 @REG_SET_FIELD(i32 %64, i32 %65, i32 %66, i32 0)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %70 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @GC, align 4
  %72 = load i32, i32* @mmCP_GFX_HQD_QUANTUM, align 4
  %73 = call i8* @RREG32_SOC15(i32 %71, i32 0, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @CP_GFX_HQD_QUANTUM, align 4
  %77 = load i32, i32* @QUANTUM_EN, align 4
  %78 = call i32 @REG_SET_FIELD(i32 %75, i32 %76, i32 %77, i32 1)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %81 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %83 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 8
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %88 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @upper_32_bits(i32 %89)
  %91 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %92 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %98 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %99, 4
  %101 = add nsw i32 %96, %100
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, -4
  %104 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %105 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @upper_32_bits(i32 %106)
  %108 = and i32 %107, 65535
  %109 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %110 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %109, i32 0, i32 8
  store i32 %108, i32* %110, align 8
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %116 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, 4
  %119 = add nsw i32 %114, %118
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, -4
  %122 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %123 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @upper_32_bits(i32 %124)
  %126 = and i32 %125, 65535
  %127 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %128 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 8
  %129 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %130 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = sdiv i32 %131, 4
  %133 = call i32 @order_base_2(i32 %132)
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @GC, align 4
  %136 = load i32, i32* @mmCP_GFX_HQD_CNTL, align 4
  %137 = call i8* @RREG32_SOC15(i32 %135, i32 0, i32 %136)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @CP_GFX_HQD_CNTL, align 4
  %141 = load i32, i32* @RB_BUFSZ, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @REG_SET_FIELD(i32 %139, i32 %140, i32 %141, i32 %142)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @CP_GFX_HQD_CNTL, align 4
  %146 = load i32, i32* @RB_BLKSZ, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sub nsw i32 %147, 2
  %149 = call i32 @REG_SET_FIELD(i32 %144, i32 %145, i32 %146, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %152 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %151, i32 0, i32 11
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* @GC, align 4
  %154 = load i32, i32* @mmCP_RB_DOORBELL_CONTROL, align 4
  %155 = call i8* @RREG32_SOC15(i32 %153, i32 0, i32 %154)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %7, align 4
  %157 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %158 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %173

161:                                              ; preds = %1
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %164 = load i32, i32* @DOORBELL_OFFSET, align 4
  %165 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %166 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @REG_SET_FIELD(i32 %162, i32 %163, i32 %164, i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %171 = load i32, i32* @DOORBELL_EN, align 4
  %172 = call i32 @REG_SET_FIELD(i32 %169, i32 %170, i32 %171, i32 1)
  store i32 %172, i32* %7, align 4
  br label %178

173:                                              ; preds = %1
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %176 = load i32, i32* @DOORBELL_EN, align 4
  %177 = call i32 @REG_SET_FIELD(i32 %174, i32 %175, i32 %176, i32 0)
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %173, %161
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %181 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %180, i32 0, i32 12
  store i32 %179, i32* %181, align 8
  %182 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %183 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %182, i32 0, i32 6
  store i64 0, i64* %183, align 8
  %184 = load i32, i32* @GC, align 4
  %185 = load i32, i32* @mmCP_GFX_HQD_RPTR, align 4
  %186 = call i8* @RREG32_SOC15(i32 %184, i32 0, i32 %185)
  %187 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %188 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %187, i32 0, i32 14
  store i8* %186, i8** %188, align 8
  %189 = load %struct.v10_gfx_mqd*, %struct.v10_gfx_mqd** %4, align 8
  %190 = getelementptr inbounds %struct.v10_gfx_mqd, %struct.v10_gfx_mqd* %189, i32 0, i32 13
  store i32 1, i32* %190, align 4
  ret i32 0
}

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i8* @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
