; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc57e.c_wndwc57e_ilut_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndwc57e.c_wndwc57e_ilut_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_wndw*)* @wndwc57e_ilut_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wndwc57e_ilut_clr(%struct.nv50_wndw* %0) #0 {
  %2 = alloca %struct.nv50_wndw*, align 8
  %3 = alloca i32*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %2, align 8
  %4 = load %struct.nv50_wndw*, %struct.nv50_wndw** %2, align 8
  %5 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %4, i32 0, i32 0
  %6 = call i32* @evo_wait(i32* %5, i32 2)
  store i32* %6, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @evo_mthd(i32* %9, i32 1092, i32 1)
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @evo_data(i32* %11, i32 0)
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.nv50_wndw*, %struct.nv50_wndw** %2, align 8
  %15 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %14, i32 0, i32 0
  %16 = call i32 @evo_kick(i32* %13, i32* %15)
  br label %17

17:                                               ; preds = %8, %1
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
