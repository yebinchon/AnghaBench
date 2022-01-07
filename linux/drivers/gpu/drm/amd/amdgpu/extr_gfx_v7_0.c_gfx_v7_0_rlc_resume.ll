; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}*, {}*, {}* }
%struct.TYPE_6__ = type { i64 }
%struct.rlc_firmware_header_v1_0 = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmRLC_CGCG_CGLS_CTRL = common dso_local global i32 0, align 4
@mmRLC_LB_CNTR_INIT = common dso_local global i32 0, align 4
@mmRLC_LB_CNTR_MAX = common dso_local global i32 0, align 4
@mmRLC_LB_INIT_CU_MASK = common dso_local global i32 0, align 4
@mmRLC_LB_PARAMS = common dso_local global i32 0, align 4
@mmRLC_LB_CNTL = common dso_local global i32 0, align 4
@mmRLC_MC_CNTL = common dso_local global i32 0, align 4
@mmRLC_UCODE_CNTL = common dso_local global i32 0, align 4
@mmRLC_GPM_UCODE_ADDR = common dso_local global i32 0, align 4
@mmRLC_GPM_UCODE_DATA = common dso_local global i32 0, align 4
@CHIP_BONAIRE = common dso_local global i64 0, align 8
@mmRLC_DRIVER_CPDMA_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v7_0_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v7_0_rlc_resume(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.rlc_firmware_header_v1_0*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %157

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.rlc_firmware_header_v1_0*
  store %struct.rlc_firmware_header_v1_0* %24, %struct.rlc_firmware_header_v1_0** %4, align 8
  %25 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %4, align 8
  %26 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %25, i32 0, i32 0
  %27 = call i32 @amdgpu_ucode_print_rlc_hdr(%struct.TYPE_10__* %26)
  %28 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %4, align 8
  %29 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %4, align 8
  %37 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = bitcast {}** %48 to i32 (%struct.amdgpu_device*)**
  %50 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %49, align 8
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = call i32 %50(%struct.amdgpu_device* %51)
  %53 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %54 = call i32 @RREG32(i32 %53)
  %55 = and i32 %54, -4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* @mmRLC_CGCG_CGLS_CTRL, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = bitcast {}** %64 to i32 (%struct.amdgpu_device*)**
  %66 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %65, align 8
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = call i32 %66(%struct.amdgpu_device* %67)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = call i32 @gfx_v7_0_init_pg(%struct.amdgpu_device* %69)
  %71 = load i32, i32* @mmRLC_LB_CNTR_INIT, align 4
  %72 = call i32 @WREG32(i32 %71, i32 0)
  %73 = load i32, i32* @mmRLC_LB_CNTR_MAX, align 4
  %74 = call i32 @WREG32(i32 %73, i32 32768)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 2
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = call i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device* %78, i32 -1, i32 -1, i32 -1)
  %80 = load i32, i32* @mmRLC_LB_INIT_CU_MASK, align 4
  %81 = call i32 @WREG32(i32 %80, i32 -1)
  %82 = load i32, i32* @mmRLC_LB_PARAMS, align 4
  %83 = call i32 @WREG32(i32 %82, i32 6292488)
  %84 = load i32, i32* @mmRLC_LB_CNTL, align 4
  %85 = call i32 @WREG32(i32 %84, i32 -2147483644)
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 2
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* @mmRLC_MC_CNTL, align 4
  %90 = call i32 @WREG32(i32 %89, i32 0)
  %91 = load i32, i32* @mmRLC_UCODE_CNTL, align 4
  %92 = call i32 @WREG32(i32 %91, i32 0)
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %4, align 8
  %100 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le32_to_cpu(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %98, %104
  %106 = inttoptr i64 %105 to i32*
  store i32* %106, i32** %5, align 8
  %107 = load %struct.rlc_firmware_header_v1_0*, %struct.rlc_firmware_header_v1_0** %4, align 8
  %108 = getelementptr inbounds %struct.rlc_firmware_header_v1_0, %struct.rlc_firmware_header_v1_0* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le32_to_cpu(i32 %110)
  %112 = sdiv i32 %111, 4
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* @mmRLC_GPM_UCODE_ADDR, align 4
  %114 = call i32 @WREG32(i32 %113, i32 0)
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %126, %17
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i32, i32* @mmRLC_GPM_UCODE_DATA, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %5, align 8
  %123 = ptrtoint i32* %121 to i32
  %124 = call i32 @le32_to_cpup(i32 %123)
  %125 = call i32 @WREG32(i32 %120, i32 %124)
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %6, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load i32, i32* @mmRLC_GPM_UCODE_ADDR, align 4
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @WREG32(i32 %130, i32 %134)
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = call i32 @gfx_v7_0_enable_lbpw(%struct.amdgpu_device* %136, i32 0)
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CHIP_BONAIRE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load i32, i32* @mmRLC_DRIVER_CPDMA_STATUS, align 4
  %145 = call i32 @WREG32(i32 %144, i32 0)
  br label %146

146:                                              ; preds = %143, %129
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = bitcast {}** %152 to i32 (%struct.amdgpu_device*)**
  %154 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %153, align 8
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = call i32 %154(%struct.amdgpu_device* %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %146, %14
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @amdgpu_ucode_print_rlc_hdr(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v7_0_init_pg(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v7_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @gfx_v7_0_enable_lbpw(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
