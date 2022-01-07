; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ramht.c_nvkm_ramht_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ramht.c_nvkm_ramht_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ramht = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.nvkm_object = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_ramht_insert(%struct.nvkm_ramht* %0, %struct.nvkm_object* %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvkm_ramht*, align 8
  %9 = alloca %struct.nvkm_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.nvkm_ramht* %0, %struct.nvkm_ramht** %8, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %8, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @nvkm_ramht_search(%struct.nvkm_ramht* %16, i32 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %63

24:                                               ; preds = %6
  %25 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i64 @nvkm_ramht_hash(%struct.nvkm_ramht* %25, i32 %26, i64 %27)
  store i64 %28, i64* %15, align 8
  store i64 %28, i64* %14, align 8
  br label %29

29:                                               ; preds = %56, %24
  %30 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %8, align 8
  %31 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i64, i64* %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %8, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.nvkm_object*, %struct.nvkm_object** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @nvkm_ramht_update(%struct.nvkm_ramht* %39, i64 %40, %struct.nvkm_object* %41, i32 %42, i32 %43, i64 %44, i64 %45)
  store i32 %46, i32* %7, align 4
  br label %63

47:                                               ; preds = %29
  %48 = load i64, i64* %14, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %14, align 8
  %50 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %8, align 8
  %51 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i64 0, i64* %14, align 8
  br label %55

55:                                               ; preds = %54, %47
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %15, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %29, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @ENOSPC, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %38, %21
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i64 @nvkm_ramht_search(%struct.nvkm_ramht*, i32, i64) #1

declare dso_local i64 @nvkm_ramht_hash(%struct.nvkm_ramht*, i32, i64) #1

declare dso_local i32 @nvkm_ramht_update(%struct.nvkm_ramht*, i64, %struct.nvkm_object*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
