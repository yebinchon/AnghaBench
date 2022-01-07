; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gtt_color_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_gtt_color_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i64, i64 }

@I915_GTT_PAGE_SIZE = common dso_local global i64 0, align 8
@node_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mm_node*, i64, i32*, i32*)* @i915_gtt_color_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_gtt_color_adjust(%struct.drm_mm_node* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.drm_mm_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %10 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %15 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i64, i64* @I915_GTT_PAGE_SIZE, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %20
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  br label %26

26:                                               ; preds = %19, %13, %4
  %27 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %28 = load i32, i32* @node_list, align 4
  %29 = call %struct.drm_mm_node* @list_next_entry(%struct.drm_mm_node* %27, i32 %28)
  store %struct.drm_mm_node* %29, %struct.drm_mm_node** %5, align 8
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %31 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i64, i64* @I915_GTT_PAGE_SIZE, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %36
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  br label %42

42:                                               ; preds = %35, %26
  ret void
}

declare dso_local %struct.drm_mm_node* @list_next_entry(%struct.drm_mm_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
