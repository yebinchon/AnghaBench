; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_crtc_cursor_set2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_cursor.c_radeon_crtc_cursor_set2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.radeon_crtc = type { i64, i64, i64, i64, i64, i64, i64, i64, %struct.drm_gem_object*, i32, i32 }
%struct.drm_gem_object = type { i32 }
%struct.radeon_bo = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"bad cursor width or height %d x %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot find cursor object %x for crtc %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to pin new cursor BO (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_crtc_cursor_set2(%struct.drm_crtc* %0, %struct.drm_file* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.drm_file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.radeon_crtc*, align 8
  %17 = alloca %struct.radeon_device*, align 8
  %18 = alloca %struct.drm_gem_object*, align 8
  %19 = alloca %struct.radeon_bo*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.radeon_bo*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %9, align 8
  store %struct.drm_file* %1, %struct.drm_file** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %25 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %24)
  store %struct.radeon_crtc* %25, %struct.radeon_crtc** %16, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.radeon_device*, %struct.radeon_device** %29, align 8
  store %struct.radeon_device* %30, %struct.radeon_device** %17, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %7
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %35 = call i32 @radeon_hide_cursor(%struct.drm_crtc* %34)
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %18, align 8
  br label %170

36:                                               ; preds = %7
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %39 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %45 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42, %36
  %49 = load i64, i64* %12, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i64, i64* %13, align 8
  %52 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %50, i64 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %201

55:                                               ; preds = %42
  %56 = load %struct.drm_file*, %struct.drm_file** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %56, i64 %57)
  store %struct.drm_gem_object* %58, %struct.drm_gem_object** %18, align 8
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %60 = icmp ne %struct.drm_gem_object* %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %11, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %65 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load i32, i32* @ENOENT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %201

70:                                               ; preds = %55
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %72 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %71)
  store %struct.radeon_bo* %72, %struct.radeon_bo** %19, align 8
  %73 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %74 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %73, i32 0)
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %79 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %78)
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %8, align 4
  br label %201

81:                                               ; preds = %70
  %82 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %83 = load i32, i32* @RADEON_GEM_DOMAIN_VRAM, align 4
  %84 = load %struct.radeon_device*, %struct.radeon_device** %17, align 8
  %85 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %84)
  %86 = icmp ne i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 0, i32 134217728
  %89 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %90 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %89, i32 0, i32 9
  %91 = call i32 @radeon_bo_pin_restricted(%struct.radeon_bo* %82, i32 %83, i32 %88, i32* %90)
  store i32 %91, i32* %20, align 4
  %92 = load %struct.radeon_bo*, %struct.radeon_bo** %19, align 8
  %93 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %92)
  %94 = load i32, i32* %20, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %81
  %97 = load i32, i32* %20, align 4
  %98 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %100 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %99)
  %101 = load i32, i32* %20, align 4
  store i32 %101, i32* %8, align 4
  br label %201

102:                                              ; preds = %81
  %103 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %104 = call i32 @radeon_lock_cursor(%struct.drm_crtc* %103, i32 1)
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %107 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %105, %108
  br i1 %109, label %128, label %110

110:                                              ; preds = %102
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %113 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %128, label %116

116:                                              ; preds = %110
  %117 = load i64, i64* %14, align 8
  %118 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %119 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load i64, i64* %15, align 8
  %124 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %125 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %165

128:                                              ; preds = %122, %116, %110, %102
  %129 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %130 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %133 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load i64, i64* %14, align 8
  %137 = sub nsw i64 %135, %136
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %21, align 4
  %139 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %140 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %143 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = load i64, i64* %15, align 8
  %147 = sub nsw i64 %145, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %22, align 4
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %151 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* %13, align 8
  %153 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %154 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %153, i32 0, i32 3
  store i64 %152, i64* %154, align 8
  %155 = load i64, i64* %14, align 8
  %156 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %157 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %156, i32 0, i32 4
  store i64 %155, i64* %157, align 8
  %158 = load i64, i64* %15, align 8
  %159 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %160 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %159, i32 0, i32 5
  store i64 %158, i64* %160, align 8
  %161 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %22, align 4
  %164 = call i32 @radeon_cursor_move_locked(%struct.drm_crtc* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %128, %122
  %166 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %167 = call i32 @radeon_show_cursor(%struct.drm_crtc* %166)
  %168 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %169 = call i32 @radeon_lock_cursor(%struct.drm_crtc* %168, i32 0)
  br label %170

170:                                              ; preds = %165, %33
  %171 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %172 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %171, i32 0, i32 8
  %173 = load %struct.drm_gem_object*, %struct.drm_gem_object** %172, align 8
  %174 = icmp ne %struct.drm_gem_object* %173, null
  br i1 %174, label %175, label %197

175:                                              ; preds = %170
  %176 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %177 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %176, i32 0, i32 8
  %178 = load %struct.drm_gem_object*, %struct.drm_gem_object** %177, align 8
  %179 = call %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object* %178)
  store %struct.radeon_bo* %179, %struct.radeon_bo** %23, align 8
  %180 = load %struct.radeon_bo*, %struct.radeon_bo** %23, align 8
  %181 = call i32 @radeon_bo_reserve(%struct.radeon_bo* %180, i32 0)
  store i32 %181, i32* %20, align 4
  %182 = load i32, i32* %20, align 4
  %183 = icmp eq i32 %182, 0
  %184 = zext i1 %183 to i32
  %185 = call i64 @likely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %175
  %188 = load %struct.radeon_bo*, %struct.radeon_bo** %23, align 8
  %189 = call i32 @radeon_bo_unpin(%struct.radeon_bo* %188)
  %190 = load %struct.radeon_bo*, %struct.radeon_bo** %23, align 8
  %191 = call i32 @radeon_bo_unreserve(%struct.radeon_bo* %190)
  br label %192

192:                                              ; preds = %187, %175
  %193 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %194 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %193, i32 0, i32 8
  %195 = load %struct.drm_gem_object*, %struct.drm_gem_object** %194, align 8
  %196 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %195)
  br label %197

197:                                              ; preds = %192, %170
  %198 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  %199 = load %struct.radeon_crtc*, %struct.radeon_crtc** %16, align 8
  %200 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %199, i32 0, i32 8
  store %struct.drm_gem_object* %198, %struct.drm_gem_object** %200, align 8
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %197, %96, %77, %61, %48
  %202 = load i32, i32* %8, align 4
  ret i32 %202
}

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @radeon_hide_cursor(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i64) #1

declare dso_local %struct.radeon_bo* @gem_to_radeon_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_reserve(%struct.radeon_bo*, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

declare dso_local i32 @radeon_bo_pin_restricted(%struct.radeon_bo*, i32, i32, i32*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_unreserve(%struct.radeon_bo*) #1

declare dso_local i32 @radeon_lock_cursor(%struct.drm_crtc*, i32) #1

declare dso_local i32 @radeon_cursor_move_locked(%struct.drm_crtc*, i32, i32) #1

declare dso_local i32 @radeon_show_cursor(%struct.drm_crtc*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @radeon_bo_unpin(%struct.radeon_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
