; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base907c.c_base907c_csc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base907c.c_base907c_csc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @base907c_csc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @base907c_csc_set(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
  %3 = alloca %struct.nv50_wndw*, align 8
  %4 = alloca %struct.nv50_wndw_atom*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %3, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %4, align 8
  %7 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %8 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %7, i32 0, i32 0
  %9 = call i32* @evo_wait(i32* %8, i32 13)
  store i32* %9, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @evo_mthd(i32* %12, i32 320, i32 12)
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %16 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, -2147483648
  %22 = call i32 @evo_data(i32* %14, i32 %21)
  store i32 1, i32* %6, align 4
  br label %23

23:                                               ; preds = %37, %11
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 12
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %29 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @evo_data(i32* %27, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %43 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %42, i32 0, i32 0
  %44 = call i32 @evo_kick(i32* %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %2
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
