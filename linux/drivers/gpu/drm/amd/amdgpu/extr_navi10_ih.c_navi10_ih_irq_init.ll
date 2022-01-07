; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_navi10_ih.c_navi10_ih_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 (%struct.amdgpu_device*, i64, i32)*, {}* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, %struct.amdgpu_ih_ring }
%struct.amdgpu_ih_ring = type { i32, i32, i64, i32, i64 }

@OSSSYS = common dso_local global i32 0, align 4
@mmIH_RB_BASE = common dso_local global i32 0, align 4
@mmIH_RB_BASE_HI = common dso_local global i32 0, align 4
@mmIH_RB_CNTL = common dso_local global i32 0, align 4
@IH_RB_CNTL = common dso_local global i32 0, align 4
@RPTR_REARM = common dso_local global i32 0, align 4
@AMDGPU_FW_LOAD_DIRECT = common dso_local global i64 0, align 8
@mmIH_CHICKEN = common dso_local global i32 0, align 4
@IH_CHICKEN = common dso_local global i32 0, align 4
@MC_SPACE_GPA_ENABLE = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_ADDR_LO = common dso_local global i32 0, align 4
@mmIH_RB_WPTR_ADDR_HI = common dso_local global i32 0, align 4
@mmIH_RB_RPTR = common dso_local global i32 0, align 4
@mmIH_RB_WPTR = common dso_local global i32 0, align 4
@mmIH_DOORBELL_RPTR = common dso_local global i32 0, align 4
@IH_DOORBELL_RPTR = common dso_local global i32 0, align 4
@OFFSET = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@mmIH_STORM_CLIENT_LIST_CNTL = common dso_local global i32 0, align 4
@IH_STORM_CLIENT_LIST_CNTL = common dso_local global i32 0, align 4
@CLIENT18_IS_STORM_CLIENT = common dso_local global i32 0, align 4
@mmIH_INT_FLOOD_CNTL = common dso_local global i32 0, align 4
@IH_INT_FLOOD_CNTL = common dso_local global i32 0, align 4
@FLOOD_CNTL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @navi10_ih_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_ih_irq_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.amdgpu_ih_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store %struct.amdgpu_ih_ring* %11, %struct.amdgpu_ih_ring** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = call i32 @navi10_ih_disable_interrupts(%struct.amdgpu_device* %12)
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = bitcast {}** %17 to i32 (%struct.amdgpu_device*)**
  %19 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %18, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = call i32 %19(%struct.amdgpu_device* %20)
  %22 = load i32, i32* @OSSSYS, align 4
  %23 = load i32, i32* @mmIH_RB_BASE, align 4
  %24 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 8
  %28 = call i32 @WREG32_SOC15(i32 %22, i32 0, i32 %23, i32 %27)
  %29 = load i32, i32* @OSSSYS, align 4
  %30 = load i32, i32* @mmIH_RB_BASE_HI, align 4
  %31 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 40
  %35 = and i32 %34, 255
  %36 = call i32 @WREG32_SOC15(i32 %29, i32 0, i32 %30, i32 %35)
  %37 = load i32, i32* @OSSSYS, align 4
  %38 = load i32, i32* @mmIH_RB_CNTL, align 4
  %39 = call i32 @RREG32_SOC15(i32 %37, i32 0, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @navi10_ih_rb_cntl(%struct.amdgpu_ih_ring* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @IH_RB_CNTL, align 4
  %45 = load i32, i32* @RPTR_REARM, align 4
  %46 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @AMDGPU_FW_LOAD_DIRECT, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %1
  %65 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* @OSSSYS, align 4
  %71 = load i32, i32* @mmIH_CHICKEN, align 4
  %72 = call i32 @RREG32_SOC15(i32 %70, i32 0, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @IH_CHICKEN, align 4
  %75 = load i32, i32* @MC_SPACE_GPA_ENABLE, align 4
  %76 = call i32 @REG_SET_FIELD(i32 %73, i32 %74, i32 %75, i32 1)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @OSSSYS, align 4
  %78 = load i32, i32* @mmIH_CHICKEN, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @WREG32_SOC15(i32 %77, i32 0, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %69, %64
  br label %82

82:                                               ; preds = %81, %1
  %83 = load i32, i32* @OSSSYS, align 4
  %84 = load i32, i32* @mmIH_RB_CNTL, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @WREG32_SOC15(i32 %83, i32 0, i32 %84, i32 %85)
  %87 = load i32, i32* @OSSSYS, align 4
  %88 = load i32, i32* @mmIH_RB_WPTR_ADDR_LO, align 4
  %89 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %90 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @lower_32_bits(i32 %91)
  %93 = call i32 @WREG32_SOC15(i32 %87, i32 0, i32 %88, i32 %92)
  %94 = load i32, i32* @OSSSYS, align 4
  %95 = load i32, i32* @mmIH_RB_WPTR_ADDR_HI, align 4
  %96 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %97 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @upper_32_bits(i32 %98)
  %100 = and i32 %99, 65535
  %101 = call i32 @WREG32_SOC15(i32 %94, i32 0, i32 %95, i32 %100)
  %102 = load i32, i32* @OSSSYS, align 4
  %103 = load i32, i32* @mmIH_RB_RPTR, align 4
  %104 = call i32 @WREG32_SOC15(i32 %102, i32 0, i32 %103, i32 0)
  %105 = load i32, i32* @OSSSYS, align 4
  %106 = load i32, i32* @mmIH_RB_WPTR, align 4
  %107 = call i32 @WREG32_SOC15(i32 %105, i32 0, i32 %106, i32 0)
  %108 = load i32, i32* @OSSSYS, align 4
  %109 = load i32, i32* @mmIH_DOORBELL_RPTR, align 4
  %110 = call i32 @RREG32_SOC15(i32 %108, i32 0, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %82
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @IH_DOORBELL_RPTR, align 4
  %118 = load i32, i32* @OFFSET, align 4
  %119 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %120 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @REG_SET_FIELD(i32 %116, i32 %117, i32 %118, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @IH_DOORBELL_RPTR, align 4
  %125 = load i32, i32* @ENABLE, align 4
  %126 = call i32 @REG_SET_FIELD(i32 %123, i32 %124, i32 %125, i32 1)
  store i32 %126, i32* %6, align 4
  br label %132

127:                                              ; preds = %82
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @IH_DOORBELL_RPTR, align 4
  %130 = load i32, i32* @ENABLE, align 4
  %131 = call i32 @REG_SET_FIELD(i32 %128, i32 %129, i32 %130, i32 0)
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %127, %115
  %133 = load i32, i32* @OSSSYS, align 4
  %134 = load i32, i32* @mmIH_DOORBELL_RPTR, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @WREG32_SOC15(i32 %133, i32 0, i32 %134, i32 %135)
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 1
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32 (%struct.amdgpu_device*, i64, i32)*, i32 (%struct.amdgpu_device*, i64, i32)** %140, align 8
  %142 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %143 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %144 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %3, align 8
  %147 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 %141(%struct.amdgpu_device* %142, i64 %145, i32 %148)
  %150 = load i32, i32* @OSSSYS, align 4
  %151 = load i32, i32* @mmIH_STORM_CLIENT_LIST_CNTL, align 4
  %152 = call i32 @RREG32_SOC15(i32 %150, i32 0, i32 %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @IH_STORM_CLIENT_LIST_CNTL, align 4
  %155 = load i32, i32* @CLIENT18_IS_STORM_CLIENT, align 4
  %156 = call i32 @REG_SET_FIELD(i32 %153, i32 %154, i32 %155, i32 1)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* @OSSSYS, align 4
  %158 = load i32, i32* @mmIH_STORM_CLIENT_LIST_CNTL, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @WREG32_SOC15(i32 %157, i32 0, i32 %158, i32 %159)
  %161 = load i32, i32* @OSSSYS, align 4
  %162 = load i32, i32* @mmIH_INT_FLOOD_CNTL, align 4
  %163 = call i32 @RREG32_SOC15(i32 %161, i32 0, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @IH_INT_FLOOD_CNTL, align 4
  %166 = load i32, i32* @FLOOD_CNTL_ENABLE, align 4
  %167 = call i32 @REG_SET_FIELD(i32 %164, i32 %165, i32 %166, i32 1)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @OSSSYS, align 4
  %169 = load i32, i32* @mmIH_INT_FLOOD_CNTL, align 4
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @WREG32_SOC15(i32 %168, i32 0, i32 %169, i32 %170)
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %173 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @pci_set_master(i32 %174)
  %176 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %177 = call i32 @navi10_ih_enable_interrupts(%struct.amdgpu_device* %176)
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @navi10_ih_disable_interrupts(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @navi10_ih_rb_cntl(%struct.amdgpu_ih_ring*, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @navi10_ih_enable_interrupts(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
