; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mc/extr_base.c_nvkm_mc_intr_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mc/extr_base.c_nvkm_mc_intr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_mc* }
%struct.nvkm_mc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_mc*, i64, i64)*, %struct.nvkm_mc_map* }
%struct.nvkm_mc_map = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_mc_intr_mask(%struct.nvkm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_mc*, align 8
  %8 = alloca %struct.nvkm_mc_map*, align 8
  %9 = alloca i64, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %11 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %10, i32 0, i32 0
  %12 = load %struct.nvkm_mc*, %struct.nvkm_mc** %11, align 8
  store %struct.nvkm_mc* %12, %struct.nvkm_mc** %7, align 8
  %13 = load %struct.nvkm_mc*, %struct.nvkm_mc** %7, align 8
  %14 = call i64 @likely(%struct.nvkm_mc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %3
  %17 = load %struct.nvkm_mc*, %struct.nvkm_mc** %7, align 8
  %18 = getelementptr inbounds %struct.nvkm_mc, %struct.nvkm_mc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.nvkm_mc*, i64, i64)*, i32 (%struct.nvkm_mc*, i64, i64)** %20, align 8
  %22 = icmp ne i32 (%struct.nvkm_mc*, i64, i64)* %21, null
  br i1 %22, label %23, label %72

23:                                               ; preds = %16
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @nvkm_top_intr_mask(%struct.nvkm_device* %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.nvkm_mc*, %struct.nvkm_mc** %7, align 8
  %28 = getelementptr inbounds %struct.nvkm_mc, %struct.nvkm_mc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %30, align 8
  store %struct.nvkm_mc_map* %31, %struct.nvkm_mc_map** %8, align 8
  br label %32

32:                                               ; preds = %53, %23
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %37 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi i1 [ false, %32 ], [ %39, %35 ]
  br i1 %41, label %42, label %56

42:                                               ; preds = %40
  %43 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %44 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %50 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %55 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %54, i32 1
  store %struct.nvkm_mc_map* %55, %struct.nvkm_mc_map** %8, align 8
  br label %32

56:                                               ; preds = %40
  %57 = load %struct.nvkm_mc*, %struct.nvkm_mc** %7, align 8
  %58 = getelementptr inbounds %struct.nvkm_mc, %struct.nvkm_mc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.nvkm_mc*, i64, i64)*, i32 (%struct.nvkm_mc*, i64, i64)** %60, align 8
  %62 = load %struct.nvkm_mc*, %struct.nvkm_mc** %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i64, i64* %9, align 8
  br label %69

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i64 [ %67, %66 ], [ 0, %68 ]
  %71 = call i32 %61(%struct.nvkm_mc* %62, i64 %63, i64 %70)
  br label %72

72:                                               ; preds = %69, %16, %3
  ret void
}

declare dso_local i64 @likely(%struct.nvkm_mc*) #1

declare dso_local i64 @nvkm_top_intr_mask(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
