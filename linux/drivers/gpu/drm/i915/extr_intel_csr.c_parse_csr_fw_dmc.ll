; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_parse_csr_fw_dmc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_parse_csr_fw_dmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_csr = type { i32*, i32, i32, i32, i32, i32* }
%struct.intel_dmc_header_base = type { i32, i32, i32 }
%struct.intel_dmc_header_v3 = type { i32*, i32*, i32 }
%struct.intel_dmc_header_v1 = type { i32*, i32*, i32 }

@DMC_V3_MAX_MMIO_COUNT = common dso_local global i64 0, align 8
@DMC_V1_MAX_MMIO_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unknown DMC fw header version: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"DMC firmware has wrong dmc header length (%u bytes)\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"DMC firmware has wrong mmio count %u\0A\00", align 1
@CSR_MMIO_START_RANGE = common dso_local global i32 0, align 4
@CSR_MMIO_END_RANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"DMC firmware has wrong mmio address 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"DMC FW too big (%u bytes)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Memory allocation failed for dmc payload\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Truncated DMC firmware, refusing.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_csr*, %struct.intel_dmc_header_base*, i64)* @parse_csr_fw_dmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_csr_fw_dmc(%struct.intel_csr* %0, %struct.intel_dmc_header_base* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_csr*, align 8
  %6 = alloca %struct.intel_dmc_header_base*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.intel_dmc_header_v3*, align 8
  %18 = alloca %struct.intel_dmc_header_v1*, align 8
  store %struct.intel_csr* %0, %struct.intel_csr** %5, align 8
  store %struct.intel_dmc_header_base* %1, %struct.intel_dmc_header_base** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %20 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @ARRAY_SIZE(i32* %21)
  %23 = load i64, i64* @DMC_V3_MAX_MMIO_COUNT, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %3
  %26 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %27 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @ARRAY_SIZE(i32* %28)
  %30 = load i64, i64* @DMC_V1_MAX_MMIO_COUNT, align 8
  %31 = icmp slt i64 %29, %30
  br label %32

32:                                               ; preds = %25, %3
  %33 = phi i1 [ true, %3 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUILD_BUG_ON(i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %36, 12
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %225

39:                                               ; preds = %32
  %40 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %41 = getelementptr inbounds %struct.intel_dmc_header_base, %struct.intel_dmc_header_base* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %46 = bitcast %struct.intel_dmc_header_base* %45 to %struct.intel_dmc_header_v3*
  store %struct.intel_dmc_header_v3* %46, %struct.intel_dmc_header_v3** %17, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %47, 24
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %225

50:                                               ; preds = %44
  %51 = load %struct.intel_dmc_header_v3*, %struct.intel_dmc_header_v3** %17, align 8
  %52 = getelementptr inbounds %struct.intel_dmc_header_v3, %struct.intel_dmc_header_v3* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %12, align 8
  %54 = load %struct.intel_dmc_header_v3*, %struct.intel_dmc_header_v3** %17, align 8
  %55 = getelementptr inbounds %struct.intel_dmc_header_v3, %struct.intel_dmc_header_v3* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %13, align 8
  %57 = load %struct.intel_dmc_header_v3*, %struct.intel_dmc_header_v3** %17, align 8
  %58 = getelementptr inbounds %struct.intel_dmc_header_v3, %struct.intel_dmc_header_v3* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %14, align 4
  %60 = load i64, i64* @DMC_V3_MAX_MMIO_COUNT, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %15, align 4
  %62 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %63 = getelementptr inbounds %struct.intel_dmc_header_base, %struct.intel_dmc_header_base* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 4
  store i32 %65, i32* %8, align 4
  store i32 24, i32* %9, align 4
  br label %98

66:                                               ; preds = %39
  %67 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %68 = getelementptr inbounds %struct.intel_dmc_header_base, %struct.intel_dmc_header_base* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %73 = bitcast %struct.intel_dmc_header_base* %72 to %struct.intel_dmc_header_v1*
  store %struct.intel_dmc_header_v1* %73, %struct.intel_dmc_header_v1** %18, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp ult i64 %74, 24
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %225

77:                                               ; preds = %71
  %78 = load %struct.intel_dmc_header_v1*, %struct.intel_dmc_header_v1** %18, align 8
  %79 = getelementptr inbounds %struct.intel_dmc_header_v1, %struct.intel_dmc_header_v1* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %12, align 8
  %81 = load %struct.intel_dmc_header_v1*, %struct.intel_dmc_header_v1** %18, align 8
  %82 = getelementptr inbounds %struct.intel_dmc_header_v1, %struct.intel_dmc_header_v1* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %13, align 8
  %84 = load %struct.intel_dmc_header_v1*, %struct.intel_dmc_header_v1** %18, align 8
  %85 = getelementptr inbounds %struct.intel_dmc_header_v1, %struct.intel_dmc_header_v1* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %14, align 4
  %87 = load i64, i64* @DMC_V1_MAX_MMIO_COUNT, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %15, align 4
  %89 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %90 = getelementptr inbounds %struct.intel_dmc_header_base, %struct.intel_dmc_header_base* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  store i32 24, i32* %9, align 4
  br label %97

92:                                               ; preds = %66
  %93 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %94 = getelementptr inbounds %struct.intel_dmc_header_base, %struct.intel_dmc_header_base* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %95)
  store i32 0, i32* %4, align 4
  br label %227

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %50
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  store i32 0, i32* %4, align 4
  br label %227

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ugt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* %14, align 4
  %111 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  store i32 0, i32* %4, align 4
  br label %227

112:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %164, %112
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %167

117:                                              ; preds = %113
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %11, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CSR_MMIO_START_RANGE, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %133, label %125

125:                                              ; preds = %117
  %126 = load i32*, i32** %12, align 8
  %127 = load i32, i32* %11, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CSR_MMIO_END_RANGE, align 4
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %125, %117
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  store i32 0, i32* %4, align 4
  br label %227

140:                                              ; preds = %125
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %11, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @_MMIO(i32 %145)
  %147 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %148 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %146, i32* %152, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* %11, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %159 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  br label %164

164:                                              ; preds = %140
  %165 = load i32, i32* %11, align 4
  %166 = add i32 %165, 1
  store i32 %166, i32* %11, align 4
  br label %113

167:                                              ; preds = %113
  %168 = load i32, i32* %14, align 4
  %169 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %170 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = load i64, i64* %7, align 8
  %174 = sub i64 %173, %172
  store i64 %174, i64* %7, align 8
  %175 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %176 = getelementptr inbounds %struct.intel_dmc_header_base, %struct.intel_dmc_header_base* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = mul nsw i32 %177, 4
  store i32 %178, i32* %10, align 4
  %179 = load i64, i64* %7, align 8
  %180 = load i32, i32* %10, align 4
  %181 = zext i32 %180 to i64
  %182 = icmp ult i64 %179, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %167
  br label %225

184:                                              ; preds = %167
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %187 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp ugt i32 %185, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load i32, i32* %10, align 4
  %192 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %191)
  store i32 0, i32* %4, align 4
  br label %227

193:                                              ; preds = %184
  %194 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %195 = getelementptr inbounds %struct.intel_dmc_header_base, %struct.intel_dmc_header_base* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %198 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @GFP_KERNEL, align 4
  %201 = call i32 @kmalloc(i32 %199, i32 %200)
  %202 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %203 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 4
  %204 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %205 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %193
  %209 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %227

210:                                              ; preds = %193
  %211 = load %struct.intel_dmc_header_base*, %struct.intel_dmc_header_base** %6, align 8
  %212 = bitcast %struct.intel_dmc_header_base* %211 to i32*
  %213 = load i32, i32* %8, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32* %215, i32** %16, align 8
  %216 = load %struct.intel_csr*, %struct.intel_csr** %5, align 8
  %217 = getelementptr inbounds %struct.intel_csr, %struct.intel_csr* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %16, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @memcpy(i32 %218, i32* %219, i32 %220)
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %10, align 4
  %224 = add i32 %222, %223
  store i32 %224, i32* %4, align 4
  br label %227

225:                                              ; preds = %183, %76, %49, %38
  %226 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %225, %210, %208, %190, %133, %109, %102, %92
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @_MMIO(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
