; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_sparse_unref_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_sparse_unref_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { %struct.TYPE_2__*, %struct.nvkm_vmm_pt** }
%struct.TYPE_2__ = type { i64 }
%struct.nvkm_vmm_pt = type { i32*, i32* }

@PGD = common dso_local global i64 0, align 8
@LPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm_iter*, i32, i64, i64)* @nvkm_vmm_sparse_unref_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_sparse_unref_ptes(%struct.nvkm_vmm_iter* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.nvkm_vmm_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_vmm_pt*, align 8
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %10, i32 0, i32 1
  %12 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %11, align 8
  %13 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %12, i64 0
  %14 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %13, align 8
  store %struct.nvkm_vmm_pt* %14, %struct.nvkm_vmm_pt** %9, align 8
  %15 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PGD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %4
  %23 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %9, align 8
  %24 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i64, i64* %8, align 8
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32* %27, i32 0, i32 %30)
  br label %51

32:                                               ; preds = %4
  %33 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %34 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @LPT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %9, align 8
  %42 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i64, i64* %8, align 8
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memset(i32* %45, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %40, %32
  br label %51

51:                                               ; preds = %50, %22
  %52 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @nvkm_vmm_unref_ptes(%struct.nvkm_vmm_iter* %52, i32 %53, i64 %54, i64 %55)
  ret i32 %56
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nvkm_vmm_unref_ptes(%struct.nvkm_vmm_iter*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
