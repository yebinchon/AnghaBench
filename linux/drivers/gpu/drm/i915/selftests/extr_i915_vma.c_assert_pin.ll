; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_vma.c_assert_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.i915_ggtt_view = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"(%s) VMA is wrong size, expected %llu, found %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"(%s) VMA binding too small, expected %llu, found %llu\0A\00", align 1
@I915_GGTT_VIEW_NORMAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"(%s) VMA mismatch upon creation!\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"(%s) VMA using original object pages!\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Not the normal ggtt view! Found %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"VMA not using object pages!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_vma*, %struct.i915_ggtt_view*, i64, i8*)* @assert_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assert_pin(%struct.i915_vma* %0, %struct.i915_ggtt_view* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca %struct.i915_ggtt_view*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.i915_vma* %0, %struct.i915_vma** %5, align 8
  store %struct.i915_ggtt_view* %1, %struct.i915_ggtt_view** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %11 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %19 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %16, i64 %17, i64 %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %15, %4
  %23 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %24 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %28 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %34 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %37 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %35, i64 %39)
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %31, %22
  %42 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %6, align 8
  %43 = icmp ne %struct.i915_ggtt_view* %42, null
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %6, align 8
  %46 = getelementptr inbounds %struct.i915_ggtt_view, %struct.i915_ggtt_view* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @I915_GGTT_VIEW_NORMAL, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %52 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %51, i32 0, i32 3
  %53 = load %struct.i915_ggtt_view*, %struct.i915_ggtt_view** %6, align 8
  %54 = call i64 @memcmp(%struct.TYPE_8__* %52, %struct.i915_ggtt_view* %53, i32 8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %61 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %64 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %62, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %59
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %59
  br label %101

74:                                               ; preds = %44, %41
  %75 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %76 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @I915_GGTT_VIEW_NORMAL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %83 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %85)
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %81, %74
  %88 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %89 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %92 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %91, i32 0, i32 2
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %90, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %87
  br label %101

101:                                              ; preds = %100, %73
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @memcmp(%struct.TYPE_8__*, %struct.i915_ggtt_view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
