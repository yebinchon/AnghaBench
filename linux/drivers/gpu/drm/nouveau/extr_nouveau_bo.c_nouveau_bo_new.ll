; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nouveau_bo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_cli = type { i32 }
%struct.sg_table = type { i32 }
%struct.dma_resv = type { i32 }
%struct.nouveau_bo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_bo_new(%struct.nouveau_cli* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.sg_table* %6, %struct.dma_resv* %7, %struct.nouveau_bo** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_cli*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.sg_table*, align 8
  %18 = alloca %struct.dma_resv*, align 8
  %19 = alloca %struct.nouveau_bo**, align 8
  %20 = alloca %struct.nouveau_bo*, align 8
  %21 = alloca i32, align 4
  store %struct.nouveau_cli* %0, %struct.nouveau_cli** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.sg_table* %6, %struct.sg_table** %17, align 8
  store %struct.dma_resv* %7, %struct.dma_resv** %18, align 8
  store %struct.nouveau_bo** %8, %struct.nouveau_bo*** %19, align 8
  %22 = load %struct.nouveau_cli*, %struct.nouveau_cli** %11, align 8
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call %struct.nouveau_bo* @nouveau_bo_alloc(%struct.nouveau_cli* %22, i32* %12, i32* %13, i32 %23, i32 %24, i32 %25)
  store %struct.nouveau_bo* %26, %struct.nouveau_bo** %20, align 8
  %27 = load %struct.nouveau_bo*, %struct.nouveau_bo** %20, align 8
  %28 = call i64 @IS_ERR(%struct.nouveau_bo* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %9
  %31 = load %struct.nouveau_bo*, %struct.nouveau_bo** %20, align 8
  %32 = call i32 @PTR_ERR(%struct.nouveau_bo* %31)
  store i32 %32, i32* %10, align 4
  br label %48

33:                                               ; preds = %9
  %34 = load %struct.nouveau_bo*, %struct.nouveau_bo** %20, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load %struct.sg_table*, %struct.sg_table** %17, align 8
  %39 = load %struct.dma_resv*, %struct.dma_resv** %18, align 8
  %40 = call i32 @nouveau_bo_init(%struct.nouveau_bo* %34, i32 %35, i32 %36, i32 %37, %struct.sg_table* %38, %struct.dma_resv* %39)
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %21, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %21, align 4
  store i32 %44, i32* %10, align 4
  br label %48

45:                                               ; preds = %33
  %46 = load %struct.nouveau_bo*, %struct.nouveau_bo** %20, align 8
  %47 = load %struct.nouveau_bo**, %struct.nouveau_bo*** %19, align 8
  store %struct.nouveau_bo* %46, %struct.nouveau_bo** %47, align 8
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %43, %30
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local %struct.nouveau_bo* @nouveau_bo_alloc(%struct.nouveau_cli*, i32*, i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nouveau_bo*) #1

declare dso_local i32 @PTR_ERR(%struct.nouveau_bo*) #1

declare dso_local i32 @nouveau_bo_init(%struct.nouveau_bo*, i32, i32, i32, %struct.sg_table*, %struct.dma_resv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
