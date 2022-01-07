; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_set_domain_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_domain.c_i915_gem_set_domain_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_gem_set_domain = type { i32, i32, i32 }
%struct.drm_i915_gem_object = type { i32, i32 }

@I915_GEM_GPU_DOMAINS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@I915_WAIT_INTERRUPTIBLE = common dso_local global i32 0, align 4
@I915_WAIT_PRIORITY = common dso_local global i32 0, align 4
@I915_WAIT_ALL = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_WC = common dso_local global i32 0, align 4
@I915_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@ORIGIN_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_set_domain_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_gem_set_domain*, align 8
  %9 = alloca %struct.drm_i915_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_i915_gem_set_domain*
  store %struct.drm_i915_gem_set_domain* %14, %struct.drm_i915_gem_set_domain** %8, align 8
  %15 = load %struct.drm_i915_gem_set_domain*, %struct.drm_i915_gem_set_domain** %8, align 8
  %16 = getelementptr inbounds %struct.drm_i915_gem_set_domain, %struct.drm_i915_gem_set_domain* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.drm_i915_gem_set_domain*, %struct.drm_i915_gem_set_domain** %8, align 8
  %19 = getelementptr inbounds %struct.drm_i915_gem_set_domain, %struct.drm_i915_gem_set_domain* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @I915_GEM_GPU_DOMAINS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %144

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %144

40:                                               ; preds = %33, %30
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %144

44:                                               ; preds = %40
  %45 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %46 = load %struct.drm_i915_gem_set_domain*, %struct.drm_i915_gem_set_domain** %8, align 8
  %47 = getelementptr inbounds %struct.drm_i915_gem_set_domain, %struct.drm_i915_gem_set_domain* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %45, i32 %48)
  store %struct.drm_i915_gem_object* %49, %struct.drm_i915_gem_object** %9, align 8
  %50 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %51 = icmp ne %struct.drm_i915_gem_object* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %144

55:                                               ; preds = %44
  %56 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %57 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @READ_ONCE(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %140

63:                                               ; preds = %55
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %65 = load i32, i32* @I915_WAIT_INTERRUPTIBLE, align 4
  %66 = load i32, i32* @I915_WAIT_PRIORITY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @I915_WAIT_ALL, align 4
  br label %73

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = or i32 %67, %74
  %76 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %77 = call i32 @i915_gem_object_wait(%struct.drm_i915_gem_object* %64, i32 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %140

81:                                               ; preds = %73
  %82 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %83 = call i64 @i915_gem_object_is_proxy(%struct.drm_i915_gem_object* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %12, align 4
  br label %140

88:                                               ; preds = %81
  %89 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %90 = call i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %140

94:                                               ; preds = %88
  %95 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %96 = call i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %137

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @I915_GEM_DOMAIN_WC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @i915_gem_object_set_to_wc_domain(%struct.drm_i915_gem_object* %106, i32 %107)
  store i32 %108, i32* %12, align 4
  br label %123

109:                                              ; preds = %100
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @I915_GEM_DOMAIN_GTT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object* %115, i32 %116)
  store i32 %117, i32* %12, align 4
  br label %122

118:                                              ; preds = %109
  %119 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object* %119, i32 %120)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %118, %114
  br label %123

123:                                              ; preds = %122, %105
  %124 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %125 = call i32 @i915_gem_object_bump_inactive_ggtt(%struct.drm_i915_gem_object* %124)
  %126 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %127 = call i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object* %126)
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %132 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @ORIGIN_CPU, align 4
  %135 = call i32 @intel_frontbuffer_invalidate(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %123
  br label %137

137:                                              ; preds = %136, %99
  %138 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %139 = call i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object* %138)
  br label %140

140:                                              ; preds = %137, %93, %85, %80, %62
  %141 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %9, align 8
  %142 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %141)
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %52, %43, %37, %27
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @i915_gem_object_wait(%struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i64 @i915_gem_object_is_proxy(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_lock_interruptible(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_set_to_wc_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_set_to_gtt_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_set_to_cpu_domain(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @i915_gem_object_bump_inactive_ggtt(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_unlock(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @intel_frontbuffer_invalidate(i32, i32) #1

declare dso_local i32 @i915_gem_object_unpin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
