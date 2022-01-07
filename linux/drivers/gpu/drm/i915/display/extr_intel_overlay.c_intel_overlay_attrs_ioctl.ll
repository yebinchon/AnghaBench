; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_attrs_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_overlay.c_intel_overlay_attrs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_intel_overlay_attrs = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.drm_i915_private = type { %struct.intel_overlay* }
%struct.intel_overlay = type { i32, i32, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"userspace bug: no overlay\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I915_OVERLAY_UPDATE_ATTRS = common dso_local global i32 0, align 4
@OGAMC0 = common dso_local global i32 0, align 4
@OGAMC1 = common dso_local global i32 0, align 4
@OGAMC2 = common dso_local global i32 0, align 4
@OGAMC3 = common dso_local global i32 0, align 4
@OGAMC4 = common dso_local global i32 0, align 4
@OGAMC5 = common dso_local global i32 0, align 4
@I915_OVERLAY_UPDATE_GAMMA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@I915_OVERLAY_DISABLE_DEST_COLORKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_overlay_attrs_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_intel_overlay_attrs*, align 8
  %9 = alloca %struct.drm_i915_private*, align 8
  %10 = alloca %struct.intel_overlay*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_intel_overlay_attrs*
  store %struct.drm_intel_overlay_attrs* %13, %struct.drm_intel_overlay_attrs** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %9, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = load %struct.intel_overlay*, %struct.intel_overlay** %17, align 8
  store %struct.intel_overlay* %18, %struct.intel_overlay** %10, align 8
  %19 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %20 = icmp ne %struct.intel_overlay* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %212

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = call i32 @drm_modeset_lock_all(%struct.drm_device* %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %34 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @I915_OVERLAY_UPDATE_ATTRS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %89, label %39

39:                                               ; preds = %25
  %40 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %41 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %44 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 8
  %45 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %46 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %49 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %51 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %54 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %56 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %59 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %61 = call i64 @IS_GEN(%struct.drm_i915_private* %60, i32 2)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %39
  %64 = load i32, i32* @OGAMC0, align 4
  %65 = call i8* @I915_READ(i32 %64)
  %66 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %67 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %66, i32 0, i32 9
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @OGAMC1, align 4
  %69 = call i8* @I915_READ(i32 %68)
  %70 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %71 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @OGAMC2, align 4
  %73 = call i8* @I915_READ(i32 %72)
  %74 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %75 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %74, i32 0, i32 7
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @OGAMC3, align 4
  %77 = call i8* @I915_READ(i32 %76)
  %78 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %79 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %78, i32 0, i32 6
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @OGAMC4, align 4
  %81 = call i8* @I915_READ(i32 %80)
  %82 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %83 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @OGAMC5, align 4
  %85 = call i8* @I915_READ(i32 %84)
  %86 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %87 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %63, %39
  br label %195

89:                                               ; preds = %25
  %90 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %91 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %92, -128
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %96 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 127
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %89
  br label %205

100:                                              ; preds = %94
  %101 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %102 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp sgt i32 %103, 255
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %205

106:                                              ; preds = %100
  %107 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %108 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 1023
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %205

112:                                              ; preds = %106
  %113 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %114 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %117 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  %118 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %119 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %122 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %124 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %127 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %129 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %132 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %134 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %135 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @update_reg_attrs(%struct.intel_overlay* %133, i32 %136)
  %138 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %139 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @I915_OVERLAY_UPDATE_GAMMA, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %194

144:                                              ; preds = %112
  %145 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  %146 = call i64 @IS_GEN(%struct.drm_i915_private* %145, i32 2)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %205

149:                                              ; preds = %144
  %150 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %151 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* @EBUSY, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %11, align 4
  br label %205

157:                                              ; preds = %149
  %158 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %159 = call i32 @check_gamma(%struct.drm_intel_overlay_attrs* %158)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %205

163:                                              ; preds = %157
  %164 = load i32, i32* @OGAMC0, align 4
  %165 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %166 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %165, i32 0, i32 9
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @I915_WRITE(i32 %164, i8* %167)
  %169 = load i32, i32* @OGAMC1, align 4
  %170 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %171 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %170, i32 0, i32 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @I915_WRITE(i32 %169, i8* %172)
  %174 = load i32, i32* @OGAMC2, align 4
  %175 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %176 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %175, i32 0, i32 7
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @I915_WRITE(i32 %174, i8* %177)
  %179 = load i32, i32* @OGAMC3, align 4
  %180 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %181 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %180, i32 0, i32 6
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @I915_WRITE(i32 %179, i8* %182)
  %184 = load i32, i32* @OGAMC4, align 4
  %185 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %186 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %185, i32 0, i32 5
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 @I915_WRITE(i32 %184, i8* %187)
  %189 = load i32, i32* @OGAMC5, align 4
  %190 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %191 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %190, i32 0, i32 4
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @I915_WRITE(i32 %189, i8* %192)
  br label %194

194:                                              ; preds = %163, %112
  br label %195

195:                                              ; preds = %194, %88
  %196 = load %struct.drm_intel_overlay_attrs*, %struct.drm_intel_overlay_attrs** %8, align 8
  %197 = getelementptr inbounds %struct.drm_intel_overlay_attrs, %struct.drm_intel_overlay_attrs* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @I915_OVERLAY_DISABLE_DEST_COLORKEY, align 4
  %200 = and i32 %198, %199
  %201 = icmp eq i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = load %struct.intel_overlay*, %struct.intel_overlay** %10, align 8
  %204 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  store i32 0, i32* %11, align 4
  br label %205

205:                                              ; preds = %195, %162, %154, %148, %111, %105, %99
  %206 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %207 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %206, i32 0, i32 0
  %208 = call i32 @mutex_unlock(i32* %207)
  %209 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %210 = call i32 @drm_modeset_unlock_all(%struct.drm_device* %209)
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %205, %21
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @drm_modeset_lock_all(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i32 @update_reg_attrs(%struct.intel_overlay*, i32) #1

declare dso_local i32 @check_gamma(%struct.drm_intel_overlay_attrs*) #1

declare dso_local i32 @I915_WRITE(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_modeset_unlock_all(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
