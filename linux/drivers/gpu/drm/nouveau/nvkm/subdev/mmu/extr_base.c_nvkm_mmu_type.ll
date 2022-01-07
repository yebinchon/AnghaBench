; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_base.c_nvkm_mmu_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_mmu*, i32, i32)* @nvkm_mmu_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_mmu_type(%struct.nvkm_mmu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_mmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %53

9:                                                ; preds = %3
  %10 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i64 @ARRAY_SIZE(%struct.TYPE_4__* %15)
  %17 = icmp eq i64 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %9
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %24 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %22, %30
  %32 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %33 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %36 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %31, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %45 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %40, i32* %48, align 4
  %49 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %4, align 8
  %50 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %21, %9, %3
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
