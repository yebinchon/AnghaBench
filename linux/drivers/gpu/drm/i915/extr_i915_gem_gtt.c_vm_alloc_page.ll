; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_vm_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_vm_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.i915_address_space = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pagevec = type { i64, %struct.page** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.i915_address_space*, i32)* @vm_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @vm_alloc_page(%struct.i915_address_space* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.i915_address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pagevec, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %10 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %9, i32 0, i32 3
  %11 = call i32 @should_fail(i32* %10, i32 1)
  %12 = call i64 @I915_SELFTEST_ONLY(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %16 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 @i915_gem_shrink_all(%struct.TYPE_4__* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %21 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %20, i32 0, i32 0
  %22 = call %struct.page* @stash_pop_page(i32* %21)
  store %struct.page* %22, %struct.page** %7, align 8
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = icmp ne %struct.page* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %26, %struct.page** %3, align 8
  br label %124

27:                                               ; preds = %19
  %28 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %29 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.page* @alloc_page(i32 %33)
  store %struct.page* %34, %struct.page** %3, align 8
  br label %124

35:                                               ; preds = %27
  %36 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %37 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call %struct.page* @stash_pop_page(i32* %40)
  store %struct.page* %41, %struct.page** %7, align 8
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %45, %struct.page** %3, align 8
  br label %124

46:                                               ; preds = %35
  %47 = call i32 @pagevec_init(%struct.pagevec* %6)
  br label %48

48:                                               ; preds = %66, %46
  %49 = load i32, i32* %5, align 4
  %50 = call %struct.page* @alloc_page(i32 %49)
  store %struct.page* %50, %struct.page** %8, align 8
  %51 = load %struct.page*, %struct.page** %8, align 8
  %52 = icmp ne %struct.page* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %69

58:                                               ; preds = %48
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 1
  %61 = load %struct.page**, %struct.page*** %60, align 8
  %62 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 %63
  store %struct.page* %59, %struct.page** %65, align 8
  br label %66

66:                                               ; preds = %58
  %67 = call i64 @pagevec_space(%struct.pagevec* %6)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %48, label %69

69:                                               ; preds = %66, %57
  %70 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 1
  %75 = load %struct.page**, %struct.page*** %74, align 8
  %76 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @set_pages_array_wc(%struct.page** %75, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %107, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 1
  %82 = load %struct.page**, %struct.page*** %81, align 8
  %83 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = getelementptr inbounds %struct.page*, %struct.page** %82, i64 %85
  %87 = load %struct.page*, %struct.page** %86, align 8
  store %struct.page* %87, %struct.page** %7, align 8
  %88 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %93 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = call i32 @stash_push_pagevec(i32* %96, %struct.pagevec* %6)
  br label %98

98:                                               ; preds = %91, %80
  %99 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.i915_address_space*, %struct.i915_address_space** %4, align 8
  %104 = getelementptr inbounds %struct.i915_address_space, %struct.i915_address_space* %103, i32 0, i32 0
  %105 = call i32 @stash_push_pagevec(i32* %104, %struct.pagevec* %6)
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %73, %69
  %108 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 1
  %115 = load %struct.page**, %struct.page*** %114, align 8
  %116 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %6, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @set_pages_array_wb(%struct.page** %115, i32 %118)
  %120 = call i32 @WARN_ON_ONCE(i32 %119)
  %121 = call i32 @__pagevec_release(%struct.pagevec* %6)
  br label %122

122:                                              ; preds = %113, %107
  %123 = load %struct.page*, %struct.page** %7, align 8
  store %struct.page* %123, %struct.page** %3, align 8
  br label %124

124:                                              ; preds = %122, %44, %32, %25
  %125 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %125
}

declare dso_local i64 @I915_SELFTEST_ONLY(i32) #1

declare dso_local i32 @should_fail(i32*, i32) #1

declare dso_local i32 @i915_gem_shrink_all(%struct.TYPE_4__*) #1

declare dso_local %struct.page* @stash_pop_page(i32*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pagevec_space(%struct.pagevec*) #1

declare dso_local i32 @set_pages_array_wc(%struct.page**, i64) #1

declare dso_local i32 @stash_push_pagevec(i32*, %struct.pagevec*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @set_pages_array_wb(%struct.page**, i32) #1

declare dso_local i32 @__pagevec_release(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
