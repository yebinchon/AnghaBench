; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc37e.c_wndwc37e_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc37e.c_wndwc37e_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NV50_DISP_INTERLOCK_CURS = common dso_local global i64 0, align 8
@NV50_DISP_INTERLOCK_CORE = common dso_local global i64 0, align 8
@NV50_DISP_INTERLOCK_WNDW = common dso_local global i64 0, align 8
@NV50_DISP_INTERLOCK_WIMM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wndwc37e_update(%struct.nv50_wndw* %0, i32* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %6, i32 0, i32 0
  %8 = call i32* @evo_wait(i32* %7, i32 5)
  store i32* %8, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @evo_mthd(i32* %11, i32 880, i32 2)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* @NV50_DISP_INTERLOCK_CURS, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 1
  %19 = load i32*, i32** %4, align 8
  %20 = load i64, i64* @NV50_DISP_INTERLOCK_CORE, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %18, %22
  %24 = call i32 @evo_data(i32* %13, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i64, i64* @NV50_DISP_INTERLOCK_WNDW, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @evo_data(i32* %25, i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @evo_mthd(i32* %31, i32 512, i32 1)
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* @NV50_DISP_INTERLOCK_WIMM, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %38 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %36, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %10
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @evo_data(i32* %44, i32 4097)
  br label %49

46:                                               ; preds = %10
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @evo_data(i32* %47, i32 1)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %52 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %51, i32 0, i32 0
  %53 = call i32 @evo_kick(i32* %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %2
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
