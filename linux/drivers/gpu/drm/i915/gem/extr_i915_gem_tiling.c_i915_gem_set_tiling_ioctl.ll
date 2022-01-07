; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_gem_set_tiling_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_tiling.c_i915_gem_set_tiling_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_set_tiling = type { i64, i64, i64, i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I915_TILING_NONE = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_NONE = common dso_local global i8* null, align 8
@I915_TILING_X = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_17 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_10_17 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_9_10 = common dso_local global i64 0, align 8
@I915_BIT_6_SWIZZLE_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_set_tiling_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_set_tiling*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_gem_set_tiling*
  store %struct.drm_i915_gem_set_tiling* %12, %struct.drm_i915_gem_set_tiling** %8, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %15 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %13, i32 %16)
  store %struct.drm_i915_gem_object* %17, %struct.drm_i915_gem_object** %9, align 8
  %18 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %19 = icmp ne %struct.drm_i915_gem_object* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %146

23:                                               ; preds = %3
  %24 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %25 = call i64 @i915_gem_object_is_proxy(%struct.drm_i915_gem_object* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @ENXIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  br label %142

30:                                               ; preds = %23
  %31 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %32 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %33 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %36 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @i915_tiling_ok(%struct.drm_i915_gem_object* %31, i64 %34, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %142

43:                                               ; preds = %30
  %44 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %45 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @I915_TILING_NONE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i8*, i8** @I915_BIT_6_SWIZZLE_NONE, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %53 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %55 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  br label %115

56:                                               ; preds = %43
  %57 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %58 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @I915_TILING_X, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = call %struct.TYPE_4__* @to_i915(%struct.drm_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %69 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %78

70:                                               ; preds = %56
  %71 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %72 = call %struct.TYPE_4__* @to_i915(%struct.drm_device* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %77 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %70, %62
  %79 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %80 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @I915_BIT_6_SWIZZLE_9_17, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64, i64* @I915_BIT_6_SWIZZLE_9, align 8
  %86 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %87 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %90 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10_17, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i64, i64* @I915_BIT_6_SWIZZLE_9_10, align 8
  %96 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %97 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %88
  %99 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %100 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @I915_BIT_6_SWIZZLE_UNKNOWN, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = load i64, i64* @I915_TILING_NONE, align 8
  %106 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %107 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load i8*, i8** @I915_BIT_6_SWIZZLE_NONE, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %111 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %113 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %104, %98
  br label %115

115:                                              ; preds = %114, %49
  %116 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %117 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %116, i32 0, i32 0
  %118 = call i32 @mutex_lock_interruptible(i32* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %142

122:                                              ; preds = %115
  %123 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %124 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %125 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %128 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @i915_gem_object_set_tiling(%struct.drm_i915_gem_object* %123, i64 %126, i64 %129)
  store i32 %130, i32* %10, align 4
  %131 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %132 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %135 = call i64 @i915_gem_object_get_stride(%struct.drm_i915_gem_object* %134)
  %136 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %137 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %139 = call i64 @i915_gem_object_get_tiling(%struct.drm_i915_gem_object* %138)
  %140 = load %struct.drm_i915_gem_set_tiling*, %struct.drm_i915_gem_set_tiling** %8, align 8
  %141 = getelementptr inbounds %struct.drm_i915_gem_set_tiling, %struct.drm_i915_gem_set_tiling* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %122, %121, %40, %27
  %143 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %144 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %142, %20
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i64 @i915_gem_object_is_proxy(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_tiling_ok(%struct.drm_i915_gem_object*, i64, i64) #1

declare dso_local %struct.TYPE_4__* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @i915_gem_object_set_tiling(%struct.drm_i915_gem_object*, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @i915_gem_object_get_stride(%struct.drm_i915_gem_object*) #1

declare dso_local i64 @i915_gem_object_get_tiling(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
