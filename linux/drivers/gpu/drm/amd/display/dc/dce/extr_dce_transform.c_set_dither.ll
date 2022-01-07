; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_set_dither.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_set_dither.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { i32 }

@DCP_SPATIAL_DITHER_CNTL = common dso_local global i32 0, align 4
@DCP_SPATIAL_DITHER_EN = common dso_local global i32 0, align 4
@DCP_SPATIAL_DITHER_MODE = common dso_local global i32 0, align 4
@DCP_SPATIAL_DITHER_DEPTH = common dso_local global i32 0, align 4
@DCP_FRAME_RANDOM_ENABLE = common dso_local global i32 0, align 4
@DCP_RGB_RANDOM_ENABLE = common dso_local global i32 0, align 4
@DCP_HIGHPASS_RANDOM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, i32, i32, i32, i32, i32, i32)* @set_dither to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dither(%struct.dce_transform* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.dce_transform*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %22 [
    i32 131, label %18
    i32 128, label %19
    i32 130, label %20
    i32 129, label %21
  ]

18:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %24

19:                                               ; preds = %7
  store i32 1, i32* %16, align 4
  br label %24

20:                                               ; preds = %7
  store i32 2, i32* %16, align 4
  br label %24

21:                                               ; preds = %7
  store i32 3, i32* %16, align 4
  br label %24

22:                                               ; preds = %7
  %23 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %24

24:                                               ; preds = %22, %21, %20, %19, %18
  %25 = load i32, i32* %11, align 4
  switch i32 %25, label %28 [
    i32 132, label %26
    i32 133, label %27
  ]

26:                                               ; preds = %24
  store i32 0, i32* %15, align 4
  br label %30

27:                                               ; preds = %24
  store i32 1, i32* %15, align 4
  br label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %30

30:                                               ; preds = %28, %27, %26
  %31 = load i32, i32* @DCP_SPATIAL_DITHER_CNTL, align 4
  %32 = load i32, i32* @DCP_SPATIAL_DITHER_EN, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @DCP_SPATIAL_DITHER_MODE, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @DCP_SPATIAL_DITHER_DEPTH, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @DCP_FRAME_RANDOM_ENABLE, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @DCP_RGB_RANDOM_ENABLE, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @DCP_HIGHPASS_RANDOM_ENABLE, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @REG_SET_6(i32 %31, i32 0, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @REG_SET_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
