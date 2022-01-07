; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv44.c_nv44_vmm_pgt_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmnv44.c_nv44_vmm_pgt_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_mmu_pt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm*, %struct.nvkm_mmu_pt*, i32*, i32, i32)* @nv44_vmm_pgt_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_vmm_pgt_fill(%struct.nvkm_vmm* %0, %struct.nvkm_mmu_pt* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nvkm_vmm*, align 8
  %7 = alloca %struct.nvkm_mmu_pt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %6, align 8
  store %struct.nvkm_mmu_pt* %1, %struct.nvkm_mmu_pt** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = shl i32 %14, 2
  %16 = and i32 %15, -16
  store i32 %16, i32* %11, align 4
  %17 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 0
  %22 = call i32 @nvkm_ro32(i32 %19, i32 %21)
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %25 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 4
  %29 = call i32 @nvkm_ro32(i32 %26, i32 %28)
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %32 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 8
  %36 = call i32 @nvkm_ro32(i32 %33, i32 %35)
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %39 = getelementptr inbounds %struct.nvkm_mmu_pt, %struct.nvkm_mmu_pt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 12
  %43 = call i32 @nvkm_ro32(i32 %40, i32 %42)
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %125, %5
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %10, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %126

49:                                               ; preds = %45
  %50 = load i32*, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %8, align 8
  %55 = load i32, i32* %53, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %58 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i32 [ %55, %52 ], [ %59, %56 ]
  %62 = ashr i32 %61, 12
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = and i32 %63, 3
  switch i32 %65, label %125 [
    i32 0, label %66
    i32 1, label %74
    i32 2, label %91
    i32 3, label %108
  ]

66:                                               ; preds = %60
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = and i32 %68, -134217728
  store i32 %69, i32* %67, align 16
  %70 = load i32, i32* %13, align 4
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 16
  br label %125

74:                                               ; preds = %60
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %76 = load i32, i32* %75, align 16
  %77 = and i32 %76, 134217727
  store i32 %77, i32* %75, align 16
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 %78, 27
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %81 = load i32, i32* %80, align 16
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 16
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, -4194304
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %13, align 4
  %87 = ashr i32 %86, 5
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %87
  store i32 %90, i32* %88, align 4
  br label %125

91:                                               ; preds = %60
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 4194303
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %13, align 4
  %96 = shl i32 %95, 22
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %101, -131072
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* %13, align 4
  %104 = ashr i32 %103, 10
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %104
  store i32 %107, i32* %105, align 8
  br label %125

108:                                              ; preds = %60
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 131071
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* %13, align 4
  %113 = shl i32 %112, 17
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 8
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, -4096
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* %13, align 4
  %121 = ashr i32 %120, 15
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %60, %108, %91, %74, %66
  br label %45

126:                                              ; preds = %45
  %127 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %128 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 0
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %132 = load i32, i32* %131, align 16
  %133 = call i32 @VMM_WO032(%struct.nvkm_mmu_pt* %127, %struct.nvkm_vmm* %128, i32 %130, i32 %132)
  %134 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %135 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @VMM_WO032(%struct.nvkm_mmu_pt* %134, %struct.nvkm_vmm* %135, i32 %137, i32 %139)
  %141 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %142 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 8
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @VMM_WO032(%struct.nvkm_mmu_pt* %141, %struct.nvkm_vmm* %142, i32 %144, i32 %146)
  %148 = load %struct.nvkm_mmu_pt*, %struct.nvkm_mmu_pt** %7, align 8
  %149 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 12
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, 1073741824
  %155 = call i32 @VMM_WO032(%struct.nvkm_mmu_pt* %148, %struct.nvkm_vmm* %149, i32 %151, i32 %154)
  ret void
}

declare dso_local i32 @nvkm_ro32(i32, i32) #1

declare dso_local i32 @VMM_WO032(%struct.nvkm_mmu_pt*, %struct.nvkm_vmm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
