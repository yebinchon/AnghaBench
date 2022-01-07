; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv44.c_nv44_vmm_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv44.c_nv44_vmm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lock_class_key = type { i32 }
%struct.nvkm_vmm = type { i64, i32 }

@nv44_vmm = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to allocate dummy pages\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv44_vmm_new(%struct.nvkm_mmu* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, %struct.lock_class_key* %6, i8* %7, %struct.nvkm_vmm** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_mmu*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.lock_class_key*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.nvkm_vmm**, align 8
  %20 = alloca %struct.nvkm_subdev*, align 8
  %21 = alloca %struct.nvkm_vmm*, align 8
  %22 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.lock_class_key* %6, %struct.lock_class_key** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.nvkm_vmm** %8, %struct.nvkm_vmm*** %19, align 8
  %23 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %11, align 8
  %24 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %23, i32 0, i32 0
  store %struct.nvkm_subdev* %24, %struct.nvkm_subdev** %20, align 8
  %25 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i8*, i8** %15, align 8
  %30 = load i32, i32* %16, align 4
  %31 = load %struct.lock_class_key*, %struct.lock_class_key** %17, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = call i32 @nv04_vmm_new_(i32* @nv44_vmm, %struct.nvkm_mmu* %25, i32 0, i32 %26, i32 %27, i32 %28, i8* %29, i32 %30, %struct.lock_class_key* %31, i8* %32, %struct.nvkm_vmm** %21)
  store i32 %33, i32* %22, align 4
  %34 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %21, align 8
  %35 = load %struct.nvkm_vmm**, %struct.nvkm_vmm*** %19, align 8
  store %struct.nvkm_vmm* %34, %struct.nvkm_vmm** %35, align 8
  %36 = load i32, i32* %22, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %9
  %39 = load i32, i32* %22, align 4
  store i32 %39, i32* %10, align 4
  br label %62

40:                                               ; preds = %9
  %41 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %20, align 8
  %42 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %21, align 8
  %47 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %46, i32 0, i32 0
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @dma_alloc_coherent(i32 %45, i32 16384, i64* %47, i32 %48)
  %50 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %21, align 8
  %51 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %21, align 8
  %53 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %40
  %57 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %20, align 8
  %58 = call i32 @nvkm_warn(%struct.nvkm_subdev* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %21, align 8
  %60 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %40
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %38
  %63 = load i32, i32* %10, align 4
  ret i32 %63
}

declare dso_local i32 @nv04_vmm_new_(i32*, %struct.nvkm_mmu*, i32, i32, i32, i32, i8*, i32, %struct.lock_class_key*, i8*, %struct.nvkm_vmm**) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
