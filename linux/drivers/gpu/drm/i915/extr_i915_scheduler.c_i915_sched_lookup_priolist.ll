; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_i915_sched_lookup_priolist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_scheduler.c_i915_sched_lookup_priolist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.list_head = type { i32 }
%struct.intel_engine_cs = type { %struct.TYPE_5__, %struct.intel_engine_execlists }
%struct.TYPE_5__ = type { i32 }
%struct.intel_engine_execlists = type { i32, %struct.TYPE_7__, %struct.i915_priolist }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.i915_priolist = type { i32, %struct.list_head*, i32, i32 }

@I915_PRIORITY_COUNT = common dso_local global i32 0, align 4
@I915_PRIORITY_MASK = common dso_local global i32 0, align 4
@I915_USER_PRIORITY_SHIFT = common dso_local global i32 0, align 4
@I915_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@global = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_head* @i915_sched_lookup_priolist(%struct.intel_engine_cs* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_engine_execlists*, align 8
  %6 = alloca %struct.i915_priolist*, align 8
  %7 = alloca %struct.rb_node**, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %13 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %12, i32 0, i32 1
  store %struct.intel_engine_execlists* %13, %struct.intel_engine_execlists** %5, align 8
  store i32 1, i32* %9, align 4
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %19 = call i32 @assert_priolists(%struct.intel_engine_execlists* %18)
  %20 = load i32, i32* @I915_PRIORITY_COUNT, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @I915_PRIORITY_MASK, align 4
  %23 = and i32 %21, %22
  %24 = sub nsw i32 %20, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @I915_USER_PRIORITY_SHIFT, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %30 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @I915_PRIORITY_NORMAL, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %2
  br label %37

37:                                               ; preds = %88, %36
  store %struct.rb_node* null, %struct.rb_node** %8, align 8
  %38 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %39 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store %struct.rb_node** %41, %struct.rb_node*** %7, align 8
  br label %42

42:                                               ; preds = %70, %37
  %43 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %44 = load %struct.rb_node*, %struct.rb_node** %43, align 8
  %45 = icmp ne %struct.rb_node* %44, null
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %48 = load %struct.rb_node*, %struct.rb_node** %47, align 8
  store %struct.rb_node* %48, %struct.rb_node** %8, align 8
  %49 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %50 = call %struct.i915_priolist* @to_priolist(%struct.rb_node* %49)
  store %struct.i915_priolist* %50, %struct.i915_priolist** %6, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %53 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %58 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %57, i32 0, i32 1
  store %struct.rb_node** %58, %struct.rb_node*** %7, align 8
  br label %70

59:                                               ; preds = %46
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %62 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %67 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %66, i32 0, i32 0
  store %struct.rb_node** %67, %struct.rb_node*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %69

68:                                               ; preds = %59
  br label %129

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %56
  br label %42

71:                                               ; preds = %42
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @I915_PRIORITY_NORMAL, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %77 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %76, i32 0, i32 2
  store %struct.i915_priolist* %77, %struct.i915_priolist** %6, align 8
  br label %93

78:                                               ; preds = %71
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @global, i32 0, i32 0), align 4
  %80 = load i32, i32* @GFP_ATOMIC, align 4
  %81 = call %struct.i915_priolist* @kmem_cache_alloc(i32 %79, i32 %80)
  store %struct.i915_priolist* %81, %struct.i915_priolist** %6, align 8
  %82 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %83 = icmp ne %struct.i915_priolist* %82, null
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load i32, i32* @I915_PRIORITY_NORMAL, align 4
  store i32 %89, i32* %4, align 4
  %90 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %91 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %37

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %75
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %96 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %112, %93
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %100 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %99, i32 0, i32 1
  %101 = load %struct.list_head*, %struct.list_head** %100, align 8
  %102 = call i32 @ARRAY_SIZE(%struct.list_head* %101)
  %103 = icmp slt i32 %98, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %97
  %105 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %106 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %105, i32 0, i32 1
  %107 = load %struct.list_head*, %struct.list_head** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.list_head, %struct.list_head* %107, i64 %109
  %111 = call i32 @INIT_LIST_HEAD(%struct.list_head* %110)
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %97

115:                                              ; preds = %97
  %116 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %117 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %116, i32 0, i32 3
  %118 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %119 = load %struct.rb_node**, %struct.rb_node*** %7, align 8
  %120 = call i32 @rb_link_node(i32* %117, %struct.rb_node* %118, %struct.rb_node** %119)
  %121 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %122 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %121, i32 0, i32 3
  %123 = load %struct.intel_engine_execlists*, %struct.intel_engine_execlists** %5, align 8
  %124 = getelementptr inbounds %struct.intel_engine_execlists, %struct.intel_engine_execlists* %123, i32 0, i32 1
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @rb_insert_color_cached(i32* %122, %struct.TYPE_7__* %124, i32 %125)
  %127 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %128 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  br label %129

129:                                              ; preds = %115, %68
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @BIT(i32 %130)
  %132 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %133 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  %136 = load %struct.i915_priolist*, %struct.i915_priolist** %6, align 8
  %137 = getelementptr inbounds %struct.i915_priolist, %struct.i915_priolist* %136, i32 0, i32 1
  %138 = load %struct.list_head*, %struct.list_head** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.list_head, %struct.list_head* %138, i64 %140
  ret %struct.list_head* %141
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @assert_priolists(%struct.intel_engine_execlists*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.i915_priolist* @to_priolist(%struct.rb_node*) #1

declare dso_local %struct.i915_priolist* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.list_head*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color_cached(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
