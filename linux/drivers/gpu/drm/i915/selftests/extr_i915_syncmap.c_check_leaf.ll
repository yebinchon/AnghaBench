; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_check_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_check_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32, i32, i64 }

@.str = private unnamed_addr constant [68 x i8] c"Inserting context=%llx did not return leaf (height=%d, prefix=%llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"First entry into leaf (context=%llx) does not contain a single entry, found %x (count=%d)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Lookup of first entry context=%llx/seqno=%x failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_syncmap**, i32, i32)* @check_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_leaf(%struct.i915_syncmap** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_syncmap**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i915_syncmap** %0, %struct.i915_syncmap*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @i915_syncmap_set(%struct.i915_syncmap** %9, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %85

17:                                               ; preds = %3
  %18 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %19 = load %struct.i915_syncmap*, %struct.i915_syncmap** %18, align 8
  %20 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %26 = load %struct.i915_syncmap*, %struct.i915_syncmap** %25, align 8
  %27 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %31 = load %struct.i915_syncmap*, %struct.i915_syncmap** %30, align 8
  %32 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29, i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %85

37:                                               ; preds = %17
  %38 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %39 = load %struct.i915_syncmap*, %struct.i915_syncmap** %38, align 8
  %40 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hweight32(i32 %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %47 = load %struct.i915_syncmap*, %struct.i915_syncmap** %46, align 8
  %48 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %51 = load %struct.i915_syncmap*, %struct.i915_syncmap** %50, align 8
  %52 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hweight32(i32 %53)
  %55 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %49, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %85

58:                                               ; preds = %37
  %59 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %60 = load %struct.i915_syncmap*, %struct.i915_syncmap** %59, align 8
  %61 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %62 = load %struct.i915_syncmap*, %struct.i915_syncmap** %61, align 8
  %63 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ilog2(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @check_seqno(%struct.i915_syncmap* %60, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %85

72:                                               ; preds = %58
  %73 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @i915_syncmap_is_later(%struct.i915_syncmap** %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i8*, i32, i32, ...) @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %78, %70, %44, %23, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @i915_syncmap_set(%struct.i915_syncmap**, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, ...) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @check_seqno(%struct.i915_syncmap*, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @i915_syncmap_is_later(%struct.i915_syncmap**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
