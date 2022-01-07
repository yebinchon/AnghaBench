; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_mc_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v7_0.c_gmc_v7_0_mc_load_microcode.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v7_0_mc_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v7_0_mc_load_microcode(%struct.amdgpu_device* %0) #0 {
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
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %171

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.mc_firmware_header_v1_0*
  store %struct.mc_firmware_header_v1_0* %26, %struct.mc_firmware_header_v1_0** %4, align 8
  %27 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %28 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %27, i32 0, i32 0
  %29 = call i32 @amdgpu_ucode_print_mc_hdr(%struct.TYPE_6__* %28)
  %30 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %31 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %39 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* %10, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %50 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %48, %53
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %6, align 8
  %56 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %57 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = sdiv i32 %60, 4
  store i32 %61, i32* %9, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %4, align 8
  %69 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %67, %73
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %5, align 8
  %76 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %77 = call i32 @RREG32(i32 %76)
  %78 = load i32, i32* @MC_SEQ_SUP_CNTL, align 4
  %79 = load i32, i32* @RUN, align 4
  %80 = call i64 @REG_GET_FIELD(i32 %77, i32 %78, i32 %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %170

83:                                               ; preds = %19
  %84 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %85 = call i32 @WREG32(i32 %84, i32 8)
  %86 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %87 = call i32 @WREG32(i32 %86, i32 16)
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %105, %83
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %108

92:                                               ; preds = %88
  %93 = load i32, i32* @mmMC_SEQ_IO_DEBUG_INDEX, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %6, align 8
  %96 = ptrtoint i32* %94 to i32
  %97 = call i32 @le32_to_cpup(i32 %96)
  %98 = call i32 @WREG32(i32 %93, i32 %97)
  %99 = load i32, i32* @mmMC_SEQ_IO_DEBUG_DATA, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %6, align 8
  %102 = ptrtoint i32* %100 to i32
  %103 = call i32 @le32_to_cpup(i32 %102)
  %104 = call i32 @WREG32(i32 %99, i32 %103)
  br label %105

105:                                              ; preds = %92
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %88

108:                                              ; preds = %88
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %120, %108
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load i32, i32* @mmMC_SEQ_SUP_PGM, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %5, align 8
  %117 = ptrtoint i32* %115 to i32
  %118 = call i32 @le32_to_cpup(i32 %117)
  %119 = call i32 @WREG32(i32 %114, i32 %118)
  br label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %109

123:                                              ; preds = %109
  %124 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %125 = call i32 @WREG32(i32 %124, i32 8)
  %126 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %127 = call i32 @WREG32(i32 %126, i32 4)
  %128 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %129 = call i32 @WREG32(i32 %128, i32 1)
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %146, %123
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load i32, i32* @mmMC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %138 = call i32 @RREG32(i32 %137)
  %139 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %140 = load i32, i32* @TRAIN_DONE_D0, align 4
  %141 = call i64 @REG_GET_FIELD(i32 %138, i32 %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %149

144:                                              ; preds = %136
  %145 = call i32 @udelay(i32 1)
  br label %146

146:                                              ; preds = %144
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %130

149:                                              ; preds = %143, %130
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %166, %149
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %150
  %157 = load i32, i32* @mmMC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %158 = call i32 @RREG32(i32 %157)
  %159 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %160 = load i32, i32* @TRAIN_DONE_D1, align 4
  %161 = call i64 @REG_GET_FIELD(i32 %158, i32 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %169

164:                                              ; preds = %156
  %165 = call i32 @udelay(i32 1)
  br label %166

166:                                              ; preds = %164
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %150

169:                                              ; preds = %163, %150
  br label %170

170:                                              ; preds = %169, %19
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %16
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

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
