; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_remove_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_remove_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i32, i32, %struct.drm_mm* }
%struct.drm_mm = type { i32 }

@node_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mm_remove_node(%struct.drm_mm_node* %0) #0 {
  %2 = alloca %struct.drm_mm_node*, align 8
  %3 = alloca %struct.drm_mm*, align 8
  %4 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %2, align 8
  %5 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 3
  %7 = load %struct.drm_mm*, %struct.drm_mm** %6, align 8
  store %struct.drm_mm* %7, %struct.drm_mm** %3, align 8
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %9 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @DRM_MM_BUG_ON(i32 %13)
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %16 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DRM_MM_BUG_ON(i32 %17)
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %20 = load i32, i32* @node_list, align 4
  %21 = call %struct.drm_mm_node* @list_prev_entry(%struct.drm_mm_node* %19, i32 %20)
  store %struct.drm_mm_node* %21, %struct.drm_mm_node** %4, align 8
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %23 = call i64 @drm_mm_hole_follows(%struct.drm_mm_node* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %27 = call i32 @rm_hole(%struct.drm_mm_node* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %30 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %31 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %30, i32 0, i32 0
  %32 = call i32 @drm_mm_interval_tree_remove(%struct.drm_mm_node* %29, i32* %31)
  %33 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %34 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %33, i32 0, i32 2
  %35 = call i32 @list_del(i32* %34)
  %36 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %37 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %39 = call i64 @drm_mm_hole_follows(%struct.drm_mm_node* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %43 = call i32 @rm_hole(%struct.drm_mm_node* %42)
  br label %44

44:                                               ; preds = %41, %28
  %45 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %46 = call i32 @add_hole(%struct.drm_mm_node* %45)
  ret void
}

declare dso_local i32 @DRM_MM_BUG_ON(i32) #1

declare dso_local %struct.drm_mm_node* @list_prev_entry(%struct.drm_mm_node*, i32) #1

declare dso_local i64 @drm_mm_hole_follows(%struct.drm_mm_node*) #1

declare dso_local i32 @rm_hole(%struct.drm_mm_node*) #1

declare dso_local i32 @drm_mm_interval_tree_remove(%struct.drm_mm_node*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @add_hole(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
