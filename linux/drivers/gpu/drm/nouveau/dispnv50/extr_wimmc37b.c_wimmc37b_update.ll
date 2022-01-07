; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wimmc37b.c_wimmc37b_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wimmc37b.c_wimmc37b_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NV50_DISP_INTERLOCK_WNDW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, i32*)* @wimmc37b_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wimmc37b_update(%struct.nv50_wndw* %0, i32* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(i32* %7, i32 2)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @evo_mthd(i32* %11, i32 512, i32 1)
  %13 = load i32*, i32** %4, align 8
  %14 = load i64, i64* @NV50_DISP_INTERLOCK_WNDW, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %18 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %10
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @evo_data(i32* %24, i32 3)
  br label %29

26:                                               ; preds = %10
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @evo_data(i32* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %32 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %31, i32 0, i32 0
  %33 = call i32 @evo_kick(i32* %30, i32* %32)
  br label %34

34:                                               ; preds = %29, %2
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
