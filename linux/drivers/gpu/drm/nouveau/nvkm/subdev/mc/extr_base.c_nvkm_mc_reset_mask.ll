; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mc/extr_base.c_nvkm_mc_reset_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mc/extr_base.c_nvkm_mc_reset_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { %struct.nvkm_mc* }
%struct.nvkm_mc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_mc_map* }
%struct.nvkm_mc_map = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_device*, i32, i32)* @nvkm_mc_reset_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvkm_mc_reset_mask(%struct.nvkm_device* %0, i32 %1, i32 %2) #0 {
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
  store i64 0, i64* %9, align 8
  %13 = load %struct.nvkm_mc*, %struct.nvkm_mc** %7, align 8
  %14 = call i64 @likely(%struct.nvkm_mc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %62

16:                                               ; preds = %3
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @nvkm_top_reset(%struct.nvkm_device* %17, i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %61, label %21

21:                                               ; preds = %16
  %22 = load %struct.nvkm_mc*, %struct.nvkm_mc** %7, align 8
  %23 = getelementptr inbounds %struct.nvkm_mc, %struct.nvkm_mc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %25, align 8
  store %struct.nvkm_mc_map* %26, %struct.nvkm_mc_map** %8, align 8
  br label %27

27:                                               ; preds = %57, %21
  %28 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %29 = icmp ne %struct.nvkm_mc_map* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %32 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ false, %27 ], [ %34, %30 ]
  br i1 %36, label %37, label %60

37:                                               ; preds = %35
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %42 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %47 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %53 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  br label %60

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.nvkm_mc_map*, %struct.nvkm_mc_map** %8, align 8
  %59 = getelementptr inbounds %struct.nvkm_mc_map, %struct.nvkm_mc_map* %58, i32 1
  store %struct.nvkm_mc_map* %59, %struct.nvkm_mc_map** %8, align 8
  br label %27

60:                                               ; preds = %51, %35
  br label %61

61:                                               ; preds = %60, %16
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i64, i64* %9, align 8
  ret i64 %63
}

declare dso_local i64 @likely(%struct.nvkm_mc*) #1

declare dso_local i64 @nvkm_top_reset(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
