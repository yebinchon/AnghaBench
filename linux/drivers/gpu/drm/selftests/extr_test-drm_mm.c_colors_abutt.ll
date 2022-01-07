; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_colors_abutt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/selftests/extr_test-drm_mm.c_colors_abutt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@node_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"colors abutt; %ld [%llx + %llx] is next to %ld [%llx + %llx]!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_mm_node*)* @colors_abutt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @colors_abutt(%struct.drm_mm_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %3, align 8
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %5 = call i32 @drm_mm_hole_follows(%struct.drm_mm_node* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %1
  %8 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %9 = load i32, i32* @node_list, align 4
  %10 = call %struct.TYPE_2__* @list_next_entry(%struct.drm_mm_node* %8, i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %7
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %16 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %19 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %22 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %25 = load i32, i32* @node_list, align 4
  %26 = call %struct.TYPE_2__* @list_next_entry(%struct.drm_mm_node* %24, i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %30 = load i32, i32* @node_list, align 4
  %31 = call %struct.TYPE_2__* @list_next_entry(%struct.drm_mm_node* %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %35 = load i32, i32* @node_list, align 4
  %36 = call %struct.TYPE_2__* @list_next_entry(%struct.drm_mm_node* %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23, i32 %28, i32 %33, i32 %38)
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @drm_mm_hole_follows(%struct.drm_mm_node*) #1

declare dso_local %struct.TYPE_2__* @list_next_entry(%struct.drm_mm_node*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
