; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc57e.c_wndwc57e_csc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc57e.c_wndwc57e_csc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*, %struct.nv50_wndw_atom*)* @wndwc57e_csc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wndwc57e_csc_set(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1) #0 {
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
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @evo_mthd(i32* %12, i32 1024, i32 12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %28, %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 12
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %4, align 8
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @evo_data(i32* %18, i32 %26)
  br label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.nv50_wndw*, %struct.nv50_wndw** %3, align 8
  %34 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %33, i32 0, i32 0
  %35 = call i32 @evo_kick(i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %31, %2
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
