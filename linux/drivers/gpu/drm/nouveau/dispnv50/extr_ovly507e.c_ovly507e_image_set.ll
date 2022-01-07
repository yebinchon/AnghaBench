; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_ovly507e.c_ovly507e_image_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_ovly507e.c_ovly507e_image_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @ovly507e_image_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovly507e_image_set(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %6 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(i32* %7, i32 12)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %110

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @evo_mthd(i32* %11, i32 132, i32 1)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 4
  %19 = call i32 @evo_data(i32* %13, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @evo_mthd(i32* %20, i32 192, i32 1)
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %24 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @evo_data(i32* %22, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @evo_mthd(i32* %30, i32 256, i32 1)
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @evo_data(i32* %32, i32 2)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @evo_mthd(i32* %34, i32 2048, i32 1)
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %38 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 8
  %44 = call i32 @evo_data(i32* %36, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @evo_mthd(i32* %45, i32 2056, i32 3)
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %49 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %51, 16
  %53 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %54 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %52, %56
  %58 = call i32 @evo_data(i32* %47, i32 %57)
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %61 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 %63, 20
  %65 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %66 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 8
  %72 = shl i32 %71, 8
  %73 = or i32 %64, %72
  %74 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %75 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = or i32 %73, %80
  %82 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %83 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %81, %85
  %87 = call i32 @evo_data(i32* %59, i32 %86)
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %90 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 16
  %94 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %95 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 %97, 8
  %99 = or i32 %93, %98
  %100 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %101 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %99, %103
  %105 = call i32 @evo_data(i32* %88, i32 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %108 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %107, i32 0, i32 0
  %109 = call i32 @evo_kick(i32* %106, i32* %108)
  br label %110

110:                                              ; preds = %10, %2
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
