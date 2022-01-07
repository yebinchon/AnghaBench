; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_plane.c_armada_drm_plane_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_plane.c_armada_drm_plane_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { %struct.TYPE_3__, %struct.drm_framebuffer* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32*, i64*, %struct.drm_format_info* }
%struct.drm_format_info = type { i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"pitch %u x %d y %d bpp %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @armada_drm_plane_calc(%struct.drm_plane_state* %0, [3 x i64]* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca [3 x i64]*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_format_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %5, align 8
  store [3 x i64]* %1, [3 x i64]** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %16, i32 0, i32 1
  %18 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %17, align 8
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %9, align 8
  %19 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %20 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %19, i32 0, i32 2
  %21 = load %struct.drm_format_info*, %struct.drm_format_info** %20, align 8
  store %struct.drm_format_info* %21, %struct.drm_format_info** %10, align 8
  %22 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %23 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 16
  store i32 %29, i32* %12, align 4
  %30 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %31 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %13, align 4
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %36 = call %struct.TYPE_4__* @drm_fb_obj(%struct.drm_framebuffer* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %14, align 8
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %40 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %47 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 8
  %52 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45, i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ugt i32 %53, 3
  br i1 %54, label %55, label %56

55:                                               ; preds = %4
  store i32 3, i32* %11, align 4
  br label %56

56:                                               ; preds = %55, %4
  %57 = load i64, i64* %14, align 8
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %59 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %57, %62
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %66 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = mul i32 %64, %69
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %63, %71
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %75 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = mul i32 %73, %78
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %72, %80
  %82 = load [3 x i64]*, [3 x i64]** %6, align 8
  %83 = getelementptr inbounds [3 x i64], [3 x i64]* %82, i64 0
  %84 = getelementptr inbounds [3 x i64], [3 x i64]* %83, i64 0, i64 0
  store i64 %81, i64* %84, align 8
  %85 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %86 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %89, i32* %91, align 4
  %92 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %93 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = udiv i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %98 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %12, align 4
  %101 = udiv i32 %100, %99
  store i32 %101, i32* %12, align 4
  store i32 1, i32* %15, align 4
  br label %102

102:                                              ; preds = %154, %56
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %106, label %157

106:                                              ; preds = %102
  %107 = load i64, i64* %14, align 8
  %108 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %109 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %107, %114
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %118 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = mul i32 %116, %123
  %125 = zext i32 %124 to i64
  %126 = add nsw i64 %115, %125
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.drm_format_info*, %struct.drm_format_info** %10, align 8
  %129 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = mul i32 %127, %134
  %136 = zext i32 %135 to i64
  %137 = add nsw i64 %126, %136
  %138 = load [3 x i64]*, [3 x i64]** %6, align 8
  %139 = getelementptr inbounds [3 x i64], [3 x i64]* %138, i64 0
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [3 x i64], [3 x i64]* %139, i64 0, i64 %141
  store i64 %137, i64* %142, align 8
  %143 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %144 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32 %149, i32* %153, align 4
  br label %154

154:                                              ; preds = %106
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  br label %102

157:                                              ; preds = %102
  br label %158

158:                                              ; preds = %171, %157
  %159 = load i32, i32* %15, align 4
  %160 = icmp slt i32 %159, 3
  br i1 %160, label %161, label %174

161:                                              ; preds = %158
  %162 = load [3 x i64]*, [3 x i64]** %6, align 8
  %163 = getelementptr inbounds [3 x i64], [3 x i64]* %162, i64 0
  %164 = load i32, i32* %15, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [3 x i64], [3 x i64]* %163, i64 0, i64 %165
  store i64 0, i64* %166, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %161
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %158

174:                                              ; preds = %158
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %210

177:                                              ; preds = %174
  store i32 0, i32* %15, align 4
  br label %178

178:                                              ; preds = %206, %177
  %179 = load i32, i32* %15, align 4
  %180 = icmp slt i32 %179, 3
  br i1 %180, label %181, label %209

181:                                              ; preds = %178
  %182 = load [3 x i64]*, [3 x i64]** %6, align 8
  %183 = getelementptr inbounds [3 x i64], [3 x i64]* %182, i64 0
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [3 x i64], [3 x i64]* %183, i64 0, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %187, %193
  %195 = load [3 x i64]*, [3 x i64]** %6, align 8
  %196 = getelementptr inbounds [3 x i64], [3 x i64]* %195, i64 1
  %197 = load i32, i32* %15, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x i64], [3 x i64]* %196, i64 0, i64 %198
  store i64 %194, i64* %199, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = mul nsw i32 %204, 2
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %181
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  br label %178

209:                                              ; preds = %178
  br label %230

210:                                              ; preds = %174
  store i32 0, i32* %15, align 4
  br label %211

211:                                              ; preds = %226, %210
  %212 = load i32, i32* %15, align 4
  %213 = icmp slt i32 %212, 3
  br i1 %213, label %214, label %229

214:                                              ; preds = %211
  %215 = load [3 x i64]*, [3 x i64]** %6, align 8
  %216 = getelementptr inbounds [3 x i64], [3 x i64]* %215, i64 0
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [3 x i64], [3 x i64]* %216, i64 0, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = load [3 x i64]*, [3 x i64]** %6, align 8
  %222 = getelementptr inbounds [3 x i64], [3 x i64]* %221, i64 1
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [3 x i64], [3 x i64]* %222, i64 0, i64 %224
  store i64 %220, i64* %225, align 8
  br label %226

226:                                              ; preds = %214
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4
  br label %211

229:                                              ; preds = %211
  br label %230

230:                                              ; preds = %229, %209
  ret void
}

declare dso_local %struct.TYPE_4__* @drm_fb_obj(%struct.drm_framebuffer*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
