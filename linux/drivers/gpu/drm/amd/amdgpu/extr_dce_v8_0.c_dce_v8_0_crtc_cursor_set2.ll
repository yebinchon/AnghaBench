; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_cursor_set2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_dce_v8_0.c_dce_v8_0_crtc_cursor_set2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_file = type { i32 }
%struct.amdgpu_crtc = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.drm_gem_object*, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.amdgpu_bo = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"bad cursor width or height %d x %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot find cursor object %x for crtc %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to pin new cursor BO (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i64, i64, i64, i64, i64)* @dce_v8_0_crtc_cursor_set2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_v8_0_crtc_cursor_set2(%struct.drm_crtc* %0, %struct.drm_file* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.drm_file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.amdgpu_crtc*, align 8
  %17 = alloca %struct.drm_gem_object*, align 8
  %18 = alloca %struct.amdgpu_bo*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.amdgpu_bo*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %9, align 8
  store %struct.drm_file* %1, %struct.drm_file** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %24 = call %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc* %23)
  store %struct.amdgpu_crtc* %24, %struct.amdgpu_crtc** %16, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %29 = call i32 @dce_v8_0_hide_cursor(%struct.drm_crtc* %28)
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %17, align 8
  br label %161

30:                                               ; preds = %7
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %33 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %39 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36, %30
  %43 = load i64, i64* %12, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %13, align 8
  %46 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %192

49:                                               ; preds = %36
  %50 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %50, i64 %51)
  store %struct.drm_gem_object* %52, %struct.drm_gem_object** %17, align 8
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %54 = icmp ne %struct.drm_gem_object* %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %11, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %59 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load i32, i32* @ENOENT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %8, align 4
  br label %192

64:                                               ; preds = %49
  %65 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %66 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %65)
  store %struct.amdgpu_bo* %66, %struct.amdgpu_bo** %18, align 8
  %67 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %68 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %67, i32 0)
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %73 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %72)
  %74 = load i32, i32* %19, align 4
  store i32 %74, i32* %8, align 4
  br label %192

75:                                               ; preds = %64
  %76 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %77 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %78 = call i32 @amdgpu_bo_pin(%struct.amdgpu_bo* %76, i32 %77)
  store i32 %78, i32* %19, align 4
  %79 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %80 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %79)
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* %19, align 4
  %85 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %87 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %86)
  %88 = load i32, i32* %19, align 4
  store i32 %88, i32* %8, align 4
  br label %192

89:                                               ; preds = %75
  %90 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  %91 = call i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo* %90)
  %92 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %93 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %92, i32 0, i32 9
  store i32 %91, i32* %93, align 8
  %94 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %95 = call i32 @dce_v8_0_lock_cursor(%struct.drm_crtc* %94, i32 1)
  %96 = load i64, i64* %12, align 8
  %97 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %98 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %119, label %101

101:                                              ; preds = %89
  %102 = load i64, i64* %13, align 8
  %103 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %104 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %101
  %108 = load i64, i64* %14, align 8
  %109 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %110 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %116 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %114, %117
  br i1 %118, label %119, label %156

119:                                              ; preds = %113, %107, %101, %89
  %120 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %121 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %124 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = load i64, i64* %14, align 8
  %128 = sub nsw i64 %126, %127
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %20, align 4
  %130 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %131 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %130, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %134 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %132, %135
  %137 = load i64, i64* %15, align 8
  %138 = sub nsw i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %21, align 4
  %140 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %21, align 4
  %143 = call i32 @dce_v8_0_cursor_move_locked(%struct.drm_crtc* %140, i32 %141, i32 %142)
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %146 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* %13, align 8
  %148 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %149 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %148, i32 0, i32 3
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %14, align 8
  %151 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %152 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %151, i32 0, i32 4
  store i64 %150, i64* %152, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %155 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %154, i32 0, i32 5
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %119, %113
  %157 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %158 = call i32 @dce_v8_0_show_cursor(%struct.drm_crtc* %157)
  %159 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %160 = call i32 @dce_v8_0_lock_cursor(%struct.drm_crtc* %159, i32 0)
  br label %161

161:                                              ; preds = %156, %27
  %162 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %163 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %162, i32 0, i32 8
  %164 = load %struct.drm_gem_object*, %struct.drm_gem_object** %163, align 8
  %165 = icmp ne %struct.drm_gem_object* %164, null
  br i1 %165, label %166, label %188

166:                                              ; preds = %161
  %167 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %168 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %167, i32 0, i32 8
  %169 = load %struct.drm_gem_object*, %struct.drm_gem_object** %168, align 8
  %170 = call %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object* %169)
  store %struct.amdgpu_bo* %170, %struct.amdgpu_bo** %22, align 8
  %171 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %172 = call i32 @amdgpu_bo_reserve(%struct.amdgpu_bo* %171, i32 1)
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %19, align 4
  %174 = icmp eq i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i64 @likely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %166
  %179 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %180 = call i32 @amdgpu_bo_unpin(%struct.amdgpu_bo* %179)
  %181 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %22, align 8
  %182 = call i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo* %181)
  br label %183

183:                                              ; preds = %178, %166
  %184 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %185 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %184, i32 0, i32 8
  %186 = load %struct.drm_gem_object*, %struct.drm_gem_object** %185, align 8
  %187 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %186)
  br label %188

188:                                              ; preds = %183, %161
  %189 = load %struct.drm_gem_object*, %struct.drm_gem_object** %17, align 8
  %190 = load %struct.amdgpu_crtc*, %struct.amdgpu_crtc** %16, align 8
  %191 = getelementptr inbounds %struct.amdgpu_crtc, %struct.amdgpu_crtc* %190, i32 0, i32 8
  store %struct.drm_gem_object* %189, %struct.drm_gem_object** %191, align 8
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %188, %83, %71, %55, %42
  %193 = load i32, i32* %8, align 4
  ret i32 %193
}

declare dso_local %struct.amdgpu_crtc* @to_amdgpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dce_v8_0_hide_cursor(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i64) #1

declare dso_local %struct.amdgpu_bo* @gem_to_amdgpu_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_bo_reserve(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @amdgpu_bo_pin(%struct.amdgpu_bo*, i32) #1

declare dso_local i32 @amdgpu_bo_unreserve(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_gpu_offset(%struct.amdgpu_bo*) #1

declare dso_local i32 @dce_v8_0_lock_cursor(%struct.drm_crtc*, i32) #1

declare dso_local i32 @dce_v8_0_cursor_move_locked(%struct.drm_crtc*, i32, i32) #1

declare dso_local i32 @dce_v8_0_show_cursor(%struct.drm_crtc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @amdgpu_bo_unpin(%struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
