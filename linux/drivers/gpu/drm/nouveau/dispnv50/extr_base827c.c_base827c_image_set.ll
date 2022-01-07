; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base827c.c_base827c_image_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base827c.c_base827c_image_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32*, i32, i32, i32, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @base827c_image_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base827c_image_set(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %6 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(i32* %7, i32 13)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %121

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
  %36 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %37 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 202
  br i1 %40, label %41, label %48

41:                                               ; preds = %10
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @evo_mthd(i32* %42, i32 272, i32 2)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @evo_data(i32* %44, i32 1)
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @evo_data(i32* %46, i32 25600)
  br label %55

48:                                               ; preds = %10
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @evo_mthd(i32* %49, i32 272, i32 2)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @evo_data(i32* %51, i32 0)
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @evo_data(i32* %53, i32 0)
  br label %55

55:                                               ; preds = %48, %41
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @evo_mthd(i32* %56, i32 2048, i32 5)
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %60 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = call i32 @evo_data(i32* %58, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @evo_data(i32* %67, i32 0)
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %71 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 16
  %75 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %76 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %74, %78
  %80 = call i32 @evo_data(i32* %69, i32 %79)
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %83 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = shl i32 %85, 20
  %87 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %88 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 8
  %94 = shl i32 %93, 8
  %95 = or i32 %86, %94
  %96 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %97 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = or i32 %95, %102
  %104 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %105 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %103, %107
  %109 = call i32 @evo_data(i32* %81, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %112 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %114, 8
  %116 = call i32 @evo_data(i32* %110, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %119 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %118, i32 0, i32 0
  %120 = call i32 @evo_kick(i32* %117, i32* %119)
  br label %121

121:                                              ; preds = %55, %2
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
