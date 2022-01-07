; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_replace_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mm.c_drm_mm_replace_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i32, i32, i32, i32, i32, %struct.drm_mm* }
%struct.drm_mm = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mm_replace_node(%struct.drm_mm_node* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca %struct.drm_mm_node*, align 8
  %4 = alloca %struct.drm_mm_node*, align 8
  %5 = alloca %struct.drm_mm*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %3, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %4, align 8
  %6 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %7 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %6, i32 0, i32 6
  %8 = load %struct.drm_mm*, %struct.drm_mm** %7, align 8
  store %struct.drm_mm* %8, %struct.drm_mm** %5, align 8
  %9 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %10 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @DRM_MM_BUG_ON(i32 %14)
  %16 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %18 = bitcast %struct.drm_mm_node* %16 to i8*
  %19 = bitcast %struct.drm_mm_node* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %21 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %20, i32 0, i32 5
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %23 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %22, i32 0, i32 5
  %24 = call i32 @list_replace(i32* %21, i32* %23)
  %25 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %26 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %25, i32 0, i32 4
  %27 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %28 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %27, i32 0, i32 4
  %29 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %30 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %29, i32 0, i32 2
  %31 = call i32 @rb_replace_node_cached(i32* %26, i32* %28, i32* %30)
  %32 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %33 = call i64 @drm_mm_hole_follows(%struct.drm_mm_node* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %2
  %36 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %37 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %36, i32 0, i32 3
  %38 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %39 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %38, i32 0, i32 3
  %40 = call i32 @list_replace(i32* %37, i32* %39)
  %41 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %42 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %41, i32 0, i32 2
  %43 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %44 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %43, i32 0, i32 2
  %45 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %46 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %45, i32 0, i32 1
  %47 = call i32 @rb_replace_node_cached(i32* %42, i32* %44, i32* %46)
  %48 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %49 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %48, i32 0, i32 1
  %50 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %51 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %50, i32 0, i32 1
  %52 = load %struct.drm_mm*, %struct.drm_mm** %5, align 8
  %53 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %52, i32 0, i32 0
  %54 = call i32 @rb_replace_node(i32* %49, i32* %51, i32* %53)
  br label %55

55:                                               ; preds = %35, %2
  %56 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %57 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %59 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  ret void
}

declare dso_local i32 @DRM_MM_BUG_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_replace(i32*, i32*) #1

declare dso_local i32 @rb_replace_node_cached(i32*, i32*, i32*) #1

declare dso_local i64 @drm_mm_hole_follows(%struct.drm_mm_node*) #1

declare dso_local i32 @rb_replace_node(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
