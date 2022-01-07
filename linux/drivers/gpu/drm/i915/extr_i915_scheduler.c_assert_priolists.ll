; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_assert_priolists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_assert_priolists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_execlists = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rb_node = type { i32 }
%struct.i915_priolist = type { i64, i32, i32* }

@CONFIG_DRM_I915_DEBUG_GEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@I915_USER_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_execlists*)* @assert_priolists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_priolists(%struct.intel_engine_execlists* %0) #0 {
  %2 = alloca %struct.intel_engine_execlists*, align 8
  %3 = alloca %struct.rb_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i915_priolist*, align 8
  store %struct.intel_engine_execlists* %0, %struct.intel_engine_execlists** %2, align 8
  %7 = load i32, i32* @CONFIG_DRM_I915_DEBUG_GEM, align 4
  %8 = call i32 @IS_ENABLED(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %87

11:                                               ; preds = %1
  %12 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %2, align 8
  %13 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %12, i32 0, i32 0
  %14 = call %struct.rb_node* @rb_first_cached(%struct.TYPE_2__* %13)
  %15 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %2, align 8
  %16 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call %struct.rb_node* @rb_first(i32* %17)
  %19 = icmp ne %struct.rb_node* %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  %22 = load i32, i32* @INT_MAX, align 4
  %23 = load i32, i32* @I915_USER_PRIORITY_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %4, align 8
  %27 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %2, align 8
  %28 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %27, i32 0, i32 0
  %29 = call %struct.rb_node* @rb_first_cached(%struct.TYPE_2__* %28)
  store %struct.rb_node* %29, %struct.rb_node** %3, align 8
  br label %30

30:                                               ; preds = %84, %11
  %31 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %32 = icmp ne %struct.rb_node* %31, null
  br i1 %32, label %33, label %87

33:                                               ; preds = %30
  %34 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %35 = call %struct.i915_priolist* @to_priolist(%struct.rb_node* %34)
  store %struct.i915_priolist* %35, %struct.i915_priolist** %6, align 8
  %36 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %37 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp sge i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @GEM_BUG_ON(i32 %41)
  %43 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %44 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  %46 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %47 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @GEM_BUG_ON(i32 %51)
  store i64 0, i64* %5, align 8
  br label %53

53:                                               ; preds = %80, %33
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %56 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @ARRAY_SIZE(i32* %57)
  %59 = icmp slt i64 %54, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %53
  %61 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %62 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i64 @list_empty(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %80

69:                                               ; preds = %60
  %70 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %71 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @BIT(i64 %73)
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @GEM_BUG_ON(i32 %78)
  br label %80

80:                                               ; preds = %69, %68
  %81 = load i64, i64* %5, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %5, align 8
  br label %53

83:                                               ; preds = %53
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.rb_node*, %struct.rb_node** %3, align 8
  %86 = call %struct.rb_node* @rb_next(%struct.rb_node* %85)
  store %struct.rb_node* %86, %struct.rb_node** %3, align 8
  br label %30

87:                                               ; preds = %10, %30
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local %struct.rb_node* @rb_first_cached(%struct.TYPE_2__*) #1

declare dso_local %struct.rb_node* @rb_first(i32*) #1

declare dso_local %struct.i915_priolist* @to_priolist(%struct.rb_node*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local %struct.rb_node* @rb_next(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
