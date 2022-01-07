; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base907c.c_base907c_image_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base907c.c_base907c_image_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32, i32, i32, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @base907c_image_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base907c_image_set(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %6 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(i32* %7, i32 10)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %101

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @evo_mthd(i32* %11, i32 132, i32 1)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 8
  %19 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 4
  %24 = or i32 %18, %23
  %25 = call i32 @evo_data(i32* %13, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @evo_mthd(i32* %26, i32 192, i32 1)
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %30 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @evo_data(i32* %28, i32 %34)
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @evo_mthd(i32* %36, i32 1024, i32 5)
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %40 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = call i32 @evo_data(i32* %38, i32 %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @evo_data(i32* %47, i32 0)
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %51 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 %53, 16
  %55 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %56 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %54, %58
  %60 = call i32 @evo_data(i32* %49, i32 %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %63 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 24
  %67 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %68 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %72, 8
  %74 = shl i32 %73, 8
  %75 = or i32 %66, %74
  %76 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %77 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %75, %82
  %84 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %85 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %83, %87
  %89 = call i32 @evo_data(i32* %61, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %92 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = call i32 @evo_data(i32* %90, i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %99 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %98, i32 0, i32 0
  %100 = call i32 @evo_kick(i32* %97, i32* %99)
  br label %101

101:                                              ; preds = %10, %2
  ret void
}

declare dso_local i32* @evo_wait(i32*, i32) #1

declare dso_local i32 @evo_mthd(i32*, i32, i32) #1

declare dso_local i32 @evo_data(i32*, i32) #1

declare dso_local i32 @evo_kick(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
