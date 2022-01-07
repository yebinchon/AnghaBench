; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-pre.c_ipu_pre_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-pre.c_ipu_pre_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_pre = type { i32, i32, i32, i64 }
%struct.drm_format_info = type { i32* }

@DRM_FORMAT_MOD_LINEAR = common dso_local global i64 0, align 8
@IPU_PRE_CUR_BUF = common dso_local global i64 0, align 8
@IPU_PRE_NEXT_BUF = common dso_local global i64 0, align 8
@IPU_PRE_PREF_ENG_CTRL_SHIFT_BYPASS = common dso_local global i32 0, align 4
@IPU_PRE_PREF_ENG_CTRL_PREFETCH_EN = common dso_local global i32 0, align 4
@IPU_PRE_PREFETCH_ENG_CTRL = common dso_local global i64 0, align 8
@IPU_PRE_PREFETCH_ENG_INPUT_SIZE = common dso_local global i64 0, align 8
@IPU_PRE_PREFETCH_ENG_PITCH = common dso_local global i64 0, align 8
@IPU_PRE_STORE_ENG_CTRL_STORE_EN = common dso_local global i32 0, align 4
@IPU_PRE_STORE_ENG_CTRL = common dso_local global i64 0, align 8
@IPU_PRE_STORE_ENG_SIZE = common dso_local global i64 0, align 8
@IPU_PRE_STORE_ENG_PITCH = common dso_local global i64 0, align 8
@IPU_PRE_STORE_ENG_ADDR = common dso_local global i64 0, align 8
@IPU_PRE_TPR_CTRL = common dso_local global i64 0, align 8
@IPU_PRE_TPR_CTRL_TILE_FORMAT_MASK = common dso_local global i32 0, align 4
@IPU_PRE_TPR_CTRL_TILE_FORMAT_SINGLE_BUF = common dso_local global i32 0, align 4
@DRM_FORMAT_MOD_VIVANTE_SUPER_TILED = common dso_local global i64 0, align 8
@IPU_PRE_TPR_CTRL_TILE_FORMAT_SUPER_TILED = common dso_local global i32 0, align 4
@IPU_PRE_TPR_CTRL_TILE_FORMAT_16_BIT = common dso_local global i32 0, align 4
@IPU_PRE_CTRL = common dso_local global i64 0, align 8
@IPU_PRE_CTRL_EN_REPEAT = common dso_local global i32 0, align 4
@IPU_PRE_CTRL_ENABLE = common dso_local global i32 0, align 4
@IPU_PRE_CTRL_SDW_UPDATE = common dso_local global i32 0, align 4
@IPU_PRE_CTRL_BLOCK_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipu_pre_configure(%struct.ipu_pre* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.ipu_pre*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_format_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ipu_pre* %0, %struct.ipu_pre** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call %struct.drm_format_info* @drm_format_info(i32 %18)
  store %struct.drm_format_info* %19, %struct.drm_format_info** %15, align 8
  %20 = load %struct.drm_format_info*, %struct.drm_format_info** %15, align 8
  %21 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %16, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %7
  %30 = load i32, i32* %10, align 4
  %31 = sub i32 %30, 2
  %32 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %33 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %40

34:                                               ; preds = %7
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @DIV_ROUND_UP(i32 %35, i32 4)
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %39 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %43 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IPU_PRE_CUR_BUF, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %50 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPU_PRE_NEXT_BUF, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %57 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = call i32 @IPU_PRE_PREF_ENG_CTRL_INPUT_PIXEL_FORMAT(i32 0)
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @IPU_PRE_PREF_ENG_CTRL_INPUT_ACTIVE_BPP(i32 %59)
  %61 = or i32 %58, %60
  %62 = call i32 @IPU_PRE_PREF_ENG_CTRL_RD_NUM_BYTES(i32 4)
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IPU_PRE_PREF_ENG_CTRL_SHIFT_BYPASS, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @IPU_PRE_PREF_ENG_CTRL_PREFETCH_EN, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %70 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IPU_PRE_PREFETCH_ENG_CTRL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @IPU_PRE_PREFETCH_ENG_INPUT_SIZE_WIDTH(i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @IPU_PRE_PREFETCH_ENG_INPUT_SIZE_HEIGHT(i32 %77)
  %79 = or i32 %76, %78
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %82 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @IPU_PRE_PREFETCH_ENG_INPUT_SIZE, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @IPU_PRE_PREFETCH_ENG_PITCH_Y(i32 %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %91 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IPU_PRE_PREFETCH_ENG_PITCH, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @IPU_PRE_STORE_ENG_CTRL_OUTPUT_ACTIVE_BPP(i32 %96)
  %98 = call i32 @IPU_PRE_STORE_ENG_CTRL_WR_NUM_BYTES(i32 4)
  %99 = or i32 %97, %98
  %100 = load i32, i32* @IPU_PRE_STORE_ENG_CTRL_STORE_EN, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %104 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @IPU_PRE_STORE_ENG_CTRL, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @IPU_PRE_STORE_ENG_SIZE_INPUT_WIDTH(i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @IPU_PRE_STORE_ENG_SIZE_INPUT_HEIGHT(i32 %111)
  %113 = or i32 %110, %112
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %116 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IPU_PRE_STORE_ENG_SIZE, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 %114, i64 %119)
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @IPU_PRE_STORE_ENG_PITCH_OUT_PITCH(i32 %121)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %125 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IPU_PRE_STORE_ENG_PITCH, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %123, i64 %128)
  %130 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %131 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %134 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IPU_PRE_STORE_ENG_ADDR, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @writel(i32 %132, i64 %137)
  %139 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %140 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @IPU_PRE_TPR_CTRL, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @readl(i64 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* @IPU_PRE_TPR_CTRL_TILE_FORMAT_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %17, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %17, align 4
  %149 = load i64, i64* %13, align 8
  %150 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %175

152:                                              ; preds = %40
  %153 = load i32, i32* @IPU_PRE_TPR_CTRL_TILE_FORMAT_SINGLE_BUF, align 4
  %154 = load i32, i32* %17, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %17, align 4
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @DRM_FORMAT_MOD_VIVANTE_SUPER_TILED, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i32, i32* @IPU_PRE_TPR_CTRL_TILE_FORMAT_SUPER_TILED, align 4
  %161 = load i32, i32* %17, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %17, align 4
  br label %163

163:                                              ; preds = %159, %152
  %164 = load %struct.drm_format_info*, %struct.drm_format_info** %15, align 8
  %165 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load i32, i32* @IPU_PRE_TPR_CTRL_TILE_FORMAT_16_BIT, align 4
  %172 = load i32, i32* %17, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %170, %163
  br label %175

175:                                              ; preds = %174, %40
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %178 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @IPU_PRE_TPR_CTRL, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @writel(i32 %176, i64 %181)
  %183 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %184 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @IPU_PRE_CTRL, align 8
  %187 = add nsw i64 %185, %186
  %188 = call i32 @readl(i64 %187)
  store i32 %188, i32* %17, align 4
  %189 = load i32, i32* @IPU_PRE_CTRL_EN_REPEAT, align 4
  %190 = load i32, i32* @IPU_PRE_CTRL_ENABLE, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @IPU_PRE_CTRL_SDW_UPDATE, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* %17, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %17, align 4
  %196 = load i64, i64* %13, align 8
  %197 = load i64, i64* @DRM_FORMAT_MOD_LINEAR, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %175
  %200 = load i32, i32* @IPU_PRE_CTRL_BLOCK_EN, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %17, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %17, align 4
  br label %208

204:                                              ; preds = %175
  %205 = load i32, i32* @IPU_PRE_CTRL_BLOCK_EN, align 4
  %206 = load i32, i32* %17, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %17, align 4
  br label %208

208:                                              ; preds = %204, %199
  %209 = load i32, i32* %17, align 4
  %210 = load %struct.ipu_pre*, %struct.ipu_pre** %8, align 8
  %211 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @IPU_PRE_CTRL, align 8
  %214 = add nsw i64 %212, %213
  %215 = call i32 @writel(i32 %209, i64 %214)
  ret void
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @IPU_PRE_PREF_ENG_CTRL_INPUT_PIXEL_FORMAT(i32) #1

declare dso_local i32 @IPU_PRE_PREF_ENG_CTRL_INPUT_ACTIVE_BPP(i32) #1

declare dso_local i32 @IPU_PRE_PREF_ENG_CTRL_RD_NUM_BYTES(i32) #1

declare dso_local i32 @IPU_PRE_PREFETCH_ENG_INPUT_SIZE_WIDTH(i32) #1

declare dso_local i32 @IPU_PRE_PREFETCH_ENG_INPUT_SIZE_HEIGHT(i32) #1

declare dso_local i32 @IPU_PRE_PREFETCH_ENG_PITCH_Y(i32) #1

declare dso_local i32 @IPU_PRE_STORE_ENG_CTRL_OUTPUT_ACTIVE_BPP(i32) #1

declare dso_local i32 @IPU_PRE_STORE_ENG_CTRL_WR_NUM_BYTES(i32) #1

declare dso_local i32 @IPU_PRE_STORE_ENG_SIZE_INPUT_WIDTH(i32) #1

declare dso_local i32 @IPU_PRE_STORE_ENG_SIZE_INPUT_HEIGHT(i32) #1

declare dso_local i32 @IPU_PRE_STORE_ENG_PITCH_OUT_PITCH(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
