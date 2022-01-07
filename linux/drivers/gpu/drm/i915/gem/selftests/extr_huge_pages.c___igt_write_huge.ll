; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c___igt_write_huge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c___igt_write_huge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gem_context = type { i32 }
%struct.intel_engine_cs = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i915_address_space }
%struct.i915_address_space = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.i915_vma = type { i32 }

@PIN_USER = common dso_local global i32 0, align 4
@PIN_OFFSET_FIXED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"gpu-write failed at offset=%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cpu-check failed at offset=%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_gem_context*, %struct.intel_engine_cs*, %struct.drm_i915_gem_object*, i32, i32, i32, i32)* @__igt_write_huge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__igt_write_huge(%struct.i915_gem_context* %0, %struct.intel_engine_cs* %1, %struct.drm_i915_gem_object* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i915_gem_context*, align 8
  %10 = alloca %struct.intel_engine_cs*, align 8
  %11 = alloca %struct.drm_i915_gem_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.i915_address_space*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.i915_vma*, align 8
  %19 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %9, align 8
  store %struct.intel_engine_cs* %1, %struct.intel_engine_cs** %10, align 8
  store %struct.drm_i915_gem_object* %2, %struct.drm_i915_gem_object** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.i915_gem_context*, %struct.i915_gem_context** %9, align 8
  %21 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = sext i32 %22 to i64
  %26 = inttoptr i64 %25 to %struct.i915_address_space*
  br label %34

27:                                               ; preds = %7
  %28 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %29 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi %struct.i915_address_space* [ %26, %24 ], [ %33, %27 ]
  store %struct.i915_address_space* %35, %struct.i915_address_space** %16, align 8
  %36 = load i32, i32* @PIN_USER, align 4
  %37 = load i32, i32* @PIN_OFFSET_FIXED, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %17, align 4
  %39 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %40 = load %struct.i915_address_space*, %struct.i915_address_space** %16, align 8
  %41 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %39, %struct.i915_address_space* %40, i32* null)
  store %struct.i915_vma* %41, %struct.i915_vma** %18, align 8
  %42 = load %struct.i915_vma*, %struct.i915_vma** %18, align 8
  %43 = call i64 @IS_ERR(%struct.i915_vma* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.i915_vma*, %struct.i915_vma** %18, align 8
  %47 = call i32 @PTR_ERR(%struct.i915_vma* %46)
  store i32 %47, i32* %8, align 4
  br label %110

48:                                               ; preds = %34
  %49 = load %struct.i915_vma*, %struct.i915_vma** %18, align 8
  %50 = call i32 @i915_vma_unbind(%struct.i915_vma* %49)
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %106

54:                                               ; preds = %48
  %55 = load %struct.i915_vma*, %struct.i915_vma** %18, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %13, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @i915_vma_pin(%struct.i915_vma* %55, i32 %56, i32 0, i32 %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @ENOSPC, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.i915_address_space*, %struct.i915_address_space** %16, align 8
  %70 = call i64 @i915_is_ggtt(%struct.i915_address_space* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %19, align 4
  br label %73

73:                                               ; preds = %72, %68, %63
  br label %106

74:                                               ; preds = %54
  %75 = load %struct.i915_vma*, %struct.i915_vma** %18, align 8
  %76 = call i32 @igt_check_page_sizes(%struct.i915_vma* %75)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %103

80:                                               ; preds = %74
  %81 = load %struct.i915_vma*, %struct.i915_vma** %18, align 8
  %82 = load %struct.i915_gem_context*, %struct.i915_gem_context** %9, align 8
  %83 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @gpu_write(%struct.i915_vma* %81, %struct.i915_gem_context* %82, %struct.intel_engine_cs* %83, i32 %84, i32 %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %103

92:                                               ; preds = %80
  %93 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %11, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @cpu_check(%struct.drm_i915_gem_object* %93, i32 %94, i32 %95)
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %103

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %99, %89, %79
  %104 = load %struct.i915_vma*, %struct.i915_vma** %18, align 8
  %105 = call i32 @i915_vma_unpin(%struct.i915_vma* %104)
  br label %106

106:                                              ; preds = %103, %73, %53
  %107 = load %struct.i915_vma*, %struct.i915_vma** %18, align 8
  %108 = call i32 @i915_vma_destroy(%struct.i915_vma* %107)
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %45
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, %struct.i915_address_space*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unbind(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i64 @i915_is_ggtt(%struct.i915_address_space*) #1

declare dso_local i32 @igt_check_page_sizes(%struct.i915_vma*) #1

declare dso_local i32 @gpu_write(%struct.i915_vma*, %struct.i915_gem_context*, %struct.intel_engine_cs*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cpu_check(%struct.drm_i915_gem_object*, i32, i32) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_destroy(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
