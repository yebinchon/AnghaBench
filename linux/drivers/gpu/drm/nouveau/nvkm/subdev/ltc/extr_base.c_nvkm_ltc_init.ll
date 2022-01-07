; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_base.c_nvkm_ltc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_base.c_nvkm_ltc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { i32 }
%struct.nvkm_ltc = type { i32, i32, %struct.TYPE_2__*, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_ltc*)*, i32 (%struct.nvkm_ltc*, i32, i32)*, i32 (%struct.nvkm_ltc*, i32, i32)*, i32 (%struct.nvkm_ltc*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @nvkm_ltc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ltc_init(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_ltc*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %5 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %6 = call %struct.nvkm_ltc* @nvkm_ltc(%struct.nvkm_subdev* %5)
  store %struct.nvkm_ltc* %6, %struct.nvkm_ltc** %3, align 8
  %7 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %8 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %70, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %11, %14
  br i1 %15, label %16, label %73

16:                                               ; preds = %10
  %17 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32 (%struct.nvkm_ltc*, i32, i32)*, i32 (%struct.nvkm_ltc*, i32, i32)** %20, align 8
  %22 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %25 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %24, i32 0, i32 5
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 %21(%struct.nvkm_ltc* %22, i32 %23, i32 %30)
  %32 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32 (%struct.nvkm_ltc*, i32, i32)*, i32 (%struct.nvkm_ltc*, i32, i32)** %35, align 8
  %37 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %40 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %36(%struct.nvkm_ltc* %37, i32 %38, i32 %45)
  %47 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %48 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (%struct.nvkm_ltc*, i32, i32)*, i32 (%struct.nvkm_ltc*, i32, i32)** %50, align 8
  %52 = icmp ne i32 (%struct.nvkm_ltc*, i32, i32)* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %16
  %54 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %55 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (%struct.nvkm_ltc*, i32, i32)*, i32 (%struct.nvkm_ltc*, i32, i32)** %57, align 8
  %59 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %62 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %58(%struct.nvkm_ltc* %59, i32 %60, i32 %67)
  br label %69

69:                                               ; preds = %53, %16
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %10

73:                                               ; preds = %10
  %74 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %75 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32 (%struct.nvkm_ltc*)*, i32 (%struct.nvkm_ltc*)** %77, align 8
  %79 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %3, align 8
  %80 = call i32 %78(%struct.nvkm_ltc* %79)
  ret i32 0
}

declare dso_local %struct.nvkm_ltc* @nvkm_ltc(%struct.nvkm_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
