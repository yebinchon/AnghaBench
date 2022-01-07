; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc57e.c_wndwc57e_image_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc57e.c_wndwc57e_image_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @wndwc57e_image_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wndwc57e_image_set(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
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
  br label %151

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @evo_mthd(i32* %12, i32 776, i32 1)
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %16 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 4
  %20 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %19, %23
  %25 = call i32 @evo_data(i32* %14, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @evo_mthd(i32* %26, i32 548, i32 4)
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %30 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 16
  %34 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %35 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %33, %37
  %39 = call i32 @evo_data(i32* %28, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %42 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 4
  %46 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %47 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %45, %49
  %51 = call i32 @evo_data(i32* %40, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %54 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 8
  %58 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %59 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %57, %61
  %63 = call i32 @evo_data(i32* %52, i32 %62)
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %66 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 8
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %72 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 9
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 6
  %78 = or i32 %70, %77
  %79 = call i32 @evo_data(i32* %64, i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32 @evo_mthd(i32* %80, i32 576, i32 1)
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %84 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 10
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @evo_data(i32* %82, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @evo_mthd(i32* %90, i32 608, i32 1)
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %94 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 11
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 8
  %100 = call i32 @evo_data(i32* %92, i32 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @evo_mthd(i32* %101, i32 656, i32 1)
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %105 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = ashr i32 %107, 16
  %109 = shl i32 %108, 16
  %110 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %111 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 16
  %115 = or i32 %109, %114
  %116 = call i32 @evo_data(i32* %103, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @evo_mthd(i32* %117, i32 664, i32 1)
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %121 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = ashr i32 %123, 16
  %125 = shl i32 %124, 16
  %126 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %127 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %129, 16
  %131 = or i32 %125, %130
  %132 = call i32 @evo_data(i32* %119, i32 %131)
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @evo_mthd(i32* %133, i32 676, i32 1)
  %135 = load i32*, i32** %5, align 8
  %136 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %137 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %139, 16
  %141 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %142 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %140, %144
  %146 = call i32 @evo_data(i32* %135, i32 %145)
  %147 = load i32*, i32** %5, align 8
  %148 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %149 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %148, i32 0, i32 0
  %150 = call i32 @evo_kick(i32* %147, i32* %149)
  br label %151

151:                                              ; preds = %11, %10
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
