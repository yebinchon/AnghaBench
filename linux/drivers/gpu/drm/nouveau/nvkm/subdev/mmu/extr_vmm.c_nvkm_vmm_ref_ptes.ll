; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ref_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ref_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_desc* }
%struct.nvkm_vmm_pt = type { i32* }
%struct.nvkm_vmm_desc = type { i32 }

@SPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm_iter*, i32, i32, i32)* @nvkm_vmm_ref_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_ref_ptes(%struct.nvkm_vmm_iter* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_vmm_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_vmm_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_vmm_pt*, align 8
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %12, i32 0, i32 1
  %14 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %13, align 8
  store %struct.nvkm_vmm_desc* %14, %struct.nvkm_vmm_desc** %9, align 8
  %15 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %9, align 8
  %16 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SPT, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %21, i32 0, i32 0
  %23 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %23, i64 0
  %25 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %24, align 8
  store %struct.nvkm_vmm_pt* %25, %struct.nvkm_vmm_pt** %11, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %11, align 8
  %28 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %26
  store i32 %34, i32* %32, align 4
  %35 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %9, align 8
  %36 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SPT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %4
  %41 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %42 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %11, align 8
  %43 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @nvkm_vmm_ref_sptes(%struct.nvkm_vmm_iter* %41, %struct.nvkm_vmm_pt* %42, %struct.nvkm_vmm_desc* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %4
  ret i32 1
}

declare dso_local i32 @nvkm_vmm_ref_sptes(%struct.nvkm_vmm_iter*, %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
