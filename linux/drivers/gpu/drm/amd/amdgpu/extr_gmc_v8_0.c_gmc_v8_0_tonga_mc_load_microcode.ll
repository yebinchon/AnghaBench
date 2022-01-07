; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_tonga_mc_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_tonga_mc_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mc_firmware_header_v1_0 = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmMC_SEQ_SUP_CNTL = common dso_local global i32 0, align 4
@MC_SEQ_SUP_CNTL = common dso_local global i32 0, align 4
@RUN = common dso_local global i32 0, align 4
@mmMC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@mmMC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@mmMC_SEQ_SUP_PGM = common dso_local global i32 0, align 4
@mmMC_SEQ_TRAIN_WAKEUP_CNTL = common dso_local global i32 0, align 4
@MC_SEQ_TRAIN_WAKEUP_CNTL = common dso_local global i32 0, align 4
@TRAIN_DONE_D0 = common dso_local global i32 0, align 4
@TRAIN_DONE_D1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v8_0_tonga_mc_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v8_0_tonga_mc_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.mc_firmware_header_v1_0*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call i64 @amdgpu_sriov_bios(%struct.amdgpu_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %176

15:                                               ; preds = %1
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %176

24:                                               ; preds = %15
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.mc_firmware_header_v1_0*
  store %struct.mc_firmware_header_v1_0* %31, %struct.mc_firmware_header_v1_0** %4, align 8
  %32 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %33 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %32, i32 0, i32 0
  %34 = call i32 @amdgpu_ucode_print_mc_hdr(%struct.TYPE_6__* %33)
  %35 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %36 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %44 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = sdiv i32 %46, 8
  store i32 %47, i32* %10, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %55 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %53, %58
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %6, align 8
  %61 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %62 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = sdiv i32 %65, 4
  store i32 %66, i32* %9, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %74 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %72, %78
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %5, align 8
  %81 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %82 = call i32 @RREG32(i32 %81)
  %83 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %84 = load i32, i32* @RUN, align 4
  %85 = call i64 @REG_GET_FIELD(i32 %82, i32 %83, i32 %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %175

88:                                               ; preds = %24
  %89 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %90 = call i32 @WREG32(i32 %89, i32 8)
  %91 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %92 = call i32 @WREG32(i32 %91, i32 16)
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %110, %88
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i32, i32* @mmMC_SEQ_IO_DEBUG_INDEX, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %6, align 8
  %101 = ptrtoint i32* %99 to i32
  %102 = call i32 @le32_to_cpup(i32 %101)
  %103 = call i32 @WREG32(i32 %98, i32 %102)
  %104 = load i32, i32* @mmMC_SEQ_IO_DEBUG_DATA, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %6, align 8
  %107 = ptrtoint i32* %105 to i32
  %108 = call i32 @le32_to_cpup(i32 %107)
  %109 = call i32 @WREG32(i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %93

113:                                              ; preds = %93
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %125, %113
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %114
  %119 = load i32, i32* @mmMC_SEQ_SUP_PGM, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %5, align 8
  %122 = ptrtoint i32* %120 to i32
  %123 = call i32 @le32_to_cpup(i32 %122)
  %124 = call i32 @WREG32(i32 %119, i32 %123)
  br label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %114

128:                                              ; preds = %114
  %129 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %130 = call i32 @WREG32(i32 %129, i32 8)
  %131 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %132 = call i32 @WREG32(i32 %131, i32 4)
  %133 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %134 = call i32 @WREG32(i32 %133, i32 1)
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %151, %128
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load i32, i32* @mmMC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %143 = call i32 @RREG32(i32 %142)
  %144 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %145 = load i32, i32* @TRAIN_DONE_D0, align 4
  %146 = call i64 @REG_GET_FIELD(i32 %143, i32 %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %154

149:                                              ; preds = %141
  %150 = call i32 @udelay(i32 1)
  br label %151

151:                                              ; preds = %149
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %135

154:                                              ; preds = %148, %135
  store i32 0, i32* %8, align 4
  br label %155

155:                                              ; preds = %171, %154
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %158 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %174

161:                                              ; preds = %155
  %162 = load i32, i32* @mmMC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %163 = call i32 @RREG32(i32 %162)
  %164 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %165 = load i32, i32* @TRAIN_DONE_D1, align 4
  %166 = call i64 @REG_GET_FIELD(i32 %163, i32 %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  br label %174

169:                                              ; preds = %161
  %170 = call i32 @udelay(i32 1)
  br label %171

171:                                              ; preds = %169
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %8, align 4
  br label %155

174:                                              ; preds = %168, %155
  br label %175

175:                                              ; preds = %174, %24
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %175, %21, %14
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @amdgpu_sriov_bios(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_ucode_print_mc_hdr(%struct.TYPE_6__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @le32_to_cpup(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
