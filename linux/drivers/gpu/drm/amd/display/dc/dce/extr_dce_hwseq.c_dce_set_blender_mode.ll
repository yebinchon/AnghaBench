; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_hwseq.c_dce_set_blender_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_hwseq.c_dce_set_blender_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BLND_CONTROL = common dso_local global i32* null, align 8
@BLNDV_CONTROL = common dso_local global i32 0, align 4
@BLND_MODE = common dso_local global i32 0, align 4
@BLND_FEEDTHROUGH_EN = common dso_local global i32 0, align 4
@BLND_ALPHA_MODE = common dso_local global i32 0, align 4
@BLND_MULTIPLIED_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_set_blender_mode(%struct.dce_hwseq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dce_hwseq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %15 [
    i32 128, label %12
    i32 130, label %13
    i32 129, label %14
  ]

12:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %30

13:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  store i32 2, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %30

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %3, %14
  %16 = load i32*, i32** @BLND_CONTROL, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REG(i32 %20)
  %22 = load i32, i32* @BLNDV_CONTROL, align 4
  %23 = call i32 @REG(i32 %22)
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %15
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %13, %12
  %31 = load i32*, i32** @BLND_CONTROL, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BLND_MODE, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @REG_UPDATE(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.dce_hwseq*, %struct.dce_hwseq** %4, align 8
  %40 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %30
  %46 = load i32*, i32** @BLND_CONTROL, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BLND_FEEDTHROUGH_EN, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BLND_ALPHA_MODE, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @BLND_MULTIPLIED_MODE, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @REG_UPDATE_3(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %45, %30
  ret void
}

declare dso_local i32 @REG(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
