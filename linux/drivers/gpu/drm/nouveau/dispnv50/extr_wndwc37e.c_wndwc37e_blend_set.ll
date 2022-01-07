; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc37e.c_wndwc37e_blend_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc37e.c_wndwc37e_blend_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wndwc37e_blend_set(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %6 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(i32* %7, i32 8)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %62

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @evo_mthd(i32* %11, i32 748, i32 7)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 4
  %19 = call i32 @evo_data(i32* %13, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %22 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @evo_data(i32* %20, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %28 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 12
  %32 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %33 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %31, %36
  %38 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %39 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 4
  %43 = or i32 %37, %42
  %44 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %45 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %43, %47
  %49 = call i32 @evo_data(i32* %26, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @evo_data(i32* %50, i32 -65536)
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @evo_data(i32* %52, i32 -65536)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @evo_data(i32* %54, i32 -65536)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @evo_data(i32* %56, i32 -65536)
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %60 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %59, i32 0, i32 0
  %61 = call i32 @evo_kick(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %10, %2
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
