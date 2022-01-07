; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_compute_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_compute_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.amdgpu_device*, i32*)* }
%struct.gfx_firmware_header_v1_0 = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmCP_CPC_IC_OP_CNTL = common dso_local global i32 0, align 4
@CP_CPC_IC_OP_CNTL = common dso_local global i32 0, align 4
@INVALIDATE_CACHE = common dso_local global i32 0, align 4
@INVALIDATE_CACHE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to invalidate instruction cache\0A\00", align 1
@amdgpu_emu_mode = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_CNTL = common dso_local global i32 0, align 4
@CP_CPC_IC_BASE_CNTL = common dso_local global i32 0, align 4
@CACHE_POLICY = common dso_local global i32 0, align 4
@EXE_DISABLE = common dso_local global i32 0, align 4
@ADDRESS_CLAMP = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_LO = common dso_local global i32 0, align 4
@mmCP_CPC_IC_BASE_HI = common dso_local global i32 0, align 4
@mmCP_MEC_ME1_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_MEC_ME1_UCODE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_cp_compute_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_cp_compute_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 50000, i32* %8, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %167

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %19 = call i32 @gfx_v10_0_cp_compute_enable(%struct.amdgpu_device* %18, i32 0)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %26, %struct.gfx_firmware_header_v1_0** %4, align 8
  %27 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %28 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %27, i32 0, i32 2
  %29 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %28)
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %37 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  %41 = add nsw i64 %35, %40
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %5, align 8
  %43 = load i32, i32* @GC, align 4
  %44 = load i32, i32* @mmCP_CPC_IC_OP_CNTL, align 4
  %45 = call i32 @RREG32_SOC15(i32 %43, i32 0, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @CP_CPC_IC_OP_CNTL, align 4
  %48 = load i32, i32* @INVALIDATE_CACHE, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 1)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @GC, align 4
  %51 = load i32, i32* @mmCP_CPC_IC_OP_CNTL, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @WREG32_SOC15(i32 %50, i32 0, i32 %51, i32 %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %70, %17
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32, i32* @GC, align 4
  %60 = load i32, i32* @mmCP_CPC_IC_OP_CNTL, align 4
  %61 = call i32 @RREG32_SOC15(i32 %59, i32 0, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @CP_CPC_IC_OP_CNTL, align 4
  %64 = load i32, i32* @INVALIDATE_CACHE_COMPLETE, align 4
  %65 = call i32 @REG_GET_FIELD(i32 %62, i32 %63, i32 %64)
  %66 = icmp eq i32 1, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %73

68:                                               ; preds = %58
  %69 = call i32 @udelay(i32 1)
  br label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %54

73:                                               ; preds = %67, %54
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp uge i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %79 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %167

84:                                               ; preds = %73
  %85 = load i32, i32* @amdgpu_emu_mode, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %91, align 8
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = call i32 %92(%struct.amdgpu_device* %93, i32* null)
  br label %95

95:                                               ; preds = %87, %84
  %96 = load i32, i32* @GC, align 4
  %97 = load i32, i32* @mmCP_CPC_IC_BASE_CNTL, align 4
  %98 = call i32 @RREG32_SOC15(i32 %96, i32 0, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %101 = load i32, i32* @CACHE_POLICY, align 4
  %102 = call i32 @REG_SET_FIELD(i32 %99, i32 %100, i32 %101, i32 0)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %105 = load i32, i32* @EXE_DISABLE, align 4
  %106 = call i32 @REG_SET_FIELD(i32 %103, i32 %104, i32 %105, i32 0)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @CP_CPC_IC_BASE_CNTL, align 4
  %109 = load i32, i32* @ADDRESS_CLAMP, align 4
  %110 = call i32 @REG_SET_FIELD(i32 %107, i32 %108, i32 %109, i32 1)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* @GC, align 4
  %112 = load i32, i32* @mmCP_CPC_IC_BASE_CNTL, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @WREG32_SOC15(i32 %111, i32 0, i32 %112, i32 %113)
  %115 = load i32, i32* @GC, align 4
  %116 = load i32, i32* @mmCP_CPC_IC_BASE_LO, align 4
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, -4096
  %123 = call i32 @WREG32_SOC15(i32 %115, i32 0, i32 %116, i32 %122)
  %124 = load i32, i32* @GC, align 4
  %125 = load i32, i32* @mmCP_CPC_IC_BASE_HI, align 4
  %126 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %127 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @upper_32_bits(i32 %130)
  %132 = call i32 @WREG32_SOC15(i32 %124, i32 0, i32 %125, i32 %131)
  %133 = load i32, i32* @GC, align 4
  %134 = load i32, i32* @mmCP_MEC_ME1_UCODE_ADDR, align 4
  %135 = call i32 @WREG32_SOC15(i32 %133, i32 0, i32 %134, i32 0)
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %156, %95
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %139 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %136
  %143 = load i32, i32* @GC, align 4
  %144 = load i32, i32* @mmCP_MEC_ME1_UCODE_DATA, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %4, align 8
  %147 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %6, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = call i32 @le32_to_cpup(i32* %153)
  %155 = call i32 @WREG32_SOC15(i32 %143, i32 0, i32 %144, i32 %154)
  br label %156

156:                                              ; preds = %142
  %157 = load i32, i32* %6, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %136

159:                                              ; preds = %136
  %160 = load i32, i32* @GC, align 4
  %161 = load i32, i32* @mmCP_MEC_ME1_UCODE_ADDR, align 4
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %163 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @WREG32_SOC15(i32 %160, i32 0, i32 %161, i32 %165)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %159, %77, %14
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @gfx_v10_0_cp_compute_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @le32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
