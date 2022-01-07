; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base907c.c_base907c_csc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_base907c.c_base907c_csc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_wndw = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.drm_color_ctm = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @base907c_csc(%struct.nv50_wndw* %0, %struct.nv50_wndw_atom* %1, %struct.drm_color_ctm* %2) #0 {
  %4 = alloca %struct.nv50_wndw*, align 8
  %5 = alloca %struct.nv50_wndw_atom*, align 8
  %6 = alloca %struct.drm_color_ctm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.nv50_wndw* %0, %struct.nv50_wndw** %4, align 8
  store %struct.nv50_wndw_atom* %1, %struct.nv50_wndw_atom** %5, align 8
  store %struct.drm_color_ctm* %2, %struct.drm_color_ctm** %6, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %50, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %53

13:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %5, align 8
  %19 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %22, 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %21, i64 %26
  store i64* %27, i64** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i64*, i64** %9, align 8
  store i64 0, i64* %31, align 8
  br label %45

32:                                               ; preds = %17
  %33 = load %struct.drm_color_ctm*, %struct.drm_color_ctm** %6, align 8
  %34 = getelementptr inbounds %struct.drm_color_ctm, %struct.drm_color_ctm* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 3
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @csc_drm_to_base(i32 %42)
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %32, %30
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %14

49:                                               ; preds = %14
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %10

53:                                               ; preds = %10
  ret void
}

declare dso_local i64 @csc_drm_to_base(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
