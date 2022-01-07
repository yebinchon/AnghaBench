; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_smc.c_amdgpu_kv_copy_bytes_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_smc.c_amdgpu_kv_copy_bytes_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@mmSMC_IND_DATA_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %204

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = and i32 %30, 3
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %105

34:                                               ; preds = %28
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %15, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %15, align 4
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @kv_set_smc_sram_address(%struct.amdgpu_device* %38, i32 %39, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %204

46:                                               ; preds = %34
  %47 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %48 = call i32 @RREG32(i32 %47)
  store i32 %48, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %19, align 4
  store i32 4, i32* %18, align 4
  br label %49

49:                                               ; preds = %82, %46
  %50 = load i32, i32* %18, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = load i32, i32* %17, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* %19, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %57, 255
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %17, align 4
  br label %82

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = shl i32 %65, 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %9, align 8
  %69 = load i32, i32* %67, align 4
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %19, align 4
  %74 = shl i32 %73, 8
  store i32 %74, i32* %19, align 4
  br label %81

75:                                               ; preds = %61
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %76, 8
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %19, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %79, 255
  store i32 %80, i32* %19, align 4
  br label %81

81:                                               ; preds = %75, %64
  br label %82

82:                                               ; preds = %81, %55
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %18, align 4
  br label %49

85:                                               ; preds = %49
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %19, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @kv_set_smc_sram_address(%struct.amdgpu_device* %91, i32 %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %6, align 4
  br label %204

99:                                               ; preds = %85
  %100 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @WREG32(i32 %100, i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 4
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %99, %28
  br label %106

106:                                              ; preds = %136, %105
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %107, 4
  br i1 %108, label %109, label %146

109:                                              ; preds = %106
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 24
  %114 = load i32*, i32** %9, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 16
  %118 = add nsw i32 %113, %117
  %119 = load i32*, i32** %9, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 8
  %123 = add nsw i32 %118, %122
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %123, %126
  store i32 %127, i32* %13, align 4
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @kv_set_smc_sram_address(%struct.amdgpu_device* %128, i32 %129, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %109
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %6, align 4
  br label %204

136:                                              ; preds = %109
  %137 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @WREG32(i32 %137, i32 %138)
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32* %141, i32** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 4
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 4
  store i32 %145, i32* %15, align 4
  br label %106

146:                                              ; preds = %106
  %147 = load i32, i32* %10, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %203

149:                                              ; preds = %146
  store i32 0, i32* %13, align 4
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @kv_set_smc_sram_address(%struct.amdgpu_device* %150, i32 %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %6, align 4
  br label %204

158:                                              ; preds = %149
  %159 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %160 = call i32 @RREG32(i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 4, %161
  %163 = mul nsw i32 8, %162
  store i32 %163, i32* %16, align 4
  br label %164

164:                                              ; preds = %167, %158
  %165 = load i32, i32* %10, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load i32, i32* %13, align 4
  %169 = shl i32 %168, 8
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %9, align 8
  %172 = load i32, i32* %170, align 4
  %173 = add nsw i32 %169, %172
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %10, align 4
  br label %164

176:                                              ; preds = %164
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %13, align 4
  %179 = shl i32 %178, %177
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = load i32, i32* %16, align 4
  %183 = zext i32 %182 to i64
  %184 = shl i64 -1, %183
  %185 = xor i64 %184, -1
  %186 = and i64 %181, %185
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = or i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %13, align 4
  %191 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @kv_set_smc_sram_address(%struct.amdgpu_device* %191, i32 %192, i32 %193)
  store i32 %194, i32* %12, align 4
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %176
  %198 = load i32, i32* %12, align 4
  store i32 %198, i32* %6, align 4
  br label %204

199:                                              ; preds = %176
  %200 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @WREG32(i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %199, %146
  store i32 0, i32* %6, align 4
  br label %204

204:                                              ; preds = %203, %197, %156, %134, %97, %44, %25
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @kv_set_smc_sram_address(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
