; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_insert_node_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_insert_node_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 }
%struct.drm_mm_node = type { i64, i64, i32, i32, i64, i64, %struct.drm_mm* }

@ENOSPC = common dso_local global i32 0, align 4
@DRM_MM_INSERT_ONCE = common dso_local global i32 0, align 4
@DRM_MM_INSERT_LOW = common dso_local global i32 0, align 4
@DRM_MM_INSERT_HIGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_insert_node_in_range(%struct.drm_mm* %0, %struct.drm_mm_node* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_mm*, align 8
  %11 = alloca %struct.drm_mm_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.drm_mm_node*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.drm_mm* %0, %struct.drm_mm** %10, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* %16, align 8
  %30 = icmp sgt i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @DRM_MM_BUG_ON(i32 %31)
  %33 = load i64, i64* %12, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %8
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %15, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64, i64* %12, align 8
  %40 = icmp slt i64 %38, %39
  br label %41

41:                                               ; preds = %35, %8
  %42 = phi i1 [ true, %8 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOSPC, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %269

49:                                               ; preds = %41
  %50 = load %struct.drm_mm*, %struct.drm_mm** %10, align 8
  %51 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %50, i32 0, i32 1
  %52 = call i32 @rb_first_cached(i32* %51)
  %53 = call i64 @rb_to_hole_size_or_zero(i32 %52)
  %54 = load i64, i64* %12, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %269

59:                                               ; preds = %49
  %60 = load i64, i64* %13, align 8
  %61 = icmp sle i64 %60, 1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 0, i64* %13, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @DRM_MM_INSERT_ONCE, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* @DRM_MM_INSERT_ONCE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %17, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %17, align 4
  %71 = load i64, i64* %13, align 8
  %72 = call i64 @is_power_of_2(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %63
  %75 = load i64, i64* %13, align 8
  %76 = sub nsw i64 %75, 1
  br label %78

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i64 [ %76, %74 ], [ 0, %77 ]
  store i64 %79, i64* %19, align 8
  %80 = load %struct.drm_mm*, %struct.drm_mm** %10, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call %struct.drm_mm_node* @first_hole(%struct.drm_mm* %80, i64 %81, i64 %82, i64 %83, i32 %84)
  store %struct.drm_mm_node* %85, %struct.drm_mm_node** %18, align 8
  br label %86

86:                                               ; preds = %264, %78
  %87 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %88 = icmp ne %struct.drm_mm_node* %87, null
  br i1 %88, label %89, label %266

89:                                               ; preds = %86
  %90 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %91 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %90)
  store i64 %91, i64* %21, align 8
  %92 = load i64, i64* %21, align 8
  %93 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %94 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %92, %95
  store i64 %96, i64* %22, align 8
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @DRM_MM_INSERT_LOW, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %89
  %101 = load i64, i64* %21, align 8
  %102 = load i64, i64* %16, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %266

105:                                              ; preds = %100, %89
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* @DRM_MM_INSERT_HIGH, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i64, i64* %22, align 8
  %111 = load i64, i64* %15, align 8
  %112 = icmp sle i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %266

114:                                              ; preds = %109, %105
  %115 = load i64, i64* %21, align 8
  store i64 %115, i64* %25, align 8
  %116 = load i64, i64* %22, align 8
  store i64 %116, i64* %26, align 8
  %117 = load %struct.drm_mm*, %struct.drm_mm** %10, align 8
  %118 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %117, i32 0, i32 0
  %119 = load i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 (%struct.drm_mm_node*, i64, i64*, i64*)** %118, align 8
  %120 = icmp ne i32 (%struct.drm_mm_node*, i64, i64*, i64*)* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load %struct.drm_mm*, %struct.drm_mm** %10, align 8
  %123 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %122, i32 0, i32 0
  %124 = load i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 (%struct.drm_mm_node*, i64, i64*, i64*)** %123, align 8
  %125 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %126 = load i64, i64* %14, align 8
  %127 = call i32 %124(%struct.drm_mm_node* %125, i64 %126, i64* %25, i64* %26)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i64, i64* %25, align 8
  %130 = load i64, i64* %15, align 8
  %131 = call i64 @max(i64 %129, i64 %130)
  store i64 %131, i64* %23, align 8
  %132 = load i64, i64* %26, align 8
  %133 = load i64, i64* %16, align 8
  %134 = call i64 @min(i64 %132, i64 %133)
  store i64 %134, i64* %24, align 8
  %135 = load i64, i64* %24, align 8
  %136 = load i64, i64* %23, align 8
  %137 = icmp sle i64 %135, %136
  br i1 %137, label %144, label %138

138:                                              ; preds = %128
  %139 = load i64, i64* %24, align 8
  %140 = load i64, i64* %23, align 8
  %141 = sub nsw i64 %139, %140
  %142 = load i64, i64* %12, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %138, %128
  br label %255

145:                                              ; preds = %138
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @DRM_MM_INSERT_HIGH, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load i64, i64* %24, align 8
  %151 = load i64, i64* %12, align 8
  %152 = sub nsw i64 %150, %151
  store i64 %152, i64* %23, align 8
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i64, i64* %13, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %210

156:                                              ; preds = %153
  %157 = load i64, i64* %19, align 8
  %158 = call i64 @likely(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load i64, i64* %23, align 8
  %162 = load i64, i64* %19, align 8
  %163 = and i64 %161, %162
  store i64 %163, i64* %27, align 8
  br label %168

164:                                              ; preds = %156
  %165 = load i64, i64* %23, align 8
  %166 = load i64, i64* %13, align 8
  %167 = call i32 @div64_u64_rem(i64 %165, i64 %166, i64* %27)
  br label %168

168:                                              ; preds = %164, %160
  %169 = load i64, i64* %27, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %209

171:                                              ; preds = %168
  %172 = load i64, i64* %27, align 8
  %173 = load i64, i64* %23, align 8
  %174 = sub nsw i64 %173, %172
  store i64 %174, i64* %23, align 8
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @DRM_MM_INSERT_HIGH, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %171
  %179 = load i64, i64* %13, align 8
  %180 = load i64, i64* %23, align 8
  %181 = add nsw i64 %180, %179
  store i64 %181, i64* %23, align 8
  br label %182

182:                                              ; preds = %178, %171
  %183 = load i64, i64* %23, align 8
  %184 = load i64, i64* %25, align 8
  %185 = load i64, i64* %15, align 8
  %186 = call i64 @max(i64 %184, i64 %185)
  %187 = icmp slt i64 %183, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %182
  %189 = load i64, i64* %26, align 8
  %190 = load i64, i64* %16, align 8
  %191 = call i64 @min(i64 %189, i64 %190)
  %192 = load i64, i64* %23, align 8
  %193 = sub nsw i64 %191, %192
  %194 = load i64, i64* %12, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %188, %182
  br label %255

197:                                              ; preds = %188
  %198 = load i64, i64* %24, align 8
  %199 = load i64, i64* %23, align 8
  %200 = icmp sle i64 %198, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %197
  %202 = load i64, i64* %24, align 8
  %203 = load i64, i64* %23, align 8
  %204 = sub nsw i64 %202, %203
  %205 = load i64, i64* %12, align 8
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %201, %197
  br label %255

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208, %168
  br label %210

210:                                              ; preds = %209, %153
  %211 = load %struct.drm_mm*, %struct.drm_mm** %10, align 8
  %212 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %213 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %212, i32 0, i32 6
  store %struct.drm_mm* %211, %struct.drm_mm** %213, align 8
  %214 = load i64, i64* %12, align 8
  %215 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %216 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %215, i32 0, i32 5
  store i64 %214, i64* %216, align 8
  %217 = load i64, i64* %23, align 8
  %218 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %219 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %218, i32 0, i32 4
  store i64 %217, i64* %219, align 8
  %220 = load i64, i64* %14, align 8
  %221 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %222 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  %223 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %224 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %223, i32 0, i32 0
  store i64 0, i64* %224, align 8
  %225 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %226 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %225, i32 0, i32 3
  %227 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %228 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %227, i32 0, i32 3
  %229 = call i32 @list_add(i32* %226, i32* %228)
  %230 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %231 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %232 = call i32 @drm_mm_interval_tree_add_node(%struct.drm_mm_node* %230, %struct.drm_mm_node* %231)
  %233 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %234 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %233, i32 0, i32 2
  store i32 1, i32* %234, align 8
  %235 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %236 = call i32 @rm_hole(%struct.drm_mm_node* %235)
  %237 = load i64, i64* %23, align 8
  %238 = load i64, i64* %21, align 8
  %239 = icmp sgt i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %210
  %241 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %242 = call i32 @add_hole(%struct.drm_mm_node* %241)
  br label %243

243:                                              ; preds = %240, %210
  %244 = load i64, i64* %23, align 8
  %245 = load i64, i64* %12, align 8
  %246 = add nsw i64 %244, %245
  %247 = load i64, i64* %22, align 8
  %248 = icmp slt i64 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %243
  %250 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %251 = call i32 @add_hole(%struct.drm_mm_node* %250)
  br label %252

252:                                              ; preds = %249, %243
  %253 = load %struct.drm_mm_node*, %struct.drm_mm_node** %11, align 8
  %254 = call i32 @save_stack(%struct.drm_mm_node* %253)
  store i32 0, i32* %9, align 4
  br label %269

255:                                              ; preds = %207, %196, %144
  %256 = load i32, i32* %20, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  br label %264

259:                                              ; preds = %255
  %260 = load %struct.drm_mm*, %struct.drm_mm** %10, align 8
  %261 = load %struct.drm_mm_node*, %struct.drm_mm_node** %18, align 8
  %262 = load i32, i32* %17, align 4
  %263 = call %struct.drm_mm_node* @next_hole(%struct.drm_mm* %260, %struct.drm_mm_node* %261, i32 %262)
  br label %264

264:                                              ; preds = %259, %258
  %265 = phi %struct.drm_mm_node* [ null, %258 ], [ %263, %259 ]
  store %struct.drm_mm_node* %265, %struct.drm_mm_node** %18, align 8
  br label %86

266:                                              ; preds = %113, %104, %86
  %267 = load i32, i32* @ENOSPC, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %9, align 4
  br label %269

269:                                              ; preds = %266, %252, %56, %46
  %270 = load i32, i32* %9, align 4
  ret i32 %270
}

declare dso_local i32 @DRM_MM_BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rb_to_hole_size_or_zero(i32) #1

declare dso_local i32 @rb_first_cached(i32*) #1

declare dso_local i64 @is_power_of_2(i64) #1

declare dso_local %struct.drm_mm_node* @first_hole(%struct.drm_mm*, i64, i64, i64, i32) #1

declare dso_local i64 @__drm_mm_hole_node_start(%struct.drm_mm_node*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @div64_u64_rem(i64, i64, i64*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @drm_mm_interval_tree_add_node(%struct.drm_mm_node*, %struct.drm_mm_node*) #1

declare dso_local i32 @rm_hole(%struct.drm_mm_node*) #1

declare dso_local i32 @add_hole(%struct.drm_mm_node*) #1

declare dso_local i32 @save_stack(%struct.drm_mm_node*) #1

declare dso_local %struct.drm_mm_node* @next_hole(%struct.drm_mm*, %struct.drm_mm_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
