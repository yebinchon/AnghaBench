; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_gfx_load_ce_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_gfx_load_ce_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__, %struct.TYPE_7__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.amdgpu_device*, i32*)* }
%struct.gfx_firmware_header_v1_0 = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"(%d) failed to create ce fw bo\0A\00", align 1
@GC = common dso_local global i32 0, align 4
@mmCP_CE_IC_OP_CNTL = common dso_local global i32 0, align 4
@CP_CE_IC_OP_CNTL = common dso_local global i32 0, align 4
@INVALIDATE_CACHE = common dso_local global i32 0, align 4
@INVALIDATE_CACHE_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to invalidate instruction cache\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@amdgpu_emu_mode = common dso_local global i32 0, align 4
@mmCP_CE_IC_BASE_CNTL = common dso_local global i32 0, align 4
@CP_CE_IC_BASE_CNTL = common dso_local global i32 0, align 4
@VMID = common dso_local global i32 0, align 4
@CACHE_POLICY = common dso_local global i32 0, align 4
@EXE_DISABLE = common dso_local global i32 0, align 4
@ADDRESS_CLAMP = common dso_local global i32 0, align 4
@mmCP_CE_IC_BASE_LO = common dso_local global i32 0, align 4
@mmCP_CE_IC_BASE_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v10_0_cp_gfx_load_ce_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_cp_gfx_load_ce_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfx_firmware_header_v1_0*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 50000, i32* %10, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.gfx_firmware_header_v1_0*
  store %struct.gfx_firmware_header_v1_0* %17, %struct.gfx_firmware_header_v1_0** %5, align 8
  %18 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %19 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %18, i32 0, i32 0
  %20 = call i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__* %19)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %28 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = zext i32 %31 to i64
  %33 = add nsw i64 %26, %32
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %6, align 8
  %35 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %36 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = load %struct.gfx_firmware_header_v1_0*, %struct.gfx_firmware_header_v1_0** %5, align 8
  %42 = getelementptr inbounds %struct.gfx_firmware_header_v1_0, %struct.gfx_firmware_header_v1_0* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = bitcast i32* %58 to i8**
  %60 = call i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device* %40, i32 %44, i32 %45, i32 %46, i32* %50, i32* %54, i8** %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %1
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %70 = call i32 @gfx_v10_0_ce_fini(%struct.amdgpu_device* %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %183

72:                                               ; preds = %1
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @memcpy(i32 %77, i32* %78, i32 %79)
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @amdgpu_bo_kunmap(i32 %85)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @amdgpu_bo_unreserve(i32 %91)
  %93 = load i32, i32* @GC, align 4
  %94 = load i32, i32* @mmCP_CE_IC_OP_CNTL, align 4
  %95 = call i32 @RREG32_SOC15(i32 %93, i32 0, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @CP_CE_IC_OP_CNTL, align 4
  %98 = load i32, i32* @INVALIDATE_CACHE, align 4
  %99 = call i32 @REG_SET_FIELD(i32 %96, i32 %97, i32 %98, i32 1)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* @GC, align 4
  %101 = load i32, i32* @mmCP_CE_IC_OP_CNTL, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @WREG32_SOC15(i32 %100, i32 0, i32 %101, i32 %102)
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %120, %72
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load i32, i32* @GC, align 4
  %110 = load i32, i32* @mmCP_CE_IC_OP_CNTL, align 4
  %111 = call i32 @RREG32_SOC15(i32 %109, i32 0, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @CP_CE_IC_OP_CNTL, align 4
  %114 = load i32, i32* @INVALIDATE_CACHE_COMPLETE, align 4
  %115 = call i32 @REG_GET_FIELD(i32 %112, i32 %113, i32 %114)
  %116 = icmp eq i32 1, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %123

118:                                              ; preds = %108
  %119 = call i32 @udelay(i32 1)
  br label %120

120:                                              ; preds = %118
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %104

123:                                              ; preds = %117, %104
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp uge i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %129 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, ...) @dev_err(i32 %130, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %183

134:                                              ; preds = %123
  %135 = load i32, i32* @amdgpu_emu_mode, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 1
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32 (%struct.amdgpu_device*, i32*)*, i32 (%struct.amdgpu_device*, i32*)** %141, align 8
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %144 = call i32 %142(%struct.amdgpu_device* %143, i32* null)
  br label %145

145:                                              ; preds = %137, %134
  %146 = load i32, i32* @GC, align 4
  %147 = load i32, i32* @mmCP_CE_IC_BASE_CNTL, align 4
  %148 = call i32 @RREG32_SOC15(i32 %146, i32 0, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @CP_CE_IC_BASE_CNTL, align 4
  %151 = load i32, i32* @VMID, align 4
  %152 = call i32 @REG_SET_FIELD(i32 %149, i32 %150, i32 %151, i32 0)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @CP_CE_IC_BASE_CNTL, align 4
  %155 = load i32, i32* @CACHE_POLICY, align 4
  %156 = call i32 @REG_SET_FIELD(i32 %153, i32 %154, i32 %155, i32 0)
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* @CP_CE_IC_BASE_CNTL, align 4
  %159 = load i32, i32* @EXE_DISABLE, align 4
  %160 = call i32 @REG_SET_FIELD(i32 %157, i32 %158, i32 %159, i32 0)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @CP_CE_IC_BASE_CNTL, align 4
  %163 = load i32, i32* @ADDRESS_CLAMP, align 4
  %164 = call i32 @REG_SET_FIELD(i32 %161, i32 %162, i32 %163, i32 1)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* @GC, align 4
  %166 = load i32, i32* @mmCP_CE_IC_BASE_LO, align 4
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, -4096
  %173 = call i32 @WREG32_SOC15(i32 %165, i32 0, i32 %166, i32 %172)
  %174 = load i32, i32* @GC, align 4
  %175 = load i32, i32* @mmCP_CE_IC_BASE_HI, align 4
  %176 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %177 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @upper_32_bits(i32 %180)
  %182 = call i32 @WREG32_SOC15(i32 %174, i32 0, i32 %175, i32 %181)
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %145, %127, %63
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @amdgpu_ucode_print_gfx_hdr(%struct.TYPE_10__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @amdgpu_bo_create_reserved(%struct.amdgpu_device*, i32, i32, i32, i32*, i32*, i8**) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @gfx_v10_0_ce_fini(%struct.amdgpu_device*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @amdgpu_bo_kunmap(i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
