; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_create_test_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_context.c_create_test_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.i915_gem_context = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.i915_address_space }
%struct.i915_address_space = type { i32 }
%struct.drm_file = type { i32 }
%struct.list_head = type { i32 }

@DW_PER_PAGE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@STACK_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to fill object with cpu, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.i915_gem_context*, %struct.drm_file*, %struct.list_head*)* @create_test_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @create_test_object(%struct.i915_gem_context* %0, %struct.drm_file* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.drm_i915_gem_object*, align 8
  %5 = alloca %struct.i915_gem_context*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.drm_i915_gem_object*, align 8
  %9 = alloca %struct.i915_address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i915_gem_context* %0, %struct.i915_gem_context** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %12 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %13 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = sext i32 %14 to i64
  %18 = inttoptr i64 %17 to %struct.i915_address_space*
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %21 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi %struct.i915_address_space* [ %18, %16 ], [ %24, %19 ]
  store %struct.i915_address_space* %26, %struct.i915_address_space** %9, align 8
  %27 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %28 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i32 @i915_retire_requests(%struct.TYPE_5__* %29)
  %31 = load %struct.i915_address_space*, %struct.i915_address_space** %9, align 8
  %32 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 2
  %35 = load i64, i64* @DW_PER_PAGE, align 8
  %36 = mul i64 1024, %35
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = mul i64 %36, %37
  %39 = call i32 @min(i32 %34, i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i64, i64* @DW_PER_PAGE, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = mul i64 %41, %42
  %44 = call i32 @round_down(i32 %40, i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.i915_gem_context*, %struct.i915_gem_context** %5, align 8
  %46 = getelementptr inbounds %struct.i915_gem_context, %struct.i915_gem_context* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* @DW_PER_PAGE, align 8
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = mul i64 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.drm_i915_gem_object* @huge_gem_object(%struct.TYPE_5__* %47, i64 %50, i32 %51)
  store %struct.drm_i915_gem_object* %52, %struct.drm_i915_gem_object** %8, align 8
  %53 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %54 = call i64 @IS_ERR(%struct.drm_i915_gem_object* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %25
  %57 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  store %struct.drm_i915_gem_object* %57, %struct.drm_i915_gem_object** %4, align 8
  br label %86

58:                                               ; preds = %25
  %59 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %60 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %61 = call i32 @file_add_object(%struct.drm_file* %59, %struct.drm_i915_gem_object* %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %63 = call i32 @i915_gem_object_put(%struct.drm_i915_gem_object* %62)
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %67)
  store %struct.drm_i915_gem_object* %68, %struct.drm_i915_gem_object** %4, align 8
  br label %86

69:                                               ; preds = %58
  %70 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %71 = load i32, i32* @STACK_MAGIC, align 4
  %72 = call i32 @cpu_fill(%struct.drm_i915_gem_object* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = call %struct.drm_i915_gem_object* @ERR_PTR(i32 %78)
  store %struct.drm_i915_gem_object* %79, %struct.drm_i915_gem_object** %4, align 8
  br label %86

80:                                               ; preds = %69
  %81 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  %82 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %81, i32 0, i32 0
  %83 = load %struct.list_head*, %struct.list_head** %7, align 8
  %84 = call i32 @list_add_tail(i32* %82, %struct.list_head* %83)
  %85 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %8, align 8
  store %struct.drm_i915_gem_object* %85, %struct.drm_i915_gem_object** %4, align 8
  br label %86

86:                                               ; preds = %80, %75, %66, %56
  %87 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %4, align 8
  ret %struct.drm_i915_gem_object* %87
}

declare dso_local i32 @i915_retire_requests(%struct.TYPE_5__*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @round_down(i32, i64) #1

declare dso_local %struct.drm_i915_gem_object* @huge_gem_object(%struct.TYPE_5__*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @file_add_object(%struct.drm_file*, %struct.drm_i915_gem_object*) #1

declare dso_local i32 @i915_gem_object_put(%struct.drm_i915_gem_object*) #1

declare dso_local %struct.drm_i915_gem_object* @ERR_PTR(i32) #1

declare dso_local i32 @cpu_fill(%struct.drm_i915_gem_object*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
