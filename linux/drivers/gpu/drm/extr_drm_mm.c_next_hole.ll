; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_next_hole.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_next_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32 }
%struct.drm_mm_node = type { i32, i32, i32 }

@hole_stack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_mm_node* (%struct.drm_mm*, %struct.drm_mm_node*, i32)* @next_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_mm_node* @next_hole(%struct.drm_mm* %0, %struct.drm_mm_node* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_mm_node*, align 8
  %5 = alloca %struct.drm_mm*, align 8
  %6 = alloca %struct.drm_mm_node*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_mm* %0, %struct.drm_mm** %5, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %9 [
    i32 131, label %10
    i32 128, label %15
    i32 129, label %20
    i32 130, label %25
  ]

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %3, %9
  %11 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %12 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %11, i32 0, i32 2
  %13 = call i32 @rb_prev(i32* %12)
  %14 = call %struct.drm_mm_node* @rb_hole_size_to_node(i32 %13)
  store %struct.drm_mm_node* %14, %struct.drm_mm_node** %4, align 8
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %17 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %16, i32 0, i32 1
  %18 = call i32 @rb_next(i32* %17)
  %19 = call %struct.drm_mm_node* @rb_hole_addr_to_node(i32 %18)
  store %struct.drm_mm_node* %19, %struct.drm_mm_node** %4, align 8
  br label %39

20:                                               ; preds = %3
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %22 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 1
  %23 = call i32 @rb_prev(i32* %22)
  %24 = call %struct.drm_mm_node* @rb_hole_addr_to_node(i32 %23)
  store %struct.drm_mm_node* %24, %struct.drm_mm_node** %4, align 8
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %27 = load i32, i32* @hole_stack, align 4
  %28 = call %struct.drm_mm_node* @list_next_entry(%struct.drm_mm_node* %26, i32 %27)
  store %struct.drm_mm_node* %28, %struct.drm_mm_node** %6, align 8
  %29 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %30 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %29, i32 0, i32 0
  %31 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %32 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %31, i32 0, i32 0
  %33 = icmp eq i32* %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %37

35:                                               ; preds = %25
  %36 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi %struct.drm_mm_node* [ null, %34 ], [ %36, %35 ]
  store %struct.drm_mm_node* %38, %struct.drm_mm_node** %4, align 8
  br label %39

39:                                               ; preds = %37, %20, %15, %10
  %40 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  ret %struct.drm_mm_node* %40
}

declare dso_local %struct.drm_mm_node* @rb_hole_size_to_node(i32) #1

declare dso_local i32 @rb_prev(i32*) #1

declare dso_local %struct.drm_mm_node* @rb_hole_addr_to_node(i32) #1

declare dso_local i32 @rb_next(i32*) #1

declare dso_local %struct.drm_mm_node* @list_next_entry(%struct.drm_mm_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
