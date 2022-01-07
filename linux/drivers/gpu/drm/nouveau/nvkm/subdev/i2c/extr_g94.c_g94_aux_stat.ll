; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_g94.c_g94_aux_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/extr_g94.c_g94_aux_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_i2c = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g94_aux_stat(%struct.nvkm_i2c* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nvkm_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nvkm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_i2c* %0, %struct.nvkm_i2c** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %6, align 8
  %16 = getelementptr inbounds %struct.nvkm_i2c, %struct.nvkm_i2c* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %11, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 57452)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 57448)
  %23 = load i32, i32* %12, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load i32*, i32** %10, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 0, i32* %26, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %85, %5
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %88

32:                                               ; preds = %29
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %14, align 4
  %35 = mul nsw i32 %34, 4
  %36 = shl i32 1, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  %41 = shl i32 1, %40
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 %47, 4
  %49 = shl i32 2, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %14, align 4
  %54 = shl i32 1, %53
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %45
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 %60, 4
  %62 = shl i32 4, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* %14, align 4
  %67 = shl i32 1, %66
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %73, 4
  %75 = shl i32 8, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* %14, align 4
  %80 = shl i32 1, %79
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %71
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %29

88:                                               ; preds = %29
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @nvkm_wr32(%struct.nvkm_device* %89, i32 57452, i32 %90)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
