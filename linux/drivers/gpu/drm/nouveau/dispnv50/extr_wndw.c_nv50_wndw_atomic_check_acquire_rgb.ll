; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_check_acquire_rgb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_atomic_check_acquire_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw_atom = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_wndw_atom*)* @nv50_wndw_atomic_check_acquire_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_wndw_atomic_check_acquire_rgb(%struct.nv50_wndw_atom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nv50_wndw_atom*, align 8
  store %struct.nv50_wndw_atom* %0, %struct.nv50_wndw_atom** %3, align 8
  %4 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %5 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %44 [
    i32 135, label %12
    i32 128, label %16
    i32 136, label %16
    i32 134, label %20
    i32 130, label %24
    i32 138, label %24
    i32 132, label %28
    i32 140, label %28
    i32 131, label %32
    i32 139, label %32
    i32 129, label %36
    i32 137, label %36
    i32 133, label %40
    i32 141, label %40
  ]

12:                                               ; preds = %1
  %13 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %14 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 30, i32* %15, align 8
  br label %47

16:                                               ; preds = %1, %1
  %17 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %18 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 207, i32* %19, align 8
  br label %47

20:                                               ; preds = %1
  %21 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %22 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 232, i32* %23, align 8
  br label %47

24:                                               ; preds = %1, %1
  %25 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %26 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32 233, i32* %27, align 8
  br label %47

28:                                               ; preds = %1, %1
  %29 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %30 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 209, i32* %31, align 8
  br label %47

32:                                               ; preds = %1, %1
  %33 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %34 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 213, i32* %35, align 8
  br label %47

36:                                               ; preds = %1, %1
  %37 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %38 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 223, i32* %39, align 8
  br label %47

40:                                               ; preds = %1, %1
  %41 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %42 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 202, i32* %43, align 8
  br label %47

44:                                               ; preds = %1
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %40, %36, %32, %28, %24, %20, %16, %12
  %48 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %3, align 8
  %49 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
