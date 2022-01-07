; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_insert_hole_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_insert_hole_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root_cached = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rb_node* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.drm_mm_node = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_root_cached*, %struct.drm_mm_node*)* @insert_hole_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_hole_size(%struct.rb_root_cached* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca %struct.rb_root_cached*, align 8
  %4 = alloca %struct.drm_mm_node*, align 8
  %5 = alloca %struct.rb_node**, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rb_root_cached* %0, %struct.rb_root_cached** %3, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %4, align 8
  %9 = load %struct.rb_root_cached*, %struct.rb_root_cached** %3, align 8
  %10 = getelementptr inbounds %struct.rb_root_cached, %struct.rb_root_cached* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.rb_node** %11, %struct.rb_node*** %5, align 8
  store %struct.rb_node* null, %struct.rb_node** %6, align 8
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %15

15:                                               ; preds = %32, %2
  %16 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  %18 = icmp ne %struct.rb_node* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  store %struct.rb_node* %21, %struct.rb_node** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %24 = call i64 @rb_to_hole_size(%struct.rb_node* %23)
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %28 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %27, i32 0, i32 1
  store %struct.rb_node** %28, %struct.rb_node*** %5, align 8
  br label %32

29:                                               ; preds = %19
  %30 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %31 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i32 0, i32 0
  store %struct.rb_node** %31, %struct.rb_node*** %5, align 8
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %26
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %35 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %34, i32 0, i32 1
  %36 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %37 = load %struct.rb_node**, %struct.rb_node*** %5, align 8
  %38 = call i32 @rb_link_node(i32* %35, %struct.rb_node* %36, %struct.rb_node** %37)
  %39 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %40 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %39, i32 0, i32 1
  %41 = load %struct.rb_root_cached*, %struct.rb_root_cached** %3, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @rb_insert_color_cached(i32* %40, %struct.rb_root_cached* %41, i32 %42)
  ret void
}

declare dso_local i64 @rb_to_hole_size(%struct.rb_node*) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color_cached(i32*, %struct.rb_root_cached*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
