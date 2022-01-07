; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_translate_encoder_to_transmitter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_translate_encoder_to_transmitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphics_object_id = type { i32, i32 }

@TRANSMITTER_UNIPHY_A = common dso_local global i32 0, align 4
@TRANSMITTER_UNIPHY_B = common dso_local global i32 0, align 4
@TRANSMITTER_UNKNOWN = common dso_local global i32 0, align 4
@TRANSMITTER_UNIPHY_C = common dso_local global i32 0, align 4
@TRANSMITTER_UNIPHY_D = common dso_local global i32 0, align 4
@TRANSMITTER_UNIPHY_E = common dso_local global i32 0, align 4
@TRANSMITTER_UNIPHY_F = common dso_local global i32 0, align 4
@TRANSMITTER_UNIPHY_G = common dso_local global i32 0, align 4
@TRANSMITTER_NUTMEG_CRT = common dso_local global i32 0, align 4
@TRANSMITTER_TRAVIS_CRT = common dso_local global i32 0, align 4
@TRANSMITTER_TRAVIS_LCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @translate_encoder_to_transmitter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_encoder_to_transmitter(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.graphics_object_id, align 4
  %4 = bitcast %struct.graphics_object_id* %3 to i64*
  store i64 %0, i64* %4, align 4
  %5 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %57 [
    i32 133, label %7
    i32 132, label %16
    i32 131, label %25
    i32 130, label %34
    i32 135, label %41
    i32 134, label %48
  ]

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %14 [
    i32 129, label %10
    i32 128, label %12
  ]

10:                                               ; preds = %7
  %11 = load i32, i32* @TRANSMITTER_UNIPHY_A, align 4
  store i32 %11, i32* %2, align 4
  br label %59

12:                                               ; preds = %7
  %13 = load i32, i32* @TRANSMITTER_UNIPHY_B, align 4
  store i32 %13, i32* %2, align 4
  br label %59

14:                                               ; preds = %7
  %15 = load i32, i32* @TRANSMITTER_UNKNOWN, align 4
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %21
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* @TRANSMITTER_UNIPHY_C, align 4
  store i32 %20, i32* %2, align 4
  br label %59

21:                                               ; preds = %16
  %22 = load i32, i32* @TRANSMITTER_UNIPHY_D, align 4
  store i32 %22, i32* %2, align 4
  br label %59

23:                                               ; preds = %16
  %24 = load i32, i32* @TRANSMITTER_UNKNOWN, align 4
  store i32 %24, i32* %2, align 4
  br label %59

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %32 [
    i32 129, label %28
    i32 128, label %30
  ]

28:                                               ; preds = %25
  %29 = load i32, i32* @TRANSMITTER_UNIPHY_E, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %25
  %31 = load i32, i32* @TRANSMITTER_UNIPHY_F, align 4
  store i32 %31, i32* %2, align 4
  br label %59

32:                                               ; preds = %25
  %33 = load i32, i32* @TRANSMITTER_UNKNOWN, align 4
  store i32 %33, i32* %2, align 4
  br label %59

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %39 [
    i32 129, label %37
  ]

37:                                               ; preds = %34
  %38 = load i32, i32* @TRANSMITTER_UNIPHY_G, align 4
  store i32 %38, i32* %2, align 4
  br label %59

39:                                               ; preds = %34
  %40 = load i32, i32* @TRANSMITTER_UNKNOWN, align 4
  store i32 %40, i32* %2, align 4
  br label %59

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %46 [
    i32 129, label %44
  ]

44:                                               ; preds = %41
  %45 = load i32, i32* @TRANSMITTER_NUTMEG_CRT, align 4
  store i32 %45, i32* %2, align 4
  br label %59

46:                                               ; preds = %41
  %47 = load i32, i32* @TRANSMITTER_UNKNOWN, align 4
  store i32 %47, i32* %2, align 4
  br label %59

48:                                               ; preds = %1
  %49 = getelementptr inbounds %struct.graphics_object_id, %struct.graphics_object_id* %3, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %55 [
    i32 129, label %51
    i32 128, label %53
  ]

51:                                               ; preds = %48
  %52 = load i32, i32* @TRANSMITTER_TRAVIS_CRT, align 4
  store i32 %52, i32* %2, align 4
  br label %59

53:                                               ; preds = %48
  %54 = load i32, i32* @TRANSMITTER_TRAVIS_LCD, align 4
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @TRANSMITTER_UNKNOWN, align 4
  store i32 %56, i32* %2, align 4
  br label %59

57:                                               ; preds = %1
  %58 = load i32, i32* @TRANSMITTER_UNKNOWN, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %55, %53, %51, %46, %44, %39, %37, %32, %30, %28, %23, %21, %19, %14, %12, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
