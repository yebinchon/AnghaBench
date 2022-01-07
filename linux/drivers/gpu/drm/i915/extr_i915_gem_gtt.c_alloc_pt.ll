; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_alloc_pt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_alloc_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_page_table = type { i32, i32 }
%struct.i915_address_space = type { i32 }

@I915_GFP_ALLOW_FAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_page_table* (%struct.i915_address_space*)* @alloc_pt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_page_table* @alloc_pt(%struct.i915_address_space* %0) #0 {
  %2 = alloca %struct.i915_page_table*, align 8
  %3 = alloca %struct.i915_address_space*, align 8
  %4 = alloca %struct.i915_page_table*, align 8
  store %struct.i915_address_space* %0, %struct.i915_address_space** %3, align 8
  %5 = load i32, i32* @I915_GFP_ALLOW_FAIL, align 4
  %6 = call %struct.i915_page_table* @kmalloc(i32 8, i32 %5)
  store %struct.i915_page_table* %6, %struct.i915_page_table** %4, align 8
  %7 = load %struct.i915_page_table*, %struct.i915_page_table** %4, align 8
  %8 = icmp ne %struct.i915_page_table* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.i915_page_table* @ERR_PTR(i32 %15)
  store %struct.i915_page_table* %16, %struct.i915_page_table** %2, align 8
  br label %35

17:                                               ; preds = %1
  %18 = load %struct.i915_address_space*, %struct.i915_address_space** %3, align 8
  %19 = load %struct.i915_page_table*, %struct.i915_page_table** %4, align 8
  %20 = getelementptr inbounds %struct.i915_page_table, %struct.i915_page_table* %19, i32 0, i32 1
  %21 = call i32 @setup_page_dma(%struct.i915_address_space* %18, i32* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.i915_page_table*, %struct.i915_page_table** %4, align 8
  %26 = call i32 @kfree(%struct.i915_page_table* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.i915_page_table* @ERR_PTR(i32 %28)
  store %struct.i915_page_table* %29, %struct.i915_page_table** %2, align 8
  br label %35

30:                                               ; preds = %17
  %31 = load %struct.i915_page_table*, %struct.i915_page_table** %4, align 8
  %32 = getelementptr inbounds %struct.i915_page_table, %struct.i915_page_table* %31, i32 0, i32 0
  %33 = call i32 @atomic_set(i32* %32, i32 0)
  %34 = load %struct.i915_page_table*, %struct.i915_page_table** %4, align 8
  store %struct.i915_page_table* %34, %struct.i915_page_table** %2, align 8
  br label %35

35:                                               ; preds = %30, %24, %13
  %36 = load %struct.i915_page_table*, %struct.i915_page_table** %2, align 8
  ret %struct.i915_page_table* %36
}

declare dso_local %struct.i915_page_table* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.i915_page_table* @ERR_PTR(i32) #1

declare dso_local i32 @setup_page_dma(%struct.i915_address_space*, i32*) #1

declare dso_local i32 @kfree(%struct.i915_page_table*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
