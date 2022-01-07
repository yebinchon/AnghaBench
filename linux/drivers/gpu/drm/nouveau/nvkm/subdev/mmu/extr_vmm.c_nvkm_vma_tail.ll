; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vma_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vma_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vma = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nvkm_vma* @nvkm_vma_tail(%struct.nvkm_vma* %0, i64 %1) #0 {
  %3 = alloca %struct.nvkm_vma*, align 8
  %4 = alloca %struct.nvkm_vma*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nvkm_vma*, align 8
  store %struct.nvkm_vma* %0, %struct.nvkm_vma** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %8 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub nsw i64 %19, %20
  %22 = add nsw i64 %16, %21
  %23 = load i64, i64* %5, align 8
  %24 = call %struct.nvkm_vma* @nvkm_vma_new(i64 %22, i64 %23)
  store %struct.nvkm_vma* %24, %struct.nvkm_vma** %6, align 8
  %25 = icmp ne %struct.nvkm_vma* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store %struct.nvkm_vma* null, %struct.nvkm_vma** %3, align 8
  br label %84

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %30 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %34 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %37 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %39 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %44 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %47 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %49 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %52 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %54 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %57 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %59 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %62 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %64 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %67 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %69 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %72 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %74 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %77 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %79 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %78, i32 0, i32 2
  %80 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %81 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %80, i32 0, i32 2
  %82 = call i32 @list_add(i32* %79, i32* %81)
  %83 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  store %struct.nvkm_vma* %83, %struct.nvkm_vma** %3, align 8
  br label %84

84:                                               ; preds = %27, %26
  %85 = load %struct.nvkm_vma*, %struct.nvkm_vma** %3, align 8
  ret %struct.nvkm_vma* %85
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.nvkm_vma* @nvkm_vma_new(i64, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
