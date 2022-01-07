; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_igt_syncmap_join_above.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_syncmap.c_igt_syncmap_join_above.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i32, i32, %struct.i915_syncmap* }

@.str = private unnamed_addr constant [24 x i8] c"Parent with no height!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Join does not have 2 children: %x (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Leaf misplaced in parent!\0A\00", align 1
@SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_syncmap_join_above to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_syncmap_join_above(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i915_syncmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_syncmap*, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i32 @i915_syncmap_init(%struct.i915_syncmap** %3)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %80, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %83

13:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %73, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 64
  br i1 %16, label %17, label %79

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @BIT_ULL(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @check_leaf(%struct.i915_syncmap** %3, i32 %20, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %84

25:                                               ; preds = %17
  %26 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %27 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %26, i32 0, i32 2
  %28 = load %struct.i915_syncmap*, %struct.i915_syncmap** %27, align 8
  store %struct.i915_syncmap* %28, %struct.i915_syncmap** %8, align 8
  %29 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %30 = icmp ne %struct.i915_syncmap* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %73

32:                                               ; preds = %25
  %33 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %34 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %84

41:                                               ; preds = %32
  %42 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %43 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @hweight32(i32 %44)
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %49 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %52 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hweight32(i32 %53)
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %84

58:                                               ; preds = %41
  %59 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %60 = call %struct.i915_syncmap** @__sync_child(%struct.i915_syncmap* %59)
  %61 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @__sync_branch_idx(%struct.i915_syncmap* %61, i32 %62)
  %64 = getelementptr inbounds %struct.i915_syncmap*, %struct.i915_syncmap** %60, i64 %63
  %65 = load %struct.i915_syncmap*, %struct.i915_syncmap** %64, align 8
  %66 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %67 = icmp ne %struct.i915_syncmap* %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %84

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %31
  %74 = load i64, i64* @SHIFT, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  br label %14

79:                                               ; preds = %14
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %10

83:                                               ; preds = %10
  br label %84

84:                                               ; preds = %83, %68, %47, %37, %24
  %85 = load %struct.i915_syncmap*, %struct.i915_syncmap** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @dump_syncmap(%struct.i915_syncmap* %85, i32 %86)
  ret i32 %87
}

declare dso_local i32 @i915_syncmap_init(%struct.i915_syncmap**) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @check_leaf(%struct.i915_syncmap**, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local %struct.i915_syncmap** @__sync_child(%struct.i915_syncmap*) #1

declare dso_local i64 @__sync_branch_idx(%struct.i915_syncmap*, i32) #1

declare dso_local i32 @dump_syncmap(%struct.i915_syncmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
