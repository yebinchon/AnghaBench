; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgv100.c_gv100_vmm_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmmgv100.c_gv100_vmm_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { i32 }
%struct.nvkm_memory = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv100_vmm_join(%struct.nvkm_vmm* %0, %struct.nvkm_memory* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_vmm*, align 8
  %5 = alloca %struct.nvkm_memory*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %4, align 8
  store %struct.nvkm_memory* %1, %struct.nvkm_memory** %5, align 8
  %10 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %4, align 8
  %11 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %12 = call i32 @gp100_vmm_join(%struct.nvkm_vmm* %10, %struct.nvkm_memory* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %19 = call i32 @nvkm_kmap(%struct.nvkm_memory* %18)
  %20 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %21 = call i32 @nvkm_ro32(%struct.nvkm_memory* %20, i32 512)
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %24 = call i32 @nvkm_ro32(%struct.nvkm_memory* %23, i32 516)
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = call i32 @BIT_ULL(i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %28 = call i32 @nvkm_wo32(%struct.nvkm_memory* %27, i32 540, i32 0)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %70, %17
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 64
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @BIT_ULL(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %40, 16
  %42 = add nsw i32 676, %41
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nvkm_wo32(%struct.nvkm_memory* %39, i32 %42, i32 %44)
  %46 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 %47, 16
  %49 = add nsw i32 672, %48
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nvkm_wo32(%struct.nvkm_memory* %46, i32 %49, i32 %51)
  br label %64

53:                                               ; preds = %32
  %54 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, 16
  %57 = add nsw i32 676, %56
  %58 = call i32 @nvkm_wo32(%struct.nvkm_memory* %54, i32 %57, i32 1)
  %59 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %60, 16
  %62 = add nsw i32 672, %61
  %63 = call i32 @nvkm_wo32(%struct.nvkm_memory* %59, i32 %62, i32 1)
  br label %64

64:                                               ; preds = %53, %38
  %65 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 16
  %68 = add nsw i32 680, %67
  %69 = call i32 @nvkm_wo32(%struct.nvkm_memory* %65, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %29

73:                                               ; preds = %29
  %74 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @lower_32_bits(i32 %75)
  %77 = call i32 @nvkm_wo32(%struct.nvkm_memory* %74, i32 664, i32 %76)
  %78 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @upper_32_bits(i32 %79)
  %81 = call i32 @nvkm_wo32(%struct.nvkm_memory* %78, i32 668, i32 %80)
  %82 = load %struct.nvkm_memory*, %struct.nvkm_memory** %5, align 8
  %83 = call i32 @nvkm_done(%struct.nvkm_memory* %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %73, %15
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @gp100_vmm_join(%struct.nvkm_vmm*, %struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_ro32(%struct.nvkm_memory*, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_memory*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
