; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_outp.c_nvkm_outp_xlat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_outp.c_nvkm_outp_xlat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_outp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DAC = common dso_local global i32 0, align 4
@CRT = common dso_local global i32 0, align 4
@TV = common dso_local global i32 0, align 4
@SOR = common dso_local global i32 0, align 4
@TMDS = common dso_local global i32 0, align 4
@LVDS = common dso_local global i32 0, align 4
@DP = common dso_local global i32 0, align 4
@PIOR = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_outp*, i32*)* @nvkm_outp_xlat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_outp_xlat(%struct.nvkm_outp* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_outp*, align 8
  %5 = alloca i32*, align 8
  store %struct.nvkm_outp* %0, %struct.nvkm_outp** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %7 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %52 [
    i32 0, label %10
    i32 1, label %37
  ]

10:                                               ; preds = %2
  %11 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %35 [
    i32 132, label %15
    i32 128, label %19
    i32 129, label %23
    i32 130, label %27
    i32 131, label %31
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* @DAC, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @CRT, align 4
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %10
  %20 = load i32, i32* @DAC, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @TV, align 4
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %10
  %24 = load i32, i32* @SOR, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @TMDS, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %10
  %28 = load i32, i32* @SOR, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @LVDS, align 4
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %10
  %32 = load i32, i32* @SOR, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @DP, align 4
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %10
  br label %36

36:                                               ; preds = %35
  br label %53

37:                                               ; preds = %2
  %38 = load %struct.nvkm_outp*, %struct.nvkm_outp** %4, align 8
  %39 = getelementptr inbounds %struct.nvkm_outp, %struct.nvkm_outp* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %50 [
    i32 129, label %42
    i32 131, label %46
  ]

42:                                               ; preds = %37
  %43 = load i32, i32* @PIOR, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @TMDS, align 4
  store i32 %45, i32* %3, align 4
  br label %56

46:                                               ; preds = %37
  %47 = load i32, i32* @PIOR, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @TMDS, align 4
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %51, %36
  %54 = call i32 @WARN_ON(i32 1)
  %55 = load i32, i32* @UNKNOWN, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %46, %42, %31, %27, %23, %19, %15
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
