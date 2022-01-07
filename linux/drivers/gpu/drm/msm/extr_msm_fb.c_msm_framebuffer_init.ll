; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fb.c_msm_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_fb.c_msm_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.TYPE_4__, %struct.drm_gem_object** }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.msm_kms* }
%struct.msm_kms = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.msm_format* (%struct.msm_kms*, i32, i32)* }
%struct.msm_format = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32*, i32*, i32, i32* }
%struct.drm_gem_object = type { i32 }
%struct.drm_format_info = type { i32, i32, i32, i32* }
%struct.msm_framebuffer = type { %struct.drm_framebuffer, %struct.msm_format* }

@.str = private unnamed_addr constant [54 x i8] c"create framebuffer: dev=%p, mode_cmd=%p (%dx%d@%4.4s)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unsupported pixel format: %4.4s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msm_framebuffer_funcs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"framebuffer init failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"create: FB ID: %d (%p)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_framebuffer* (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.drm_gem_object**)* @msm_framebuffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_framebuffer* @msm_framebuffer_init(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.drm_gem_object** %2) #0 {
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %7 = alloca %struct.drm_gem_object**, align 8
  %8 = alloca %struct.drm_format_info*, align 8
  %9 = alloca %struct.msm_drm_private*, align 8
  %10 = alloca %struct.msm_kms*, align 8
  %11 = alloca %struct.msm_framebuffer*, align 8
  %12 = alloca %struct.drm_framebuffer*, align 8
  %13 = alloca %struct.msm_format*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %6, align 8
  store %struct.drm_gem_object** %2, %struct.drm_gem_object*** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %22 = call %struct.drm_format_info* @drm_get_format_info(%struct.drm_device* %20, %struct.drm_mode_fb_cmd2* %21)
  store %struct.drm_format_info* %22, %struct.drm_format_info** %8, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load %struct.msm_drm_private*, %struct.msm_drm_private** %24, align 8
  store %struct.msm_drm_private* %25, %struct.msm_drm_private** %9, align 8
  %26 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %27 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %26, i32 0, i32 0
  %28 = load %struct.msm_kms*, %struct.msm_kms** %27, align 8
  store %struct.msm_kms* %28, %struct.msm_kms** %10, align 8
  store %struct.msm_framebuffer* null, %struct.msm_framebuffer** %11, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %30 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %31 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %32 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %35 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %38 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %37, i32 0, i32 4
  %39 = bitcast i32* %38 to i8*
  %40 = call i32 (i8*, %struct.drm_device*, ...) @DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.drm_device* %29, %struct.drm_mode_fb_cmd2* %30, i32 %33, i32 %36, i8* %39)
  %41 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %42 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %16, align 4
  %44 = load %struct.msm_kms*, %struct.msm_kms** %10, align 8
  %45 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.msm_format* (%struct.msm_kms*, i32, i32)*, %struct.msm_format* (%struct.msm_kms*, i32, i32)** %47, align 8
  %49 = load %struct.msm_kms*, %struct.msm_kms** %10, align 8
  %50 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %51 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %54 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.msm_format* %48(%struct.msm_kms* %49, i32 %52, i32 %57)
  store %struct.msm_format* %58, %struct.msm_format** %13, align 8
  %59 = load %struct.msm_format*, %struct.msm_format** %13, align 8
  %60 = icmp ne %struct.msm_format* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %3
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %66 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %65, i32 0, i32 4
  %67 = bitcast i32* %66 to i8*
  %68 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %208

71:                                               ; preds = %3
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.msm_framebuffer* @kzalloc(i32 24, i32 %72)
  store %struct.msm_framebuffer* %73, %struct.msm_framebuffer** %11, align 8
  %74 = load %struct.msm_framebuffer*, %struct.msm_framebuffer** %11, align 8
  %75 = icmp ne %struct.msm_framebuffer* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %208

