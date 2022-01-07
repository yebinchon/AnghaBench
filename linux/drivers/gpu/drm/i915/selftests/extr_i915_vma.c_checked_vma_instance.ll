; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_checked_vma_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_checked_vma_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { %struct.i915_ggtt_view, %struct.i915_address_space* }
%struct.i915_ggtt_view = type { i32 }
%struct.drm_i915_gem_object = type { i32 }
%struct.i915_address_space = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"VMA's vm [%p] does not match request [%p]\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"VMA ggtt status [%d] does not match parent [%d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"i915_vma_compare failed with create parameters!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"i915_vma_compare failed with itself\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"i915_vma_compare failed to detect the difference!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.drm_i915_gem_object*, %struct.i915_address_space*, %struct.i915_ggtt_view*)* @checked_vma_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @checked_vma_instance(%struct.drm_i915_gem_object* %0, %struct.i915_address_space* %1, %struct.i915_ggtt_view* %2) #0 {
  %4 = alloca %struct.i915_vma*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.i915_address_space*, align 8
  %7 = alloca %struct.i915_ggtt_view*, align 8
  %8 = alloca %struct.i915_vma*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store %struct.i915_address_space* %1, %struct.i915_address_space** %6, align 8
  store %struct.i915_ggtt_view* %2, %struct.i915_ggtt_view** %7, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %11 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %12 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %7, align 8
  %13 = call %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object* %10, %struct.i915_address_space* %11, %struct.i915_ggtt_view* %12)
  store %struct.i915_vma* %13, %struct.i915_vma** %8, align 8
  %14 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %15 = call i64 @IS_ERR(%struct.i915_vma* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  store %struct.i915_vma* %18, %struct.i915_vma** %4, align 8
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %21 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %20, i32 0, i32 1
  %22 = load %struct.i915_address_space*, %struct.i915_address_space** %21, align 8
  %23 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %24 = icmp ne %struct.i915_address_space* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %27 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %26, i32 0, i32 1
  %28 = load %struct.i915_address_space*, %struct.i915_address_space** %27, align 8
  %29 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.i915_address_space* %28, %struct.i915_address_space* %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %33 = call i32 @i915_is_ggtt(%struct.i915_address_space* %32)
  %34 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %35 = call i32 @i915_vma_is_ggtt(%struct.i915_vma* %34)
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %39 = call i32 @i915_vma_is_ggtt(%struct.i915_vma* %38)
  %40 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %41 = call i32 @i915_is_ggtt(%struct.i915_address_space* %40)
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %45 = load %struct.i915_address_space*, %struct.i915_address_space** %6, align 8
  %46 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %7, align 8
  %47 = call i64 @i915_vma_compare(%struct.i915_vma* %44, %struct.i915_address_space* %45, %struct.i915_ggtt_view* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.i915_vma* @ERR_PTR(i32 %52)
  store %struct.i915_vma* %53, %struct.i915_vma** %4, align 8
  br label %85

54:                                               ; preds = %43
  %55 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %56 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %57 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %56, i32 0, i32 1
  %58 = load %struct.i915_address_space*, %struct.i915_address_space** %57, align 8
  %59 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %60 = call i32 @i915_vma_is_ggtt(%struct.i915_vma* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  %64 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %63, i32 0, i32 0
  br label %66

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi %struct.i915_ggtt_view* [ %64, %62 ], [ null, %65 ]
  %68 = call i64 @i915_vma_compare(%struct.i915_vma* %55, %struct.i915_address_space* %58, %struct.i915_ggtt_view* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.i915_vma* @ERR_PTR(i32 %73)
  store %struct.i915_vma* %74, %struct.i915_vma** %4, align 8
  br label %85

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.i915_vma* @ERR_PTR(i32 %81)
  store %struct.i915_vma* %82, %struct.i915_vma** %4, align 8
  br label %85

83:                                               ; preds = %75
  %84 = load %struct.i915_vma*, %struct.i915_vma** %8, align 8
  store %struct.i915_vma* %84, %struct.i915_vma** %4, align 8
  br label %85

85:                                               ; preds = %83, %78, %70, %49, %17
  %86 = load %struct.i915_vma*, %struct.i915_vma** %4, align 8
  ret %struct.i915_vma* %86
}

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.drm_i915_gem_object*, %struct.i915_address_space*, %struct.i915_ggtt_view*) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @i915_is_ggtt(%struct.i915_address_space*) #1

declare dso_local i32 @i915_vma_is_ggtt(%struct.i915_vma*) #1

declare dso_local i64 @i915_vma_compare(%struct.i915_vma*, %struct.i915_address_space*, %struct.i915_ggtt_view*) #1

declare dso_local %struct.i915_vma* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
