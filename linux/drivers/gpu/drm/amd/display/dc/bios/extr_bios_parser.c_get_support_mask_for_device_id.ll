; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_get_support_mask_for_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser.c_get_support_mask_for_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_id = type { i32, i32 }

@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP3_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP4_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP5_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_DFP6_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_support_mask_for_device_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_support_mask_for_device_id(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_id, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.device_id* %3 to i64*
  store i64 %0, i64* %6, align 4
  %7 = getelementptr inbounds %struct.device_id, %struct.device_id* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = getelementptr inbounds %struct.device_id, %struct.device_id* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %56 [
    i32 129, label %12
    i32 132, label %20
    i32 130, label %28
    i32 131, label %44
    i32 128, label %50
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %18 [
    i32 1, label %14
    i32 2, label %16
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %12
  %17 = load i32, i32* @ATOM_DEVICE_LCD2_SUPPORT, align 4
  store i32 %17, i32* %2, align 4
  br label %58

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  br label %57

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %26 [
    i32 1, label %22
    i32 2, label %24
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %20
  %25 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  br label %57

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  switch i32 %29, label %42 [
    i32 1, label %30
    i32 2, label %32
    i32 3, label %34
    i32 4, label %36
    i32 5, label %38
    i32 6, label %40
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  store i32 %31, i32* %2, align 4
  br label %58

32:                                               ; preds = %28
  %33 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %28
  %35 = load i32, i32* @ATOM_DEVICE_DFP3_SUPPORT, align 4
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %28
  %37 = load i32, i32* @ATOM_DEVICE_DFP4_SUPPORT, align 4
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %28
  %39 = load i32, i32* @ATOM_DEVICE_DFP5_SUPPORT, align 4
  store i32 %39, i32* %2, align 4
  br label %58

40:                                               ; preds = %28
  %41 = load i32, i32* @ATOM_DEVICE_DFP6_SUPPORT, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42
  br label %57

44:                                               ; preds = %1
  %45 = load i32, i32* %5, align 4
  switch i32 %45, label %48 [
    i32 1, label %46
  ]

46:                                               ; preds = %44
  %47 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  store i32 %47, i32* %2, align 4
  br label %58

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48
  br label %57

50:                                               ; preds = %1
  %51 = load i32, i32* %5, align 4
  switch i32 %51, label %54 [
    i32 1, label %52
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  br label %57

56:                                               ; preds = %1
  br label %57

57:                                               ; preds = %56, %55, %49, %43, %27, %19
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %52, %46, %40, %38, %36, %34, %32, %30, %24, %22, %16, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
