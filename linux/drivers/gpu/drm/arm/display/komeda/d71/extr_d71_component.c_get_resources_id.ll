; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_get_resources_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/d71/extr_d71_component.c_get_resources_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KOMEDA_COMPONENT_WB_LAYER = common dso_local global i32 0, align 4
@KOMEDA_COMPONENT_SPLITTER = common dso_local global i32 0, align 4
@D71_PIPELINE_MAX_SCALERS = common dso_local global i32 0, align 4
@KOMEDA_COMPONENT_SCALER0 = common dso_local global i32 0, align 4
@KOMEDA_COMPONENT_COMPIZ0 = common dso_local global i32 0, align 4
@D71_PIPELINE_MAX_LAYERS = common dso_local global i32 0, align 4
@KOMEDA_COMPONENT_LAYER0 = common dso_local global i32 0, align 4
@KOMEDA_COMPONENT_IPS0 = common dso_local global i32 0, align 4
@KOMEDA_COMPONENT_MERGER = common dso_local global i32 0, align 4
@KOMEDA_COMPONENT_TIMING_CTRLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @get_resources_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_resources_id(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @BLOCK_INFO_BLK_ID(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @BLOCK_INFO_BLK_TYPE(i32 %12)
  switch i32 %13, label %50 [
    i32 128, label %14
    i32 132, label %16
    i32 133, label %18
    i32 135, label %28
    i32 129, label %32
    i32 130, label %42
    i32 134, label %46
    i32 131, label %48
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @KOMEDA_COMPONENT_WB_LAYER, align 4
  store i32 %15, i32* %7, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load i32, i32* @KOMEDA_COMPONENT_SPLITTER, align 4
  store i32 %17, i32* %7, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @D71_PIPELINE_MAX_SCALERS, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @D71_PIPELINE_MAX_SCALERS, align 4
  %23 = load i32, i32* %7, align 4
  %24 = srem i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @KOMEDA_COMPONENT_SCALER0, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %51

28:                                               ; preds = %3
  %29 = load i32, i32* @KOMEDA_COMPONENT_COMPIZ0, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %51

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @D71_PIPELINE_MAX_LAYERS, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @D71_PIPELINE_MAX_LAYERS, align 4
  %37 = load i32, i32* %7, align 4
  %38 = srem i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @KOMEDA_COMPONENT_LAYER0, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %51

42:                                               ; preds = %3
  %43 = load i32, i32* @KOMEDA_COMPONENT_IPS0, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %51

46:                                               ; preds = %3
  %47 = load i32, i32* @KOMEDA_COMPONENT_MERGER, align 4
  store i32 %47, i32* %7, align 4
  br label %51

48:                                               ; preds = %3
  %49 = load i32, i32* @KOMEDA_COMPONENT_TIMING_CTRLR, align 4
  store i32 %49, i32* %7, align 4
  br label %51

50:                                               ; preds = %3
  store i32 -1, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %48, %46, %42, %32, %28, %18, %16, %14
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @BLOCK_INFO_BLK_ID(i32) #1

declare dso_local i32 @BLOCK_INFO_BLK_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
