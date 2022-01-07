; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c_i915_syncmap_is_later.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_syncmap.c_i915_syncmap_is_later.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_syncmap = type { i64, i32, i32, %struct.i915_syncmap* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_syncmap_is_later(%struct.i915_syncmap** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_syncmap**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i915_syncmap*, align 8
  %9 = alloca i32, align 4
  store %struct.i915_syncmap** %0, %struct.i915_syncmap*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  %11 = load %struct.i915_syncmap*, %struct.i915_syncmap** %10, align 8
  store %struct.i915_syncmap* %11, %struct.i915_syncmap** %8, align 8
  %12 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %13 = icmp ne %struct.i915_syncmap* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %99

15:                                               ; preds = %3
  %16 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @__sync_leaf_prefix(%struct.i915_syncmap* %16, i32 %17)
  %19 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %20 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %78

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %45, %27
  %29 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %30 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %29, i32 0, i32 3
  %31 = load %struct.i915_syncmap*, %struct.i915_syncmap** %30, align 8
  store %struct.i915_syncmap* %31, %struct.i915_syncmap** %8, align 8
  %32 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %33 = icmp ne %struct.i915_syncmap* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %99

35:                                               ; preds = %28
  %36 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @__sync_branch_prefix(%struct.i915_syncmap* %36, i32 %37)
  %39 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %40 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %46

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  br i1 true, label %28, label %46

46:                                               ; preds = %45, %43
  br label %47

47:                                               ; preds = %74, %46
  %48 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %49 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %75

53:                                               ; preds = %47
  %54 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %55 = call %struct.i915_syncmap** @__sync_child(%struct.i915_syncmap* %54)
  %56 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @__sync_branch_idx(%struct.i915_syncmap* %56, i32 %57)
  %59 = getelementptr inbounds %struct.i915_syncmap*, %struct.i915_syncmap** %55, i64 %58
  %60 = load %struct.i915_syncmap*, %struct.i915_syncmap** %59, align 8
  store %struct.i915_syncmap* %60, %struct.i915_syncmap** %8, align 8
  %61 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %62 = icmp ne %struct.i915_syncmap* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %99

64:                                               ; preds = %53
  %65 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @__sync_branch_prefix(%struct.i915_syncmap* %65, i32 %66)
  %68 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %69 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %99

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  br i1 true, label %47, label %75

75:                                               ; preds = %74, %52
  %76 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %77 = load %struct.i915_syncmap**, %struct.i915_syncmap*** %5, align 8
  store %struct.i915_syncmap* %76, %struct.i915_syncmap** %77, align 8
  br label %78

78:                                               ; preds = %75, %26
  %79 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @__sync_leaf_idx(%struct.i915_syncmap* %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %83 = getelementptr inbounds %struct.i915_syncmap, %struct.i915_syncmap* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @BIT(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %99

90:                                               ; preds = %78
  %91 = load %struct.i915_syncmap*, %struct.i915_syncmap** %8, align 8
  %92 = call i32* @__sync_seqno(%struct.i915_syncmap* %91)
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @seqno_later(i32 %96, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %90, %89, %72, %63, %34, %14
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @__sync_leaf_prefix(%struct.i915_syncmap*, i32) #1

declare dso_local i64 @__sync_branch_prefix(%struct.i915_syncmap*, i32) #1

declare dso_local %struct.i915_syncmap** @__sync_child(%struct.i915_syncmap*) #1

declare dso_local i64 @__sync_branch_idx(%struct.i915_syncmap*, i32) #1

declare dso_local i32 @__sync_leaf_idx(%struct.i915_syncmap*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @seqno_later(i32, i32) #1

declare dso_local i32* @__sync_seqno(%struct.i915_syncmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