79:                                               ; preds = %71
  %80 = load %struct.msm_framebuffer*, %struct.msm_framebuffer** %11, align 8
  %81 = getelementptr inbounds %struct.msm_framebuffer, %struct.msm_framebuffer* %80, i32 0, i32 0
  store %struct.drm_framebuffer* %81, %struct.drm_framebuffer** %12, align 8
  %82 = load %struct.msm_format*, %struct.msm_format** %13, align 8
  %83 = load %struct.msm_framebuffer*, %struct.msm_framebuffer** %11, align 8
  %84 = getelementptr inbounds %struct.msm_framebuffer, %struct.msm_framebuffer* %83, i32 0, i32 1
  store %struct.msm_format* %82, %struct.msm_format** %84, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %87 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %86, i32 0, i32 1
  %88 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %87, align 8
  %89 = call i32 @ARRAY_SIZE(%struct.drm_gem_object** %88)
  %90 = icmp sgt i32 %85, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %14, align 4
  br label %208

94:                                               ; preds = %79
  store i32 0, i32* %15, align 4
  br label %95

95:                                               ; preds = %179, %94
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %182

99:                                               ; preds = %95
  %100 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %101 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %107 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  br label %110

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %105
  %111 = phi i32 [ %108, %105 ], [ 1, %109 ]
  %112 = sdiv i32 %102, %111
  store i32 %112, i32* %17, align 4
  %113 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %114 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %120 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  br label %123

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %118
  %124 = phi i32 [ %121, %118 ], [ 1, %122 ]
  %125 = sdiv i32 %115, %124
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = sub i32 %126, 1
  %128 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %129 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = mul i32 %127, %134
  %136 = load i32, i32* %17, align 4
  %137 = load %struct.drm_format_info*, %struct.drm_format_info** %8, align 8
  %138 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = mul i32 %136, %143
  %145 = add i32 %135, %144
  %146 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %147 = getelementptr inbounds %struct.drm_mode_fb_cmd2, %struct.drm_mode_fb_cmd2* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %145, %152
  store i32 %153, i32* %19, align 4
  %154 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %154, i64 %156
  %158 = load %struct.drm_gem_object*, %struct.drm_gem_object** %157, align 8
  %159 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %19, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %123
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %14, align 4
  br label %208

166:                                              ; preds = %123
  %167 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %7, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %167, i64 %169
  %171 = load %struct.drm_gem_object*, %struct.drm_gem_object** %170, align 8
  %172 = load %struct.msm_framebuffer*, %struct.msm_framebuffer** %11, align 8
  %173 = getelementptr inbounds %struct.msm_framebuffer, %struct.msm_framebuffer* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %173, i32 0, i32 1
  %175 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %175, i64 %177
  store %struct.drm_gem_object* %171, %struct.drm_gem_object** %178, align 8
  br label %179

179:                                              ; preds = %166
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %15, align 4
  br label %95

182:                                              ; preds = %95
  %183 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %184 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %185 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %6, align 8
  %186 = call i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device* %183, %struct.drm_framebuffer* %184, %struct.drm_mode_fb_cmd2* %185)
  %187 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %188 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %189 = call i32 @drm_framebuffer_init(%struct.drm_device* %187, %struct.drm_framebuffer* %188, i32* @msm_framebuffer_funcs)
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %182
  %193 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %194 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %195, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %196)
  br label %208

198:                                              ; preds = %182
  %199 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %200 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to %struct.drm_device*
  %205 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  %206 = call i32 (i8*, %struct.drm_device*, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.drm_device* %204, %struct.drm_framebuffer* %205)
  %207 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %12, align 8
  store %struct.drm_framebuffer* %207, %struct.drm_framebuffer** %4, align 8
  br label %213

208:                                              ; preds = %192, %163, %91, %76, %61
  %209 = load %struct.msm_framebuffer*, %struct.msm_framebuffer** %11, align 8
  %210 = call i32 @kfree(%struct.msm_framebuffer* %209)
  %211 = load i32, i32* %14, align 4
  %212 = call %struct.drm_framebuffer* @ERR_PTR(i32 %211)
  store %struct.drm_framebuffer* %212, %struct.drm_framebuffer** %4, align 8
  br label %213

213:                                              ; preds = %208, %198
  %214 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  ret %struct.drm_framebuffer* %214
}

declare dso_local %struct.drm_format_info* @drm_get_format_info(%struct.drm_device*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @DBG(i8*, %struct.drm_device*, ...) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local %struct.msm_framebuffer* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.drm_gem_object**) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(%struct.drm_device*, %struct.drm_framebuffer*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, %struct.drm_framebuffer*, i32*) #1

declare dso_local i32 @kfree(%struct.msm_framebuffer*) #1

declare dso_local %struct.drm_framebuffer* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
