; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_phys.c_i915_gem_object_attach_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_phys.c_i915_gem_object_attach_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.drm_i915_gem_object*, %struct.sg_table*)* }
%struct.drm_i915_gem_object = type { %struct.TYPE_6__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.sg_table = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@i915_gem_phys_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@i915_gem_shmem_ops = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@I915_GEM_OBJECT_UNBIND_ACTIVE = common dso_local global i32 0, align 4
@I915_MADV_WILLNEED = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_gem_object_attach_phys(%struct.drm_i915_gem_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %11 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %9, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %120

18:                                               ; preds = %2
  %19 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp eq %struct.TYPE_7__* %21, @i915_gem_phys_ops
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %120

24:                                               ; preds = %18
  %25 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, @i915_gem_shmem_ops
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %120

32:                                               ; preds = %24
  %33 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %34 = load i32, i32* @I915_GEM_OBJECT_UNBIND_ACTIVE, align 4
  %35 = call i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %120

40:                                               ; preds = %32
  %41 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %42 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @I915_MADV_WILLNEED, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %114

54:                                               ; preds = %40
  %55 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %56 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %114

63:                                               ; preds = %54
  %64 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %65 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %114

72:                                               ; preds = %63
  %73 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %74 = call %struct.sg_table* @__i915_gem_object_unset_pages(%struct.drm_i915_gem_object* %73)
  store %struct.sg_table* %74, %struct.sg_table** %6, align 8
  %75 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %76 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %75, i32 0, i32 1
  store %struct.TYPE_7__* @i915_gem_phys_ops, %struct.TYPE_7__** %76, align 8
  %77 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %78 = call i32 @____i915_gem_object_get_pages(%struct.drm_i915_gem_object* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %98

82:                                               ; preds = %72
  %83 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %84 = call i32 @__i915_gem_object_pin_pages(%struct.drm_i915_gem_object* %83)
  %85 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %86 = call i32 @IS_ERR_OR_NULL(%struct.sg_table* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load i32 (%struct.drm_i915_gem_object*, %struct.sg_table*)*, i32 (%struct.drm_i915_gem_object*, %struct.sg_table*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @i915_gem_shmem_ops, i32 0, i32 0), align 8
  %90 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %91 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %92 = call i32 %89(%struct.drm_i915_gem_object* %90, %struct.sg_table* %91)
  br label %93

93:                                               ; preds = %88, %82
  %94 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %95 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  store i32 0, i32* %3, align 4
  br label %120

98:                                               ; preds = %81
  %99 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %100 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %99, i32 0, i32 1
  store %struct.TYPE_7__* @i915_gem_shmem_ops, %struct.TYPE_7__** %100, align 8
  %101 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %102 = call i32 @IS_ERR_OR_NULL(%struct.sg_table* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %98
  %105 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %106 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @i915_sg_page_sizes(i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %110 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @__i915_gem_object_set_pages(%struct.drm_i915_gem_object* %109, %struct.sg_table* %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %98
  br label %114

114:                                              ; preds = %113, %69, %60, %51
  %115 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  %116 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %114, %93, %38, %29, %23, %15
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @i915_gem_object_unbind(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sg_table* @__i915_gem_object_unset_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @____i915_gem_object_get_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @__i915_gem_object_pin_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.sg_table*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i915_sg_page_sizes(i32) #1

declare dso_local i32 @__i915_gem_object_set_pages(%struct.drm_i915_gem_object*, %struct.sg_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
