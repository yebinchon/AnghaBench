; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RLC_HB_CNTL = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@CHIP_ARUBA = common dso_local global i64 0, align 8
@CC_GC_SHADER_PIPE_CONFIG = common dso_local global i32 0, align 4
@TN_RLC_LB_ALWAYS_ACTIVE_SIMD_MASK = common dso_local global i32 0, align 4
@TN_RLC_LB_PARAMS = common dso_local global i32 0, align 4
@TN_RLC_LB_INIT_SIMD_MASK = common dso_local global i32 0, align 4
@TN_RLC_LB_CNTR_INIT = common dso_local global i32 0, align 4
@TN_RLC_LB_CNTR_MAX = common dso_local global i32 0, align 4
@RLC_HB_WPTR_LSB_ADDR = common dso_local global i32 0, align 4
@RLC_HB_WPTR_MSB_ADDR = common dso_local global i32 0, align 4
@TN_RLC_SAVE_AND_RESTORE_BASE = common dso_local global i32 0, align 4
@TN_RLC_CLEAR_STATE_RESTORE_BASE = common dso_local global i32 0, align 4
@RLC_HB_BASE = common dso_local global i32 0, align 4
@RLC_HB_RPTR = common dso_local global i32 0, align 4
@RLC_HB_WPTR = common dso_local global i32 0, align 4
@RLC_MC_CNTL = common dso_local global i32 0, align 4
@RLC_UCODE_CNTL = common dso_local global i32 0, align 4
@ARUBA_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@RLC_UCODE_ADDR = common dso_local global i32 0, align 4
@RLC_UCODE_DATA = common dso_local global i32 0, align 4
@CHIP_CAYMAN = common dso_local global i64 0, align 8
@CAYMAN_RLC_UCODE_SIZE = common dso_local global i32 0, align 4
@EVERGREEN_RLC_UCODE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evergreen_rlc_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %192

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = call i32 @r600_rlc_stop(%struct.radeon_device* %16)
  %18 = load i32, i32* @RLC_HB_CNTL, align 4
  %19 = call i32 @WREG32(i32 %18, i32 0)
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RADEON_IS_IGP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %96

26:                                               ; preds = %15
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_ARUBA, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %26
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 16, %37
  %39 = shl i32 3, %38
  %40 = or i32 3, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @CC_GC_SHADER_PIPE_CONFIG, align 4
  %42 = call i32 @RREG32(i32 %41)
  %43 = and i32 %42, -65536
  %44 = lshr i32 %43, 16
  store i32 %44, i32* %7, align 4
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 -1, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @hweight32(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %32
  %64 = load i32, i32* @TN_RLC_LB_ALWAYS_ACTIVE_SIMD_MASK, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @WREG32(i32 %64, i32 %65)
  %67 = load i32, i32* @TN_RLC_LB_PARAMS, align 4
  %68 = call i32 @WREG32(i32 %67, i32 6295556)
  %69 = load i32, i32* @TN_RLC_LB_INIT_SIMD_MASK, align 4
  %70 = call i32 @WREG32(i32 %69, i32 -1)
  %71 = load i32, i32* @TN_RLC_LB_CNTR_INIT, align 4
  %72 = call i32 @WREG32(i32 %71, i32 0)
  %73 = load i32, i32* @TN_RLC_LB_CNTR_MAX, align 4
  %74 = call i32 @WREG32(i32 %73, i32 8192)
  br label %75

75:                                               ; preds = %63, %32
  br label %81

76:                                               ; preds = %26
  %77 = load i32, i32* @RLC_HB_WPTR_LSB_ADDR, align 4
  %78 = call i32 @WREG32(i32 %77, i32 0)
  %79 = load i32, i32* @RLC_HB_WPTR_MSB_ADDR, align 4
  %80 = call i32 @WREG32(i32 %79, i32 0)
  br label %81

81:                                               ; preds = %76, %75
  %82 = load i32, i32* @TN_RLC_SAVE_AND_RESTORE_BASE, align 4
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 8
  %88 = call i32 @WREG32(i32 %82, i32 %87)
  %89 = load i32, i32* @TN_RLC_CLEAR_STATE_RESTORE_BASE, align 4
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 8
  %95 = call i32 @WREG32(i32 %89, i32 %94)
  br label %107

96:                                               ; preds = %15
  %97 = load i32, i32* @RLC_HB_BASE, align 4
  %98 = call i32 @WREG32(i32 %97, i32 0)
  %99 = load i32, i32* @RLC_HB_RPTR, align 4
  %100 = call i32 @WREG32(i32 %99, i32 0)
  %101 = load i32, i32* @RLC_HB_WPTR, align 4
  %102 = call i32 @WREG32(i32 %101, i32 0)
  %103 = load i32, i32* @RLC_HB_WPTR_LSB_ADDR, align 4
  %104 = call i32 @WREG32(i32 %103, i32 0)
  %105 = load i32, i32* @RLC_HB_WPTR_MSB_ADDR, align 4
  %106 = call i32 @WREG32(i32 %105, i32 0)
  br label %107

107:                                              ; preds = %96, %81
  %108 = load i32, i32* @RLC_MC_CNTL, align 4
  %109 = call i32 @WREG32(i32 %108, i32 0)
  %110 = load i32, i32* @RLC_UCODE_CNTL, align 4
  %111 = call i32 @WREG32(i32 %110, i32 0)
  %112 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %113 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  store i32* %117, i32** %5, align 8
  %118 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CHIP_ARUBA, align 8
  %122 = icmp sge i64 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %138, %123
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @ARUBA_RLC_UCODE_SIZE, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @WREG32(i32 %129, i32 %130)
  %132 = load i32, i32* @RLC_UCODE_DATA, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %5, align 8
  %135 = ptrtoint i32* %133 to i32
  %136 = call i32 @be32_to_cpup(i32 %135)
  %137 = call i32 @WREG32(i32 %132, i32 %136)
  br label %138

138:                                              ; preds = %128
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %124

141:                                              ; preds = %124
  br label %187

142:                                              ; preds = %107
  %143 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CHIP_CAYMAN, align 8
  %147 = icmp sge i64 %145, %146
  br i1 %147, label %148, label %167

148:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %163, %148
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @CAYMAN_RLC_UCODE_SIZE, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %149
  %154 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @WREG32(i32 %154, i32 %155)
  %157 = load i32, i32* @RLC_UCODE_DATA, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %5, align 8
  %160 = ptrtoint i32* %158 to i32
  %161 = call i32 @be32_to_cpup(i32 %160)
  %162 = call i32 @WREG32(i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %153
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %149

166:                                              ; preds = %149
  br label %186

167:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %182, %167
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @EVERGREEN_RLC_UCODE_SIZE, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @WREG32(i32 %173, i32 %174)
  %176 = load i32, i32* @RLC_UCODE_DATA, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %5, align 8
  %179 = ptrtoint i32* %177 to i32
  %180 = call i32 @be32_to_cpup(i32 %179)
  %181 = call i32 @WREG32(i32 %176, i32 %180)
  br label %182

182:                                              ; preds = %172
  %183 = load i32, i32* %4, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %4, align 4
  br label %168

185:                                              ; preds = %168
  br label %186

186:                                              ; preds = %185, %166
  br label %187

187:                                              ; preds = %186, %141
  %188 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %189 = call i32 @WREG32(i32 %188, i32 0)
  %190 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %191 = call i32 @evergreen_rlc_start(%struct.radeon_device* %190)
  store i32 0, i32* %2, align 4
  br label %192

192:                                              ; preds = %187, %12
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i32 @r600_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @evergreen_rlc_start(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
