; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_check_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_check_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32, i64, i32, i64 }

@.str = private unnamed_addr constant [74 x i8] c"Inserting first context=%llx did not return leaf (height=%d, prefix=%llx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Inserting first context=%llx created branches!\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"First bitmap does not contain a single entry, found %x (count=%d)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Lookup of first context=%llx/seqno=%x failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i915_syncmap**, i32, i32)* @check_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_one(%struct.i915_syncmap** %0, i32 %1, i32 %2) #0 {
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
  br label %94

17:                                               ; preds = %3
  %18 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %19 = load %struct.i915_syncmap*, %struct.i915_syncmap** %18, align 8
  %20 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %26 = load %struct.i915_syncmap*, %struct.i915_syncmap** %25, align 8
  %27 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %30 = load %struct.i915_syncmap*, %struct.i915_syncmap** %29, align 8
  %31 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %28, i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %94

36:                                               ; preds = %17
  %37 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %38 = load %struct.i915_syncmap*, %struct.i915_syncmap** %37, align 8
  %39 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %94

47:                                               ; preds = %36
  %48 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %49 = load %struct.i915_syncmap*, %struct.i915_syncmap** %48, align 8
  %50 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @hweight32(i32 %51)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %56 = load %struct.i915_syncmap*, %struct.i915_syncmap** %55, align 8
  %57 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %60 = load %struct.i915_syncmap*, %struct.i915_syncmap** %59, align 8
  %61 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @hweight32(i32 %62)
  %64 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %94

67:                                               ; preds = %47
  %68 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %69 = load %struct.i915_syncmap*, %struct.i915_syncmap** %68, align 8
  %70 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %71 = load %struct.i915_syncmap*, %struct.i915_syncmap** %70, align 8
  %72 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ilog2(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @check_seqno(%struct.i915_syncmap* %69, i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %94

81:                                               ; preds = %67
  %82 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @i915_syncmap_is_later(%struct.i915_syncmap** %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %87, %79, %54, %42, %23, %15
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @i915_syncmap_set(%struct.i915_syncmap**, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

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
