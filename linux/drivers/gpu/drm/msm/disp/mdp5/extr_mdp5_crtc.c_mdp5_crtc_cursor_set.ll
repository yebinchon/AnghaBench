; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_cursor_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_crtc.c_mdp5_crtc_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device*, i32 }
%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.mdp5_crtc = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8*, %struct.drm_gem_object*, i64 }
%struct.drm_gem_object = type { i32 }
%struct.mdp5_crtc_state = type { %struct.mdp5_pipeline, %struct.mdp5_ctl* }
%struct.mdp5_pipeline = type { i64 }
%struct.mdp5_ctl = type { i32 }
%struct.mdp5_kms = type { %struct.TYPE_3__, %struct.platform_device* }
%struct.TYPE_3__ = type { %struct.msm_kms }
%struct.msm_kms = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"cursor_set is deprecated with cursor planes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CURSOR_WIDTH = common dso_local global i8* null, align 8
@CURSOR_HEIGHT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"bad cursor size: %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Cursor off\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to %sable cursor: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@PENDING_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i8*, i8*, i8*)* @mdp5_crtc_cursor_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdp5_crtc_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mdp5_crtc*, align 8
  %13 = alloca %struct.mdp5_crtc_state*, align 8
  %14 = alloca %struct.mdp5_pipeline*, align 8
  %15 = alloca %struct.drm_device*, align 8
  %16 = alloca %struct.mdp5_kms*, align 8
  %17 = alloca %struct.platform_device*, align 8
  %18 = alloca %struct.msm_kms*, align 8
  %19 = alloca %struct.drm_gem_object*, align 8
  %20 = alloca %struct.drm_gem_object*, align 8
  %21 = alloca %struct.mdp5_ctl*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %27 = call %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc* %26)
  store %struct.mdp5_crtc* %27, %struct.mdp5_crtc** %12, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %29 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32 %30)
  store %struct.mdp5_crtc_state* %31, %struct.mdp5_crtc_state** %13, align 8
  %32 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %13, align 8
  %33 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %32, i32 0, i32 0
  store %struct.mdp5_pipeline* %33, %struct.mdp5_pipeline** %14, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 0
  %36 = load %struct.drm_device*, %struct.drm_device** %35, align 8
  store %struct.drm_device* %36, %struct.drm_device** %15, align 8
  %37 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %38 = call %struct.mdp5_kms* @get_kms(%struct.drm_crtc* %37)
  store %struct.mdp5_kms* %38, %struct.mdp5_kms** %16, align 8
  %39 = load %struct.mdp5_kms*, %struct.mdp5_kms** %16, align 8
  %40 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %39, i32 0, i32 1
  %41 = load %struct.platform_device*, %struct.platform_device** %40, align 8
  store %struct.platform_device* %41, %struct.platform_device** %17, align 8
  %42 = load %struct.mdp5_kms*, %struct.mdp5_kms** %16, align 8
  %43 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store %struct.msm_kms* %44, %struct.msm_kms** %18, align 8
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %20, align 8
  %45 = call i8* @mdp_ctl_flush_mask_cursor(i32 0)
  store i8* %45, i8** %23, align 8
  store i32 1, i32* %24, align 4
  %46 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %47 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %5
  %51 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  %52 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_warn(i32 %53, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %196

57:                                               ; preds = %5
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** @CURSOR_WIDTH, align 8
  %60 = icmp ugt i8* %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** @CURSOR_HEIGHT, align 8
  %64 = icmp ugt i8* %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61, %57
  %66 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  %67 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = call i32 @DRM_DEV_ERROR(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %69, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %196

75:                                               ; preds = %61
  %76 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %13, align 8
  %77 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %76, i32 0, i32 1
  %78 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %77, align 8
  store %struct.mdp5_ctl* %78, %struct.mdp5_ctl** %21, align 8
  %79 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %21, align 8
  %80 = icmp ne %struct.mdp5_ctl* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %196

84:                                               ; preds = %75
  %85 = load %struct.mdp5_crtc_state*, %struct.mdp5_crtc_state** %13, align 8
  %86 = getelementptr inbounds %struct.mdp5_crtc_state, %struct.mdp5_crtc_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.mdp5_pipeline, %struct.mdp5_pipeline* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %196

93:                                               ; preds = %84
  %94 = load i8*, i8** %9, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = call i32 @DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  %98 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %99 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %17, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @pm_runtime_get_sync(i32* %102)
  br label %159

104:                                              ; preds = %93
  %105 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %105, i8* %106)
  store %struct.drm_gem_object* %107, %struct.drm_gem_object** %19, align 8
  %108 = load %struct.drm_gem_object*, %struct.drm_gem_object** %19, align 8
  %109 = icmp ne %struct.drm_gem_object* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %196

113:                                              ; preds = %104
  %114 = load %struct.drm_gem_object*, %struct.drm_gem_object** %19, align 8
  %115 = load %struct.msm_kms*, %struct.msm_kms** %18, align 8
  %116 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %119 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 4
  %121 = call i32 @msm_gem_get_and_pin_iova(%struct.drm_gem_object* %114, i32 %117, i64* %120)
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %22, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %196

127:                                              ; preds = %113
  %128 = load %struct.platform_device*, %struct.platform_device** %17, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 0
  %130 = call i32 @pm_runtime_get_sync(i32* %129)
  %131 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %132 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %25, align 8
  %135 = call i32 @spin_lock_irqsave(i32* %133, i64 %134)
  %136 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %137 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load %struct.drm_gem_object*, %struct.drm_gem_object** %138, align 8
  store %struct.drm_gem_object* %139, %struct.drm_gem_object** %20, align 8
  %140 = load %struct.drm_gem_object*, %struct.drm_gem_object** %19, align 8
  %141 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %142 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  store %struct.drm_gem_object* %140, %struct.drm_gem_object** %143, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %146 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store i8* %144, i8** %147, align 8
  %148 = load i8*, i8** %11, align 8
  %149 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %150 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  store i8* %148, i8** %151, align 8
  %152 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %153 = call i32 @mdp5_crtc_restore_cursor(%struct.drm_crtc* %152)
  %154 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %155 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %25, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  br label %159

159:                                              ; preds = %127, %96
  %160 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %21, align 8
  %161 = load %struct.mdp5_pipeline*, %struct.mdp5_pipeline** %14, align 8
  %162 = load i32, i32* %24, align 4
  %163 = call i32 @mdp5_ctl_set_cursor(%struct.mdp5_ctl* %160, %struct.mdp5_pipeline* %161, i32 0, i32 %162)
  store i32 %163, i32* %22, align 4
  %164 = load i32, i32* %22, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  %168 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %24, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %174 = load i32, i32* %22, align 4
  %175 = call i32 @DRM_DEV_ERROR(i32 %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %173, i32 %174)
  br label %180

176:                                              ; preds = %159
  %177 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %178 = load i8*, i8** %23, align 8
  %179 = call i32 @crtc_flush(%struct.drm_crtc* %177, i8* %178)
  br label %180

180:                                              ; preds = %176, %166
  %181 = load %struct.platform_device*, %struct.platform_device** %17, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 @pm_runtime_put_sync(i32* %182)
  %184 = load %struct.drm_gem_object*, %struct.drm_gem_object** %20, align 8
  %185 = icmp ne %struct.drm_gem_object* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load %struct.mdp5_crtc*, %struct.mdp5_crtc** %12, align 8
  %188 = getelementptr inbounds %struct.mdp5_crtc, %struct.mdp5_crtc* %187, i32 0, i32 0
  %189 = load %struct.drm_gem_object*, %struct.drm_gem_object** %20, align 8
  %190 = call i32 @drm_flip_work_queue(i32* %188, %struct.drm_gem_object* %189)
  %191 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %192 = load i32, i32* @PENDING_CURSOR, align 4
  %193 = call i32 @request_pending(%struct.drm_crtc* %191, i32 %192)
  br label %194

194:                                              ; preds = %186, %180
  %195 = load i32, i32* %22, align 4
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %194, %124, %110, %90, %81, %65, %50
  %197 = load i32, i32* %6, align 4
  ret i32 %197
}

declare dso_local %struct.mdp5_crtc* @to_mdp5_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.mdp5_crtc_state* @to_mdp5_crtc_state(i32) #1

declare dso_local %struct.mdp5_kms* @get_kms(%struct.drm_crtc*) #1

declare dso_local i8* @mdp_ctl_flush_mask_cursor(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i8*, i32) #1

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i8*) #1

declare dso_local i32 @msm_gem_get_and_pin_iova(%struct.drm_gem_object*, i32, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdp5_crtc_restore_cursor(%struct.drm_crtc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp5_ctl_set_cursor(%struct.mdp5_ctl*, %struct.mdp5_pipeline*, i32, i32) #1

declare dso_local i32 @crtc_flush(%struct.drm_crtc*, i8*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @drm_flip_work_queue(i32*, %struct.drm_gem_object*) #1

declare dso_local i32 @request_pending(%struct.drm_crtc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
