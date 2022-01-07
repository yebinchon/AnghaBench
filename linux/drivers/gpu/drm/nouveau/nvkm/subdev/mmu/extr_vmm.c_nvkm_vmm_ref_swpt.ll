; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ref_swpt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ref_swpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { i32, i32, %struct.nvkm_vmm_desc* }
%struct.nvkm_vmm_desc = type { i32 }
%struct.nvkm_vmm_pt = type { %struct.nvkm_vmm_pt**, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm_iter*, %struct.nvkm_vmm_pt*, i64)* @nvkm_vmm_ref_swpt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_ref_swpt(%struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_pt* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_vmm_iter*, align 8
  %6 = alloca %struct.nvkm_vmm_pt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvkm_vmm_desc*, align 8
  %9 = alloca %struct.nvkm_vmm_pt*, align 8
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %5, align 8
  store %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_pt** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %10, i32 0, i32 2
  %12 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %13 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %14 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %12, i64 %17
  store %struct.nvkm_vmm_desc* %18, %struct.nvkm_vmm_desc** %8, align 8
  %19 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %20 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %19, i32 0, i32 0
  %21 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %21, i64 %22
  %24 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %23, align 8
  store %struct.nvkm_vmm_pt* %24, %struct.nvkm_vmm_pt** %9, align 8
  %25 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %26 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %9, align 8
  %27 = call i32 @NVKM_VMM_PDE_SPARSED(%struct.nvkm_vmm_pt* %26)
  %28 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %29 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.nvkm_vmm_pt* @nvkm_vmm_pt_new(%struct.nvkm_vmm_desc* %25, i32 %27, i32 %30)
  store %struct.nvkm_vmm_pt* %31, %struct.nvkm_vmm_pt** %9, align 8
  %32 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %9, align 8
  %33 = icmp ne %struct.nvkm_vmm_pt* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %3
  %35 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %36 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %5, align 8
  %43 = call i32 @nvkm_vmm_unref_pdes(%struct.nvkm_vmm_iter* %42)
  br label %44

44:                                               ; preds = %41, %34
  store i32 0, i32* %4, align 4
  br label %52

45:                                               ; preds = %3
  %46 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %9, align 8
  %47 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %6, align 8
  %48 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %47, i32 0, i32 0
  %49 = load %struct.nvkm_vmm_pt**, %struct.nvkm_vmm_pt*** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %49, i64 %50
  store %struct.nvkm_vmm_pt* %46, %struct.nvkm_vmm_pt** %51, align 8
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.nvkm_vmm_pt* @nvkm_vmm_pt_new(%struct.nvkm_vmm_desc*, i32, i32) #1

declare dso_local i32 @NVKM_VMM_PDE_SPARSED(%struct.nvkm_vmm_pt*) #1

declare dso_local i32 @nvkm_vmm_unref_pdes(%struct.nvkm_vmm_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
