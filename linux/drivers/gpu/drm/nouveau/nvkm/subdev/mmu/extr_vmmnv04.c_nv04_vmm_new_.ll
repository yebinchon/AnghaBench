; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv04.c_nv04_vmm_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv04.c_nv04_vmm_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_func = type { i32 }
%struct.nvkm_mmu = type { i32 }
%struct.lock_class_key = type { i32 }
%struct.nvkm_vmm = type { i32 }
%union.anon = type { %struct.nv04_vmm_vn }
%struct.nv04_vmm_vn = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_vmm_new_(%struct.nvkm_vmm_func* %0, %struct.nvkm_mmu* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7, %struct.lock_class_key* %8, i8* %9, %struct.nvkm_vmm** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvkm_vmm_func*, align 8
  %14 = alloca %struct.nvkm_mmu*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.lock_class_key*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.nvkm_vmm**, align 8
  %24 = alloca %union.anon*, align 8
  %25 = alloca i32, align 4
  store %struct.nvkm_vmm_func* %0, %struct.nvkm_vmm_func** %13, align 8
  store %struct.nvkm_mmu* %1, %struct.nvkm_mmu** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i32 %7, i32* %20, align 4
  store %struct.lock_class_key* %8, %struct.lock_class_key** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.nvkm_vmm** %10, %struct.nvkm_vmm*** %23, align 8
  %26 = load i8*, i8** %19, align 8
  %27 = bitcast i8* %26 to %union.anon*
  store %union.anon* %27, %union.anon** %24, align 8
  %28 = load %struct.nvkm_vmm_func*, %struct.nvkm_vmm_func** %13, align 8
  %29 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %18, align 4
  %34 = load %struct.lock_class_key*, %struct.lock_class_key** %21, align 8
  %35 = load i8*, i8** %22, align 8
  %36 = load %struct.nvkm_vmm**, %struct.nvkm_vmm*** %23, align 8
  %37 = call i32 @nvkm_vmm_new_(%struct.nvkm_vmm_func* %28, %struct.nvkm_mmu* %29, i32 %30, i32 %31, i32 %32, i32 %33, %struct.lock_class_key* %34, i8* %35, %struct.nvkm_vmm** %36)
  store i32 %37, i32* %25, align 4
  %38 = load i32, i32* %25, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %11
  %41 = load i32, i32* %25, align 4
  store i32 %41, i32* %12, align 4
  br label %50

42:                                               ; preds = %11
  %43 = load i32, i32* @ENOSYS, align 4
  %44 = sub nsw i32 0, %43
  %45 = load %union.anon*, %union.anon** %24, align 8
  %46 = bitcast %union.anon* %45 to %struct.nv04_vmm_vn*
  %47 = getelementptr inbounds %struct.nv04_vmm_vn, %struct.nv04_vmm_vn* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nvif_unvers(i32 %44, i8** %19, i32* %20, i32 %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %42, %40
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

declare dso_local i32 @nvkm_vmm_new_(%struct.nvkm_vmm_func*, %struct.nvkm_mmu*, i32, i32, i32, i32, %struct.lock_class_key*, i8*, %struct.nvkm_vmm**) #1

declare dso_local i32 @nvif_unvers(i32, i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
