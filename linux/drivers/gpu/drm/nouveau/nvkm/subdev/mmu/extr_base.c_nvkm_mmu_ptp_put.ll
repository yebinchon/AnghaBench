; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_ptp_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_ptp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_mmu_pt = type { i32, i32, i32, i32, i32, i32, %struct.nvkm_mmu_pt* }
%struct.nvkm_mmu_ptp = type { i32, i32, i32, i32, i32, i32, %struct.nvkm_mmu_ptp* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_mmu*, i32, %struct.nvkm_mmu_pt*)* @nvkm_mmu_ptp_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_mmu_ptp_put(%struct.nvkm_mmu* %0, i32 %1, %struct.nvkm_mmu_pt* %2) #0 {
  %4 = alloca %struct.nvkm_mmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_mmu_pt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_mmu_ptp*, align 8
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_mmu_pt* %2, %struct.nvkm_mmu_pt** %6, align 8
  %9 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %10 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %12, i32 0, i32 6
  %14 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %11, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %19 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %18, i32 0, i32 6
  %20 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %19, align 8
  %21 = bitcast %struct.nvkm_mmu_pt* %20 to %struct.nvkm_mmu_ptp*
  store %struct.nvkm_mmu_ptp* %21, %struct.nvkm_mmu_ptp** %8, align 8
  %22 = load %struct.nvkm_mmu_ptp*, %struct.nvkm_mmu_ptp** %8, align 8
  %23 = getelementptr inbounds %struct.nvkm_mmu_ptp, %struct.nvkm_mmu_ptp* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load %struct.nvkm_mmu_ptp*, %struct.nvkm_mmu_ptp** %8, align 8
  %28 = getelementptr inbounds %struct.nvkm_mmu_ptp, %struct.nvkm_mmu_ptp* %27, i32 0, i32 2
  %29 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %30 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @list_add(i32* %28, i32* %31)
  br label %33

33:                                               ; preds = %26, %3
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = load %struct.nvkm_mmu_ptp*, %struct.nvkm_mmu_ptp** %8, align 8
  %37 = getelementptr inbounds %struct.nvkm_mmu_ptp, %struct.nvkm_mmu_ptp* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.nvkm_mmu_ptp*, %struct.nvkm_mmu_ptp** %8, align 8
  %41 = getelementptr inbounds %struct.nvkm_mmu_ptp, %struct.nvkm_mmu_ptp* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nvkm_mmu_ptp*, %struct.nvkm_mmu_ptp** %8, align 8
  %44 = getelementptr inbounds %struct.nvkm_mmu_ptp, %struct.nvkm_mmu_ptp* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %33
  %48 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.nvkm_mmu_ptp*, %struct.nvkm_mmu_ptp** %8, align 8
  %51 = getelementptr inbounds %struct.nvkm_mmu_ptp, %struct.nvkm_mmu_ptp* %50, i32 0, i32 3
  %52 = call i32 @nvkm_mmu_ptc_put(%struct.nvkm_mmu* %48, i32 %49, i32* %51)
  %53 = load %struct.nvkm_mmu_ptp*, %struct.nvkm_mmu_ptp** %8, align 8
  %54 = getelementptr inbounds %struct.nvkm_mmu_ptp, %struct.nvkm_mmu_ptp* %53, i32 0, i32 2
  %55 = call i32 @list_del(i32* %54)
  %56 = load %struct.nvkm_mmu_ptp*, %struct.nvkm_mmu_ptp** %8, align 8
  %57 = call i32 @kfree(%struct.nvkm_mmu_ptp* %56)
  br label %58

58:                                               ; preds = %47, %33
  %59 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %6, align 8
  %60 = bitcast %struct.nvkm_mmu_pt* %59 to %struct.nvkm_mmu_ptp*
  %61 = call i32 @kfree(%struct.nvkm_mmu_ptp* %60)
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nvkm_mmu_ptc_put(%struct.nvkm_mmu*, i32, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.nvkm_mmu_ptp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
