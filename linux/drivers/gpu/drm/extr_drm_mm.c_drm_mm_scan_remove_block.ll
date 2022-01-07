; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_scan_remove_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_scan_remove_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_scan = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, i32, %struct.TYPE_2__* }

@node_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_scan_remove_block(%struct.drm_mm_scan* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca %struct.drm_mm_scan*, align 8
  %4 = alloca %struct.drm_mm_node*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_scan* %0, %struct.drm_mm_scan** %3, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %4, align 8
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %7 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %3, align 8
  %10 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @DRM_MM_BUG_ON(i32 %13)
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %16 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @DRM_MM_BUG_ON(i32 %20)
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %23 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %25 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @DRM_MM_BUG_ON(i32 %31)
  %33 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %34 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %40 = load i32, i32* @node_list, align 4
  %41 = call %struct.drm_mm_node* @list_prev_entry(%struct.drm_mm_node* %39, i32 %40)
  store %struct.drm_mm_node* %41, %struct.drm_mm_node** %5, align 8
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %43 = load i32, i32* @node_list, align 4
  %44 = call i64 @list_next_entry(%struct.drm_mm_node* %42, i32 %43)
  %45 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %46 = load i32, i32* @node_list, align 4
  %47 = call i64 @list_next_entry(%struct.drm_mm_node* %45, i32 %46)
  %48 = icmp ne i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @DRM_MM_BUG_ON(i32 %49)
  %51 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %52 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %51, i32 0, i32 3
  %53 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %54 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %53, i32 0, i32 3
  %55 = call i32 @list_add(i32* %52, i32* %54)
  %56 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %57 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %60 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %3, align 8
  %64 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %2
  %68 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %69 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.drm_mm_scan*, %struct.drm_mm_scan** %3, align 8
  %72 = getelementptr inbounds %struct.drm_mm_scan, %struct.drm_mm_scan* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br label %75

75:                                               ; preds = %67, %2
  %76 = phi i1 [ false, %2 ], [ %74, %67 ]
  %77 = zext i1 %76 to i32
  ret i32 %77
}

declare dso_local i32 @DRM_MM_BUG_ON(i32) #1

declare dso_local %struct.drm_mm_node* @list_prev_entry(%struct.drm_mm_node*, i32) #1

declare dso_local i64 @list_next_entry(%struct.drm_mm_node*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
