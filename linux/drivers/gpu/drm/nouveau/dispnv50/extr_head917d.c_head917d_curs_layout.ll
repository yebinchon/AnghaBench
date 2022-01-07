; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head917d.c_head917d_curs_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head917d.c_head917d_curs_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @head917d_curs_layout(%struct.nv50_head* %0, %struct.nv50_wndw_atom* %1, %struct.nv50_head_atom* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_head*, align 8
  %6 = alloca %struct.nv50_wndw_atom*, align 8
  %7 = alloca %struct.nv50_head_atom*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %5, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %6, align 8
  store %struct.nv50_head_atom* %2, %struct.nv50_head_atom** %7, align 8
  %8 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %9 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %30 [
    i32 32, label %14
    i32 64, label %18
    i32 128, label %22
    i32 256, label %26
  ]

14:                                               ; preds = %3
  %15 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %16 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %20 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %24 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 2, i32* %25, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %28 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 3, i32* %29, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %26, %22, %18, %14
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
