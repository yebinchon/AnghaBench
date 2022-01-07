; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_mc_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v6_0.c_gmc_v6_0_mc_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.mc_firmware_header_v1_0 = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmMC_SEQ_SUP_CNTL = common dso_local global i32 0, align 4
@MC_SEQ_SUP_CNTL__RUN_MASK = common dso_local global i32 0, align 4
@mmMC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@mmMC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@mmMC_SEQ_SUP_PGM = common dso_local global i32 0, align 4
@mmMC_SEQ_TRAIN_WAKEUP_CNTL = common dso_local global i32 0, align 4
@MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D0_MASK = common dso_local global i32 0, align 4
@MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gmc_v6_0_mc_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v6_0_mc_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mc_firmware_header_v1_0*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32* null, i32** %4, align 8
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
  br label %168

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.mc_firmware_header_v1_0*
  store %struct.mc_firmware_header_v1_0* %26, %struct.mc_firmware_header_v1_0** %10, align 8
  %27 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %10, align 8
  %28 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %27, i32 0, i32 0
  %29 = call i32 @amdgpu_ucode_print_mc_hdr(%struct.TYPE_6__* %28)
  %30 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %10, align 8
  %31 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %10, align 8
  %39 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = sdiv i32 %41, 8
  store i32 %42, i32* %8, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %10, align 8
  %50 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %48, %53
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %6, align 8
  %56 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %10, align 8
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
  %68 = load %struct.mc_firmware_header_v1_0*, %struct.mc_firmware_header_v1_0** %10, align 8
  %69 = getelementptr inbounds %struct.mc_firmware_header_v1_0, %struct.mc_firmware_header_v1_0* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %67, %73
  %75 = inttoptr i64 %74 to i32*
  store i32* %75, i32** %4, align 8
  %76 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %77 = call i32 @RREG32(i32 %76)
  %78 = load i32, i32* @MC_SEQ_SUP_CNTL__RUN_MASK, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %167

82:                                               ; preds = %19
  %83 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %84 = call i32 @WREG32(i32 %83, i32 8)
  %85 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %86 = call i32 @WREG32(i32 %85, i32 16)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %104, %82
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load i32, i32* @mmMC_SEQ_IO_DEBUG_INDEX, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %6, align 8
  %95 = ptrtoint i32* %93 to i32
  %96 = call i32 @le32_to_cpup(i32 %95)
  %97 = call i32 @WREG32(i32 %92, i32 %96)
  %98 = load i32, i32* @mmMC_SEQ_IO_DEBUG_DATA, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %6, align 8
  %101 = ptrtoint i32* %99 to i32
  %102 = call i32 @le32_to_cpup(i32 %101)
  %103 = call i32 @WREG32(i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %87

107:                                              ; preds = %87
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, i32* @mmMC_SEQ_SUP_PGM, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %4, align 8
  %116 = ptrtoint i32* %114 to i32
  %117 = call i32 @le32_to_cpup(i32 %116)
  %118 = call i32 @WREG32(i32 %113, i32 %117)
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %108

122:                                              ; preds = %108
  %123 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %124 = call i32 @WREG32(i32 %123, i32 8)
  %125 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %126 = call i32 @WREG32(i32 %125, i32 4)
  %127 = load i32, i32* @mmMC_SEQ_SUP_CNTL, align 4
  %128 = call i32 @WREG32(i32 %127, i32 1)
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %144, %122
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load i32, i32* @mmMC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %137 = call i32 @RREG32(i32 %136)
  %138 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D0_MASK, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %147

142:                                              ; preds = %135
  %143 = call i32 @udelay(i32 1)
  br label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %129

147:                                              ; preds = %141, %129
  store i32 0, i32* %7, align 4
  br label %148

148:                                              ; preds = %163, %147
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %151 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %148
  %155 = load i32, i32* @mmMC_SEQ_TRAIN_WAKEUP_CNTL, align 4
  %156 = call i32 @RREG32(i32 %155)
  %157 = load i32, i32* @MC_SEQ_TRAIN_WAKEUP_CNTL__TRAIN_DONE_D1_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %166

161:                                              ; preds = %154
  %162 = call i32 @udelay(i32 1)
  br label %163

163:                                              ; preds = %161
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %148

166:                                              ; preds = %160, %148
  br label %167

167:                                              ; preds = %166, %19
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %167, %16
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @amdgpu_ucode_print_mc_hdr(%struct.TYPE_6__*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

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
