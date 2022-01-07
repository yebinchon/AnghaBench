; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_lut.c_nv50_lut_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_lut.c_nv50_lut_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.nvif_mmu = type { i32 }
%struct.nv50_lut = type { i32* }

@GF110_DISP = common dso_local global i64 0, align 8
@NVIF_MEM_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_lut_init(%struct.nv50_disp* %0, %struct.nvif_mmu* %1, %struct.nv50_lut* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_disp*, align 8
  %6 = alloca %struct.nvif_mmu*, align 8
  %7 = alloca %struct.nv50_lut*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nv50_disp* %0, %struct.nv50_disp** %5, align 8
  store %struct.nvif_mmu* %1, %struct.nvif_mmu** %6, align 8
  store %struct.nv50_lut* %2, %struct.nv50_lut** %7, align 8
  %11 = load %struct.nv50_disp*, %struct.nv50_disp** %5, align 8
  %12 = getelementptr inbounds %struct.nv50_disp, %struct.nv50_disp* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GF110_DISP, align 8
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 257, i32 1025
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %45, %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.nv50_lut*, %struct.nv50_lut** %7, align 8
  %24 = getelementptr inbounds %struct.nv50_lut, %struct.nv50_lut* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %21
  %29 = load %struct.nvif_mmu*, %struct.nvif_mmu** %6, align 8
  %30 = load i32, i32* @NVIF_MEM_VRAM, align 4
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %31, 8
  %33 = load %struct.nv50_lut*, %struct.nv50_lut** %7, align 8
  %34 = getelementptr inbounds %struct.nv50_lut, %struct.nv50_lut* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @nvif_mem_init_map(%struct.nvif_mmu* %29, i32 %30, i32 %32, i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %21

48:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @nvif_mem_init_map(%struct.nvif_mmu*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
