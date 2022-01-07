; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_mm.c_region_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_mm.c_region_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mm = type { i32 }
%struct.nvkm_mm_node = type { i64, i64, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVKM_MM_TYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_mm_node* (%struct.nvkm_mm*, %struct.nvkm_mm_node*, i64)* @region_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_mm_node* @region_tail(%struct.nvkm_mm* %0, %struct.nvkm_mm_node* %1, i64 %2) #0 {
  %4 = alloca %struct.nvkm_mm_node*, align 8
  %5 = alloca %struct.nvkm_mm*, align 8
  %6 = alloca %struct.nvkm_mm_node*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvkm_mm_node*, align 8
  store %struct.nvkm_mm* %0, %struct.nvkm_mm** %5, align 8
  store %struct.nvkm_mm_node* %1, %struct.nvkm_mm_node** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %10 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  store %struct.nvkm_mm_node* %15, %struct.nvkm_mm_node** %4, align 8
  br label %71

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nvkm_mm_node* @kmalloc(i32 40, i32 %17)
  store %struct.nvkm_mm_node* %18, %struct.nvkm_mm_node** %8, align 8
  %19 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %20 = icmp eq %struct.nvkm_mm_node* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.nvkm_mm_node* null, %struct.nvkm_mm_node** %4, align 8
  br label %71

25:                                               ; preds = %16
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %28 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %32 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %35 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %39 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %42 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %44 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %47 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %49 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %52 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %54 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %53, i32 0, i32 4
  %55 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %56 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %55, i32 0, i32 4
  %57 = call i32 @list_add(i32* %54, i32* %56)
  %58 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %59 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NVKM_MM_TYPE_NONE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %25
  %64 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %65 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %64, i32 0, i32 3
  %66 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %67 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %66, i32 0, i32 3
  %68 = call i32 @list_add(i32* %65, i32* %67)
  br label %69

69:                                               ; preds = %63, %25
  %70 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  store %struct.nvkm_mm_node* %70, %struct.nvkm_mm_node** %4, align 8
  br label %71

71:                                               ; preds = %69, %24, %14
  %72 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %4, align 8
  ret %struct.nvkm_mm_node* %72
}

declare dso_local %struct.nvkm_mm_node* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
