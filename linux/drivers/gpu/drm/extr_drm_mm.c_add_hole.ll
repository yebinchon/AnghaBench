; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_add_hole.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_add_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i64, %struct.drm_mm* }
%struct.drm_mm = type { i32, i32, i32 }

@rb_hole_addr = common dso_local global i32 0, align 4
@HOLE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mm_node*)* @add_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_hole(%struct.drm_mm_node* %0) #0 {
  %2 = alloca %struct.drm_mm_node*, align 8
  %3 = alloca %struct.drm_mm*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %2, align 8
  %4 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %5 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %4, i32 0, i32 2
  %6 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  store %struct.drm_mm* %6, %struct.drm_mm** %3, align 8
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %8 = call i64 @__drm_mm_hole_node_end(%struct.drm_mm_node* %7)
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %10 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %9)
  %11 = sub nsw i64 %8, %10
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 1
  store i64 %11, i64* %13, align 8
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %15 = call i32 @drm_mm_hole_follows(%struct.drm_mm_node* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @DRM_MM_BUG_ON(i32 %18)
  %20 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %21 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %20, i32 0, i32 2
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %23 = call i32 @insert_hole_size(i32* %21, %struct.drm_mm_node* %22)
  %24 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %25 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @rb_hole_addr, align 4
  %28 = load i32, i32* @HOLE_ADDR, align 4
  %29 = call i32 @RB_INSERT(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %31 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 0
  %32 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %33 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %32, i32 0, i32 0
  %34 = call i32 @list_add(i32* %31, i32* %33)
  ret void
}

declare dso_local i64 @__drm_mm_hole_node_end(%struct.drm_mm_node*) #1

declare dso_local i64 @__drm_mm_hole_node_start(%struct.drm_mm_node*) #1

declare dso_local i32 @DRM_MM_BUG_ON(i32) #1

declare dso_local i32 @drm_mm_hole_follows(%struct.drm_mm_node*) #1

declare dso_local i32 @insert_hole_size(i32*, %struct.drm_mm_node*) #1

declare dso_local i32 @RB_INSERT(i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
