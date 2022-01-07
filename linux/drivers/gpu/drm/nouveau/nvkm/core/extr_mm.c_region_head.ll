; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_mm.c_region_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_mm.c_region_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mm = type { i32 }
%struct.nvkm_mm_node = type { i64, i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NVKM_MM_TYPE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_mm_node* (%struct.nvkm_mm*, %struct.nvkm_mm_node*, i64)* @region_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_mm_node* @region_head(%struct.nvkm_mm* %0, %struct.nvkm_mm_node* %1, i64 %2) #0 {
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
  br label %74

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.nvkm_mm_node* @kmalloc(i32 32, i32 %17)
  store %struct.nvkm_mm_node* %18, %struct.nvkm_mm_node** %8, align 8
  %19 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %20 = icmp eq %struct.nvkm_mm_node* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store %struct.nvkm_mm_node* null, %struct.nvkm_mm_node** %4, align 8
  br label %74

25:                                               ; preds = %16
  %26 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %27 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %30 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %33 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %35 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %38 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %40 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %43 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %46 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %53 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %57 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %56, i32 0, i32 3
  %58 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %59 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %58, i32 0, i32 3
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %62 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NVKM_MM_TYPE_NONE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %25
  %67 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  %68 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %67, i32 0, i32 2
  %69 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %6, align 8
  %70 = getelementptr inbounds %struct.nvkm_mm_node, %struct.nvkm_mm_node* %69, i32 0, i32 2
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %66, %25
  %73 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %8, align 8
  store %struct.nvkm_mm_node* %73, %struct.nvkm_mm_node** %4, align 8
  br label %74

74:                                               ; preds = %72, %24, %14
  %75 = load %struct.nvkm_mm_node*, %struct.nvkm_mm_node** %4, align 8
  ret %struct.nvkm_mm_node* %75
}

declare dso_local %struct.nvkm_mm_node* @kmalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
