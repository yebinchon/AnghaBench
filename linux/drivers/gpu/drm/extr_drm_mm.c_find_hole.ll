; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_find_hole.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_find_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rb_node*, %struct.rb_node* }
%struct.rb_node = type { i32 }
%struct.drm_mm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_mm_node* (%struct.drm_mm*, i64)* @find_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_mm_node* @find_hole(%struct.drm_mm* %0, i64 %1) #0 {
  %3 = alloca %struct.drm_mm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.drm_mm_node*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_mm* %0, %struct.drm_mm** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %9 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  store %struct.rb_node* %11, %struct.rb_node** %5, align 8
  store %struct.drm_mm_node* null, %struct.drm_mm_node** %6, align 8
  br label %12

12:                                               ; preds = %43, %2
  %13 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %14 = icmp ne %struct.rb_node* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %12
  %16 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %17 = call %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node* %16)
  store %struct.drm_mm_node* %17, %struct.drm_mm_node** %6, align 8
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %19 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %18)
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %25 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.rb_node*, %struct.rb_node** %26, align 8
  store %struct.rb_node* %27, %struct.rb_node** %5, align 8
  br label %43

28:                                               ; preds = %15
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %32 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = icmp sgt i64 %29, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %38 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.rb_node*, %struct.rb_node** %39, align 8
  store %struct.rb_node* %40, %struct.rb_node** %5, align 8
  br label %42

41:                                               ; preds = %28
  br label %44

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %23
  br label %12

44:                                               ; preds = %41, %12
  %45 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  ret %struct.drm_mm_node* %45
}

declare dso_local %struct.drm_mm_node* @rb_hole_addr_to_node(%struct.rb_node*) #1

declare dso_local i64 @__drm_mm_hole_node_start(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
