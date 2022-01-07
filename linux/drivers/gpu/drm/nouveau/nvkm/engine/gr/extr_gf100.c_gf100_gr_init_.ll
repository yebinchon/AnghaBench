; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_init_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gf100.c_gf100_gr_init_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.gf100_gr = type { %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_16__ }
%struct.TYPE_11__ = type { i32 (%struct.gf100_gr*)* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gr*)* @gf100_gr_init_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gf100_gr_init_(%struct.nvkm_gr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_gr*, align 8
  %4 = alloca %struct.gf100_gr*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %3, align 8
  %7 = load %struct.nvkm_gr*, %struct.nvkm_gr** %3, align 8
  %8 = call %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr* %7)
  store %struct.gf100_gr* %8, %struct.gf100_gr** %4, align 8
  %9 = load %struct.nvkm_gr*, %struct.nvkm_gr** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_gr, %struct.nvkm_gr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  store %struct.nvkm_subdev* %11, %struct.nvkm_subdev** %5, align 8
  %12 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %13 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nvkm_pmu_pgob(i32 %19, i32 0)
  %21 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %22 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %26 = call i32 @nvkm_falcon_get(i32 %24, %struct.nvkm_subdev* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %50

31:                                               ; preds = %1
  %32 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %33 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %37 = call i32 @nvkm_falcon_get(i32 %35, %struct.nvkm_subdev* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %50

42:                                               ; preds = %31
  %43 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %44 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %43, i32 0, i32 0
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32 (%struct.gf100_gr*)*, i32 (%struct.gf100_gr*)** %46, align 8
  %48 = load %struct.gf100_gr*, %struct.gf100_gr** %4, align 8
  %49 = call i32 %47(%struct.gf100_gr* %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %40, %29
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.gf100_gr* @gf100_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_pmu_pgob(i32, i32) #1

declare dso_local i32 @nvkm_falcon_get(i32, %struct.nvkm_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
