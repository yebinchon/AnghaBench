; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgf100.c_gf100_vmm_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgf100.c_gf100_vmm_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_func = type { i32 }
%struct.nvkm_mmu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lock_class_key = type { i32 }
%struct.nvkm_vmm = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_vmm_new_(%struct.nvkm_vmm_func* %0, %struct.nvkm_vmm_func* %1, %struct.nvkm_mmu* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, %struct.lock_class_key* %8, i8* %9, %struct.nvkm_vmm** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_vmm_func*, align 8
  %14 = alloca %struct.nvkm_vmm_func*, align 8
  %15 = alloca %struct.nvkm_mmu*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.lock_class_key*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.nvkm_vmm**, align 8
  store %struct.nvkm_vmm_func* %0, %struct.nvkm_vmm_func** %13, align 8
  store %struct.nvkm_vmm_func* %1, %struct.nvkm_vmm_func** %14, align 8
  store %struct.nvkm_mmu* %2, %struct.nvkm_mmu** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store %struct.lock_class_key* %8, %struct.lock_class_key** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.nvkm_vmm** %10, %struct.nvkm_vmm*** %23, align 8
  %24 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %15, align 8
  %25 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %56 [
    i32 16, label %32
    i32 17, label %44
  ]

32:                                               ; preds = %11
  %33 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %13, align 8
  %34 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %15, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %18, align 4
  %38 = load i8*, i8** %19, align 8
  %39 = load i32, i32* %20, align 4
  %40 = load %struct.lock_class_key*, %struct.lock_class_key** %21, align 8
  %41 = load i8*, i8** %22, align 8
  %42 = load %struct.nvkm_vmm**, %struct.nvkm_vmm*** %23, align 8
  %43 = call i32 @nv04_vmm_new_(%struct.nvkm_vmm_func* %33, %struct.nvkm_mmu* %34, i32 0, i32 %35, i32 %36, i32 %37, i8* %38, i32 %39, %struct.lock_class_key* %40, i8* %41, %struct.nvkm_vmm** %42)
  store i32 %43, i32* %12, align 4
  br label %60

44:                                               ; preds = %11
  %45 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %14, align 8
  %46 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %15, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %18, align 4
  %50 = load i8*, i8** %19, align 8
  %51 = load i32, i32* %20, align 4
  %52 = load %struct.lock_class_key*, %struct.lock_class_key** %21, align 8
  %53 = load i8*, i8** %22, align 8
  %54 = load %struct.nvkm_vmm**, %struct.nvkm_vmm*** %23, align 8
  %55 = call i32 @nv04_vmm_new_(%struct.nvkm_vmm_func* %45, %struct.nvkm_mmu* %46, i32 0, i32 %47, i32 %48, i32 %49, i8* %50, i32 %51, %struct.lock_class_key* %52, i8* %53, %struct.nvkm_vmm** %54)
  store i32 %55, i32* %12, align 4
  br label %60

56:                                               ; preds = %11
  %57 = call i32 @WARN_ON(i32 1)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %44, %32
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

declare dso_local i32 @nv04_vmm_new_(%struct.nvkm_vmm_func*, %struct.nvkm_mmu*, i32, i32, i32, i32, i8*, i32, %struct.lock_class_key*, i8*, %struct.nvkm_vmm**) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
