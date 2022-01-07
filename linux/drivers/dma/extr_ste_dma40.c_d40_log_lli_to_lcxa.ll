; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_log_lli_to_lcxa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_log_lli_to_lcxa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__*, %struct.d40_lcla_pool }
%struct.TYPE_5__ = type { i32 }
%struct.d40_lcla_pool = type { i32, %struct.d40_log_lli* }
%struct.d40_log_lli = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.d40_desc = type { i32, i32, i32, %struct.d40_log_lli_bidir }
%struct.d40_log_lli_bidir = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i64 0, align 8
@LLI_TERM_INT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d40_chan*, %struct.d40_desc*)* @d40_log_lli_to_lcxa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d40_log_lli_to_lcxa(%struct.d40_chan* %0, %struct.d40_desc* %1) #0 {
  %3 = alloca %struct.d40_chan*, align 8
  %4 = alloca %struct.d40_desc*, align 8
  %5 = alloca %struct.d40_lcla_pool*, align 8
  %6 = alloca %struct.d40_log_lli_bidir*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.d40_log_lli*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %3, align 8
  store %struct.d40_desc* %1, %struct.d40_desc** %4, align 8
  %19 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %20 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store %struct.d40_lcla_pool* %22, %struct.d40_lcla_pool** %5, align 8
  %23 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %24 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %23, i32 0, i32 3
  store %struct.d40_log_lli_bidir* %24, %struct.d40_log_lli_bidir** %6, align 8
  %25 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %26 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %29 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %32 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %36 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %37 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %45, %2
  %49 = phi i1 [ false, %2 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %54, %55
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %78

58:                                               ; preds = %53, %48
  %59 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %60 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %67 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DMA_DEV_TO_MEM, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %74 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %75 = call i32 @d40_lcla_alloc_one(%struct.d40_chan* %73, %struct.d40_desc* %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %53
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %81, %78
  store i32 0, i32* %14, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load i32, i32* @LLI_TERM_INT, align 4
  %93 = load i32, i32* %14, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %91, %86
  %96 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %97 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.d40_log_lli_bidir*, %struct.d40_log_lli_bidir** %6, align 8
  %100 = getelementptr inbounds %struct.d40_log_lli_bidir, %struct.d40_log_lli_bidir* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load %struct.d40_log_lli_bidir*, %struct.d40_log_lli_bidir** %6, align 8
  %106 = getelementptr inbounds %struct.d40_log_lli_bidir, %struct.d40_log_lli_bidir* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @d40_log_lli_lcpa_write(i32 %98, i32* %104, i32* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %95, %81
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %247

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %243, %120
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %246

125:                                              ; preds = %121
  %126 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %127 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %126, i32 0, i32 2
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %130, 1024
  %132 = load i32, i32* %10, align 4
  %133 = mul nsw i32 8, %132
  %134 = mul nsw i32 %133, 2
  %135 = add nsw i32 %131, %134
  store i32 %135, i32* %15, align 4
  %136 = load %struct.d40_lcla_pool*, %struct.d40_lcla_pool** %5, align 8
  %137 = getelementptr inbounds %struct.d40_lcla_pool, %struct.d40_lcla_pool* %136, i32 0, i32 1
  %138 = load %struct.d40_log_lli*, %struct.d40_log_lli** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.d40_log_lli, %struct.d40_log_lli* %138, i64 %140
  store %struct.d40_log_lli* %141, %struct.d40_log_lli** %16, align 8
  store i32 0, i32* %17, align 4
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* %8, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %125
  %147 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %148 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %149 = call i32 @d40_lcla_alloc_one(%struct.d40_chan* %147, %struct.d40_desc* %148)
  store i32 %149, i32* %18, align 4
  br label %160

150:                                              ; preds = %125
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  br label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  br label %158

158:                                              ; preds = %155, %153
  %159 = phi i32 [ %154, %153 ], [ %157, %155 ]
  store i32 %159, i32* %18, align 4
  br label %160

160:                                              ; preds = %158, %146
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163, %160
  %169 = load i32, i32* @LLI_TERM_INT, align 4
  %170 = load i32, i32* %17, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %17, align 4
  br label %172

172:                                              ; preds = %168, %163
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %198

175:                                              ; preds = %172
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %198

179:                                              ; preds = %175
  %180 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %181 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.d40_log_lli_bidir*, %struct.d40_log_lli_bidir** %6, align 8
  %184 = getelementptr inbounds %struct.d40_log_lli_bidir, %struct.d40_log_lli_bidir* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load %struct.d40_log_lli_bidir*, %struct.d40_log_lli_bidir** %6, align 8
  %190 = getelementptr inbounds %struct.d40_log_lli_bidir, %struct.d40_log_lli_bidir* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* %17, align 4
  %197 = call i32 @d40_log_lli_lcpa_write(i32 %182, i32* %188, i32* %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %179, %175, %172
  %199 = load %struct.d40_log_lli*, %struct.d40_log_lli** %16, align 8
  %200 = load %struct.d40_log_lli_bidir*, %struct.d40_log_lli_bidir** %6, align 8
  %201 = getelementptr inbounds %struct.d40_log_lli_bidir, %struct.d40_log_lli_bidir* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load %struct.d40_log_lli_bidir*, %struct.d40_log_lli_bidir** %6, align 8
  %207 = getelementptr inbounds %struct.d40_log_lli_bidir, %struct.d40_log_lli_bidir* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %18, align 4
  %213 = load i32, i32* %17, align 4
  %214 = call i32 @d40_log_lli_lcla_write(%struct.d40_log_lli* %199, i32* %205, i32* %211, i32 %212, i32 %213)
  %215 = load i32, i32* %12, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %198
  %218 = load %struct.d40_chan*, %struct.d40_chan** %3, align 8
  %219 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %218, i32 0, i32 0
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.d40_lcla_pool*, %struct.d40_lcla_pool** %5, align 8
  %224 = getelementptr inbounds %struct.d40_lcla_pool, %struct.d40_lcla_pool* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* @DMA_TO_DEVICE, align 4
  %228 = call i32 @dma_sync_single_range_for_device(i32 %222, i32 %225, i32 %226, i32 8, i32 %227)
  br label %229

229:                                              ; preds = %217, %198
  %230 = load i32, i32* %18, align 4
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  %234 = icmp eq i32 %231, %233
  br i1 %234, label %239, label %235

235:                                              ; preds = %229
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %235, %229
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %246

242:                                              ; preds = %235
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %121

246:                                              ; preds = %239, %121
  br label %247

247:                                              ; preds = %246, %119
  %248 = load i32, i32* %7, align 4
  %249 = load %struct.d40_desc*, %struct.d40_desc** %4, align 8
  %250 = getelementptr inbounds %struct.d40_desc, %struct.d40_desc* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  ret void
}

declare dso_local i32 @d40_lcla_alloc_one(%struct.d40_chan*, %struct.d40_desc*) #1

declare dso_local i32 @d40_log_lli_lcpa_write(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @d40_log_lli_lcla_write(%struct.d40_log_lli*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dma_sync_single_range_for_device(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
