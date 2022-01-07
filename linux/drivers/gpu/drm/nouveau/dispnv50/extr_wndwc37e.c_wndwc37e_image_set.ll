; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc37e.c_wndwc37e_image_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc37e.c_wndwc37e_image_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @wndwc37e_image_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wndwc37e_image_set(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %6 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(i32* %7, i32 17)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %157

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @evo_mthd(i32* %12, i32 776, i32 1)
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %16 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 4
  %20 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %19, %23
  %25 = call i32 @evo_data(i32* %14, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @evo_mthd(i32* %26, i32 548, i32 4)
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %30 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 16
  %34 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %35 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %33, %37
  %39 = call i32 @evo_data(i32* %28, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %42 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 4
  %46 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %47 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %45, %49
  %51 = call i32 @evo_data(i32* %40, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %54 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 17
  %58 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %59 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = shl i32 %61, 8
  %63 = or i32 %57, %62
  %64 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %65 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %63, %67
  %69 = call i32 @evo_data(i32* %52, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %72 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 8
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %78 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 9
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 6
  %84 = or i32 %76, %83
  %85 = call i32 @evo_data(i32* %70, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @evo_mthd(i32* %86, i32 576, i32 1)
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %90 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 10
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @evo_data(i32* %88, i32 %94)
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @evo_mthd(i32* %96, i32 608, i32 1)
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %100 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 11
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = ashr i32 %104, 8
  %106 = call i32 @evo_data(i32* %98, i32 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = call i32 @evo_mthd(i32* %107, i32 656, i32 1)
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %111 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = ashr i32 %113, 16
  %115 = shl i32 %114, 16
  %116 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %117 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 16
  %121 = or i32 %115, %120
  %122 = call i32 @evo_data(i32* %109, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @evo_mthd(i32* %123, i32 664, i32 1)
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %127 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = ashr i32 %129, 16
  %131 = shl i32 %130, 16
  %132 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %133 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 16
  %137 = or i32 %131, %136
  %138 = call i32 @evo_data(i32* %125, i32 %137)
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @evo_mthd(i32* %139, i32 676, i32 1)
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %143 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %145, 16
  %147 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %148 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %146, %150
  %152 = call i32 @evo_data(i32* %141, i32 %151)
  %153 = load i32*, i32** %5, align 8
  %154 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %155 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %154, i32 0, i32 0
  %156 = call i32 @evo_kick(i32* %153, i32* %155)
  br label %157

157:                                              ; preds = %11, %10
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
