; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_reserve_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_reserve_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 (%struct.drm_mm_node*, i32, i64*, i64*)* }
%struct.drm_mm_node = type { i64, i64, i64, i32, i32, %struct.drm_mm*, i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_reserve_node(%struct.drm_mm* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_mm*, align 8
  %5 = alloca %struct.drm_mm_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.drm_mm* %0, %struct.drm_mm** %4, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %5, align 8
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %16 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %23 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %28 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %118

37:                                               ; preds = %2
  %38 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %39 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %40 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.drm_mm_node* @find_hole(%struct.drm_mm* %38, i64 %41)
  store %struct.drm_mm_node* %42, %struct.drm_mm_node** %7, align 8
  %43 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %44 = icmp ne %struct.drm_mm_node* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %118

48:                                               ; preds = %37
  %49 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %50 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %49)
  store i64 %50, i64* %8, align 8
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %53 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  store i64 %55, i64* %9, align 8
  store i64 %55, i64* %11, align 8
  %56 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %57 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %56, i32 0, i32 0
  %58 = load i32 (%struct.drm_mm_node*, i32, i64*, i64*)*, i32 (%struct.drm_mm_node*, i32, i64*, i64*)** %57, align 8
  %59 = icmp ne i32 (%struct.drm_mm_node*, i32, i64*, i64*)* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %62 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %61, i32 0, i32 0
  %63 = load i32 (%struct.drm_mm_node*, i32, i64*, i64*)*, i32 (%struct.drm_mm_node*, i32, i64*, i64*)** %62, align 8
  %64 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %65 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %66 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %63(%struct.drm_mm_node* %64, i32 %67, i64* %10, i64* %11)
  br label %69

69:                                               ; preds = %60, %48
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %72 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %69
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %118

82:                                               ; preds = %75
  %83 = load %struct.drm_mm*, %struct.drm_mm** %4, align 8
  %84 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %85 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %84, i32 0, i32 5
  store %struct.drm_mm* %83, %struct.drm_mm** %85, align 8
  %86 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %87 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %86, i32 0, i32 4
  %88 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %89 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %88, i32 0, i32 4
  %90 = call i32 @list_add(i32* %87, i32* %89)
  %91 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %92 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %93 = call i32 @drm_mm_interval_tree_add_node(%struct.drm_mm_node* %91, %struct.drm_mm_node* %92)
  %94 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %95 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %94, i32 0, i32 3
  store i32 1, i32* %95, align 8
  %96 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %97 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %99 = call i32 @rm_hole(%struct.drm_mm_node* %98)
  %100 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %101 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %82
  %106 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %107 = call i32 @add_hole(%struct.drm_mm_node* %106)
  br label %108

108:                                              ; preds = %105, %82
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %114 = call i32 @add_hole(%struct.drm_mm_node* %113)
  br label %115

115:                                              ; preds = %112, %108
  %116 = load %struct.drm_mm_node*, %struct.drm_mm_node** %5, align 8
  %117 = call i32 @save_stack(%struct.drm_mm_node* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %79, %45, %34
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.drm_mm_node* @find_hole(%struct.drm_mm*, i64) #1

declare dso_local i64 @__drm_mm_hole_node_start(%struct.drm_mm_node*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @drm_mm_interval_tree_add_node(%struct.drm_mm_node*, %struct.drm_mm_node*) #1

declare dso_local i32 @rm_hole(%struct.drm_mm_node*) #1

declare dso_local i32 @add_hole(%struct.drm_mm_node*) #1

declare dso_local i32 @save_stack(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
