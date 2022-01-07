; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_rm_hole.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_rm_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mm_node*)* @rm_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rm_hole(%struct.drm_mm_node* %0) #0 {
  %2 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %2, align 8
  %3 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %4 = call i32 @drm_mm_hole_follows(%struct.drm_mm_node* %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @DRM_MM_BUG_ON(i32 %7)
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %10 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %9, i32 0, i32 4
  %11 = call i32 @list_del(i32* %10)
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 3
  %14 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %15 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @rb_erase_cached(i32* %13, i32* %17)
  %19 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %20 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %19, i32 0, i32 2
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %22 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @rb_erase(i32* %20, i32* %24)
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %27 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.drm_mm_node*, %struct.drm_mm_node** %2, align 8
  %29 = call i32 @drm_mm_hole_follows(%struct.drm_mm_node* %28)
  %30 = call i32 @DRM_MM_BUG_ON(i32 %29)
  ret void
}

declare dso_local i32 @DRM_MM_BUG_ON(i32) #1

declare dso_local i32 @drm_mm_hole_follows(%struct.drm_mm_node*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
