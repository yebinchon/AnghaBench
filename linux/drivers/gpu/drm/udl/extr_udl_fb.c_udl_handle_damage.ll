; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_handle_damage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_fb.c_udl_handle_damage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_framebuffer = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32* }
%struct.drm_device = type { i32 }
%struct.udl_device = type { i32, i32, i32, i32 }
%struct.urb = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"failed to vmap fb\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to vmapping\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udl_handle_damage(%struct.udl_framebuffer* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.udl_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca %struct.udl_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.urb*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.udl_framebuffer* %0, %struct.udl_framebuffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %28 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %29 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  store %struct.drm_device* %31, %struct.drm_device** %12, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %33 = call %struct.udl_device* @to_udl(%struct.drm_device* %32)
  store %struct.udl_device* %33, %struct.udl_device** %13, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %34 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %35 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @is_power_of_2(i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %48 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__ffs(i32 %54)
  store i32 %55, i32* %23, align 4
  %56 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %57 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %249

61:                                               ; preds = %5
  %62 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %63 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %61
  %69 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %70 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = call i32 @udl_gem_vmap(%struct.TYPE_6__* %71)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %249

79:                                               ; preds = %68
  %80 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %81 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %249

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %61
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @DL_ALIGN_DOWN(i32 %90, i32 8)
  store i32 %91, i32* %22, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %22, align 4
  %95 = sub nsw i32 %93, %94
  %96 = add nsw i32 %92, %95
  %97 = call i32 @DL_ALIGN_UP(i32 %96, i32 8)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %22, align 4
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %102, %103
  %105 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %106 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %104, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %111, %112
  %114 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %115 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %113, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %110, %101, %89
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %249

122:                                              ; preds = %110
  %123 = call i32 (...) @get_cycles()
  store i32 %123, i32* %17, align 4
  %124 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %125 = call %struct.urb* @udl_get_urb(%struct.drm_device* %124)
  store %struct.urb* %125, %struct.urb** %21, align 8
  %126 = load %struct.urb*, %struct.urb** %21, align 8
  %127 = icmp ne %struct.urb* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %122
  store i32 0, i32* %6, align 4
  br label %249

129:                                              ; preds = %122
  %130 = load %struct.urb*, %struct.urb** %21, align 8
  %131 = getelementptr inbounds %struct.urb, %struct.urb* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %16, align 8
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %181, %129
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %136, %137
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %184

140:                                              ; preds = %134
  %141 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %142 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %14, align 4
  %148 = mul nsw i32 %146, %147
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %23, align 4
  %152 = shl i32 %150, %151
  %153 = add nsw i32 %149, %152
  store i32 %153, i32* %25, align 4
  %154 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %155 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %23, align 4
  %163 = shl i32 %161, %162
  store i32 %163, i32* %26, align 4
  %164 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %165 = load i32, i32* %23, align 4
  %166 = load %struct.udl_framebuffer*, %struct.udl_framebuffer** %7, align 8
  %167 = getelementptr inbounds %struct.udl_framebuffer, %struct.udl_framebuffer* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %23, align 4
  %176 = shl i32 %174, %175
  %177 = call i64 @udl_render_hline(%struct.drm_device* %164, i32 %165, %struct.urb** %21, i8* %171, i8** %16, i32 %172, i32 %173, i32 %176, i32* %20, i32* %19)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %140
  br label %224

180:                                              ; preds = %140
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %134

184:                                              ; preds = %134
  %185 = load i8*, i8** %16, align 8
  %186 = load %struct.urb*, %struct.urb** %21, align 8
  %187 = getelementptr inbounds %struct.urb, %struct.urb* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ugt i8* %185, %188
  br i1 %189, label %190, label %220

190:                                              ; preds = %184
  %191 = load i8*, i8** %16, align 8
  %192 = load %struct.urb*, %struct.urb** %21, align 8
  %193 = getelementptr inbounds %struct.urb, %struct.urb* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.urb*, %struct.urb** %21, align 8
  %196 = getelementptr inbounds %struct.urb, %struct.urb* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  %200 = icmp ult i8* %191, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %190
  %202 = load i8*, i8** %16, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %16, align 8
  store i8 -81, i8* %202, align 1
  br label %204

204:                                              ; preds = %201, %190
  %205 = load i8*, i8** %16, align 8
  %206 = load %struct.urb*, %struct.urb** %21, align 8
  %207 = getelementptr inbounds %struct.urb, %struct.urb* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = ptrtoint i8* %205 to i64
  %210 = ptrtoint i8* %208 to i64
  %211 = sub i64 %209, %210
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %27, align 4
  %213 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %214 = load %struct.urb*, %struct.urb** %21, align 8
  %215 = load i32, i32* %27, align 4
  %216 = call i32 @udl_submit_urb(%struct.drm_device* %213, %struct.urb* %214, i32 %215)
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %27, align 4
  %218 = load i32, i32* %19, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %19, align 4
  br label %223

220:                                              ; preds = %184
  %221 = load %struct.urb*, %struct.urb** %21, align 8
  %222 = call i32 @udl_urb_completion(%struct.urb* %221)
  br label %223

223:                                              ; preds = %220, %204
  br label %224

224:                                              ; preds = %223, %179
  %225 = load i32, i32* %19, align 4
  %226 = load %struct.udl_device*, %struct.udl_device** %13, align 8
  %227 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %226, i32 0, i32 3
  %228 = call i32 @atomic_add(i32 %225, i32* %227)
  %229 = load i32, i32* %20, align 4
  %230 = load %struct.udl_device*, %struct.udl_device** %13, align 8
  %231 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %230, i32 0, i32 2
  %232 = call i32 @atomic_add(i32 %229, i32* %231)
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %11, align 4
  %235 = mul nsw i32 %233, %234
  %236 = load i32, i32* %23, align 4
  %237 = shl i32 %235, %236
  %238 = load %struct.udl_device*, %struct.udl_device** %13, align 8
  %239 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %238, i32 0, i32 1
  %240 = call i32 @atomic_add(i32 %237, i32* %239)
  %241 = call i32 (...) @get_cycles()
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %17, align 4
  %244 = sub nsw i32 %242, %243
  %245 = ashr i32 %244, 10
  %246 = load %struct.udl_device*, %struct.udl_device** %13, align 8
  %247 = getelementptr inbounds %struct.udl_device, %struct.udl_device* %246, i32 0, i32 0
  %248 = call i32 @atomic_add(i32 %245, i32* %247)
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %224, %128, %119, %86, %77, %60
  %250 = load i32, i32* %6, align 4
  ret i32 %250
}

declare dso_local %struct.udl_device* @to_udl(%struct.drm_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @udl_gem_vmap(%struct.TYPE_6__*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @DL_ALIGN_DOWN(i32, i32) #1

declare dso_local i32 @DL_ALIGN_UP(i32, i32) #1

declare dso_local i32 @get_cycles(...) #1

declare dso_local %struct.urb* @udl_get_urb(%struct.drm_device*) #1

declare dso_local i64 @udl_render_hline(%struct.drm_device*, i32, %struct.urb**, i8*, i8**, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @udl_submit_urb(%struct.drm_device*, %struct.urb*, i32) #1

declare dso_local i32 @udl_urb_completion(%struct.urb*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
