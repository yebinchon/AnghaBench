; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c_fill_object_idr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_lease.c_fill_object_idr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.idr = type { i32 }
%struct.drm_mode_object = type { i64, i32 }
%struct.drm_crtc = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ANY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid object for lease\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"lease validation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Adding object %d to lease\0A\00", align 1
@drm_lease_idr_object = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Object %d cannot be inserted into leases (%d)\0A\00", align 1
@DRM_MODE_OBJECT_CRTC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [61 x i8] c"Object primary plane %d cannot be inserted into leases (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Object cursor plane %d cannot be inserted into leases (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.idr*, i32, i32*)* @fill_object_idr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_object_idr(%struct.drm_device* %0, %struct.drm_file* %1, %struct.idr* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.idr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.drm_mode_object**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.drm_mode_object*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store %struct.idr* %2, %struct.idr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %20 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @READ_ONCE(i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.drm_mode_object** @kcalloc(i32 %23, i32 8, i32 %24)
  store %struct.drm_mode_object** %25, %struct.drm_mode_object*** %12, align 8
  %26 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %27 = icmp ne %struct.drm_mode_object** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %215

31:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %74, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %38 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DRM_MODE_OBJECT_ANY, align 4
  %45 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %37, %struct.drm_file* %38, i32 %43, i32 %44)
  %46 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.drm_mode_object*, %struct.drm_mode_object** %46, i64 %48
  store %struct.drm_mode_object* %45, %struct.drm_mode_object** %49, align 8
  %50 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.drm_mode_object*, %struct.drm_mode_object** %50, i64 %52
  %54 = load %struct.drm_mode_object*, %struct.drm_mode_object** %53, align 8
  %55 = icmp ne %struct.drm_mode_object* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %36
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %188

59:                                               ; preds = %36
  %60 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.drm_mode_object*, %struct.drm_mode_object** %60, i64 %62
  %64 = load %struct.drm_mode_object*, %struct.drm_mode_object** %63, align 8
  %65 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @drm_mode_object_lease_required(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %59
  %70 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %14, align 4
  br label %188

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %32

77:                                               ; preds = %32
  %78 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @validate_lease(%struct.drm_device* %78, i32 %79, %struct.drm_mode_object** %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %188

87:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %184, %87
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %187

92:                                               ; preds = %88
  %93 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.drm_mode_object*, %struct.drm_mode_object** %93, i64 %95
  %97 = load %struct.drm_mode_object*, %struct.drm_mode_object** %96, align 8
  store %struct.drm_mode_object* %97, %struct.drm_mode_object** %16, align 8
  %98 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.drm_mode_object*, %struct.drm_mode_object** %98, i64 %100
  %102 = load %struct.drm_mode_object*, %struct.drm_mode_object** %101, align 8
  %103 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.idr*, %struct.idr** %9, align 8
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i32 @idr_alloc(%struct.idr* %107, i32* @drm_lease_idr_object, i32 %108, i32 %110, i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %92
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %117)
  br label %188

119:                                              ; preds = %92
  %120 = load %struct.drm_mode_object*, %struct.drm_mode_object** %16, align 8
  %121 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @DRM_MODE_OBJECT_CRTC, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %183

125:                                              ; preds = %119
  %126 = load i32, i32* %15, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %183, label %128

128:                                              ; preds = %125
  %129 = load %struct.drm_mode_object*, %struct.drm_mode_object** %16, align 8
  %130 = call %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object* %129)
  store %struct.drm_crtc* %130, %struct.drm_crtc** %18, align 8
  %131 = load %struct.idr*, %struct.idr** %9, align 8
  %132 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %133 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %139 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %138, i32 0, i32 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* @GFP_KERNEL, align 4
  %146 = call i32 @idr_alloc(%struct.idr* %131, i32* @drm_lease_idr_object, i32 %137, i32 %144, i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %128
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %14, align 4
  %152 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %150, i32 %151)
  br label %188

153:                                              ; preds = %128
  %154 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %155 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = icmp ne %struct.TYPE_8__* %156, null
  br i1 %157, label %158, label %182

158:                                              ; preds = %153
  %159 = load %struct.idr*, %struct.idr** %9, align 8
  %160 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %161 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %167 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* @GFP_KERNEL, align 4
  %174 = call i32 @idr_alloc(%struct.idr* %159, i32* @drm_lease_idr_object, i32 %165, i32 %172, i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %158
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %14, align 4
  %180 = call i32 (i8*, ...) @DRM_DEBUG_LEASE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %178, i32 %179)
  br label %188

181:                                              ; preds = %158
  br label %182

182:                                              ; preds = %181, %153
  br label %183

183:                                              ; preds = %182, %125, %119
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %88

187:                                              ; preds = %88
  store i32 0, i32* %14, align 4
  br label %188

188:                                              ; preds = %187, %177, %149, %115, %85, %69, %56
  store i32 0, i32* %13, align 4
  br label %189

189:                                              ; preds = %208, %188
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %211

193:                                              ; preds = %189
  %194 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.drm_mode_object*, %struct.drm_mode_object** %194, i64 %196
  %198 = load %struct.drm_mode_object*, %struct.drm_mode_object** %197, align 8
  %199 = icmp ne %struct.drm_mode_object* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %193
  %201 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.drm_mode_object*, %struct.drm_mode_object** %201, i64 %203
  %205 = load %struct.drm_mode_object*, %struct.drm_mode_object** %204, align 8
  %206 = call i32 @drm_mode_object_put(%struct.drm_mode_object* %205)
  br label %207

207:                                              ; preds = %200, %193
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %13, align 4
  br label %189

211:                                              ; preds = %189
  %212 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %12, align 8
  %213 = call i32 @kfree(%struct.drm_mode_object** %212)
  %214 = load i32, i32* %14, align 4
  store i32 %214, i32* %6, align 4
  br label %215

215:                                              ; preds = %211, %28
  %216 = load i32, i32* %6, align 4
  ret i32 %216
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.drm_mode_object** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, %struct.drm_file*, i32, i32) #1

declare dso_local i32 @drm_mode_object_lease_required(i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @validate_lease(%struct.drm_device*, i32, %struct.drm_mode_object**, i32) #1

declare dso_local i32 @DRM_DEBUG_LEASE(i8*, ...) #1

declare dso_local i32 @idr_alloc(%struct.idr*, i32*, i32, i32, i32) #1

declare dso_local %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_mode_object_put(%struct.drm_mode_object*) #1

declare dso_local i32 @kfree(%struct.drm_mode_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
