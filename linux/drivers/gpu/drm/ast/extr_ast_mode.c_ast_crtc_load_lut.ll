; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_load_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_crtc_load_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @ast_crtc_load_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ast_crtc_load_lut(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ast_private*, %struct.ast_private** %11, align 8
  store %struct.ast_private* %12, %struct.ast_private** %3, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %24 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  store i32* %33, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %53, %18
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 256
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  %42 = load i32, i32* %40, align 4
  %43 = ashr i32 %42, 8
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  %46 = load i32, i32* %44, align 4
  %47 = ashr i32 %46, 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  %50 = load i32, i32* %48, align 4
  %51 = ashr i32 %50, 8
  %52 = call i32 @ast_load_palette_index(%struct.ast_private* %38, i32 %39, i32 %43, i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %34

56:                                               ; preds = %17, %34
  ret void
}

declare dso_local i32 @ast_load_palette_index(%struct.ast_private*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
