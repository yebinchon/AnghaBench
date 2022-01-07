; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_mmu* }
%struct.nvkm_mmu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_mmu*, i32, i32, i32, i8*, i32, %struct.lock_class_key*, i8*, %struct.nvkm_vmm**)* }
%struct.lock_class_key = type { i32 }
%struct.nvkm_vmm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_vmm_new(%struct.nvkm_device* %0, i32 %1, i32 %2, i8* %3, i32 %4, %struct.lock_class_key* %5, i8* %6, %struct.nvkm_vmm** %7) #0 {
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.lock_class_key*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.nvkm_vmm**, align 8
  %17 = alloca %struct.nvkm_mmu*, align 8
  %18 = alloca %struct.nvkm_vmm*, align 8
  %19 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.lock_class_key* %5, %struct.lock_class_key** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.nvkm_vmm** %7, %struct.nvkm_vmm*** %16, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %21 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %20, i32 0, i32 0
  %22 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %21, align 8
  store %struct.nvkm_mmu* %22, %struct.nvkm_mmu** %17, align 8
  store %struct.nvkm_vmm* null, %struct.nvkm_vmm** %18, align 8
  %23 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %17, align 8
  %24 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.nvkm_mmu*, i32, i32, i32, i8*, i32, %struct.lock_class_key*, i8*, %struct.nvkm_vmm**)*, i32 (%struct.nvkm_mmu*, i32, i32, i32, i8*, i32, %struct.lock_class_key*, i8*, %struct.nvkm_vmm**)** %27, align 8
  %29 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %17, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.lock_class_key*, %struct.lock_class_key** %14, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = call i32 %28(%struct.nvkm_mmu* %29, i32 0, i32 %30, i32 %31, i8* %32, i32 %33, %struct.lock_class_key* %34, i8* %35, %struct.nvkm_vmm** %18)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %8
  %40 = call i32 @nvkm_vmm_unref(%struct.nvkm_vmm** %18)
  br label %41

41:                                               ; preds = %39, %8
  %42 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %18, align 8
  %43 = load %struct.nvkm_vmm**, %struct.nvkm_vmm*** %16, align 8
  store %struct.nvkm_vmm* %42, %struct.nvkm_vmm** %43, align 8
  %44 = load i32, i32* %19, align 4
  ret i32 %44
}

declare dso_local i32 @nvkm_vmm_unref(%struct.nvkm_vmm**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
