; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wimmc37b.c_wimmc37b_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wimmc37b.c_wimmc37b_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @wimmc37b_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wimmc37b_point(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %6 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(i32* %7, i32 2)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @evo_mthd(i32* %11, i32 520, i32 1)
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %15 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 16
  %19 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %18, %22
  %24 = call i32 @evo_data(i32* %13, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %27 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %26, i32 0, i32 0
  %28 = call i32 @evo_kick(i32* %25, i32* %27)
  br label %29

29:                                               ; preds = %10, %2
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
