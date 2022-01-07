; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_check_acquire_yuv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_check_acquire_yuv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw_atom = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_wndw_atom*)* @nv50_wndw_atomic_check_acquire_yuv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_wndw_atomic_check_acquire_yuv(%struct.nv50_wndw_atom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nv50_wndw_atom*, align 8
  store %struct.nv50_wndw_atom* %0, %struct.nv50_wndw_atom** %3, align 8
  %4 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %5 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %20 [
    i32 128, label %12
    i32 129, label %16
  ]

12:                                               ; preds = %1
  %13 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %14 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 40, i32* %15, align 8
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %18 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 41, i32* %19, align 8
  br label %24

20:                                               ; preds = %1
  %21 = call i32 @WARN_ON(i32 1)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %16, %12
  %25 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %26 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
