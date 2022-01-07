; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_curs_layout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_head507d.c_head507d_curs_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_head = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nv50_head_atom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @head507d_curs_layout(%struct.nv50_head* %0, %struct.nv50_wndw_atom* %1, %struct.nv50_head_atom* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nv50_head*, align 8
  %6 = alloca %struct.nv50_wndw_atom*, align 8
  %7 = alloca %struct.nv50_head_atom*, align 8
  store %struct.nv50_head* %0, %struct.nv50_head** %5, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %6, align 8
  store %struct.nv50_head_atom* %2, %struct.nv50_head_atom** %7, align 8
  %8 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %6, align 8
  %9 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 32, label %12
    i32 64, label %16
  ]

12:                                               ; preds = %3
  %13 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %14 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %23

16:                                               ; preds = %3
  %17 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %7, align 8
  %18 = getelementptr inbounds %struct.nv50_head_atom, %struct.nv50_head_atom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %16, %12
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
