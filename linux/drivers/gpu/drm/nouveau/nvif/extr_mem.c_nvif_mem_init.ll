; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_mem.c_nvif_mem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_mem.c_nvif_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_mmu = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nvif_mem = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_mem_init(%struct.nvif_mmu* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, %struct.nvif_mem* %7) #0 {
  %9 = alloca %struct.nvif_mmu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nvif_mem*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvif_mmu* %0, %struct.nvif_mmu** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.nvif_mem* %7, %struct.nvif_mem** %16, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %17, align 4
  %21 = load %struct.nvif_mem*, %struct.nvif_mem** %16, align 8
  %22 = getelementptr inbounds %struct.nvif_mem, %struct.nvif_mem* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  store i32 0, i32* %18, align 4
  br label %24

24:                                               ; preds = %59, %8
  %25 = load i32, i32* %17, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %18, align 4
  %29 = load %struct.nvif_mmu*, %struct.nvif_mmu** %9, align 8
  %30 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %62

35:                                               ; preds = %33
  %36 = load %struct.nvif_mmu*, %struct.nvif_mmu** %9, align 8
  %37 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %35
  %49 = load %struct.nvif_mmu*, %struct.nvif_mmu** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.nvif_mem*, %struct.nvif_mem** %16, align 8
  %57 = call i32 @nvif_mem_init_type(%struct.nvif_mmu* %49, i32 %50, i32 %51, i32 %52, i32 %53, i8* %54, i32 %55, %struct.nvif_mem* %56)
  store i32 %57, i32* %17, align 4
  br label %58

58:                                               ; preds = %48, %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %18, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %18, align 4
  br label %24

62:                                               ; preds = %33
  %63 = load i32, i32* %17, align 4
  ret i32 %63
}

declare dso_local i32 @nvif_mem_init_type(%struct.nvif_mmu*, i32, i32, i32, i32, i8*, i32, %struct.nvif_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
