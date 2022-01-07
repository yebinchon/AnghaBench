; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_get_support_mask_for_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser2.c_get_support_mask_for_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_id = type { i32, i32 }

@ATOM_DISPLAY_LCD1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DISPLAY_DFP1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DISPLAY_DFP2_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DISPLAY_DFP3_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DISPLAY_DFP4_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DISPLAY_DFP5_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DISPLAY_DFP6_SUPPORT = common dso_local global i32 0, align 4
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
  switch i32 %11, label %34 [
    i32 128, label %12
    i32 129, label %18
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %16 [
    i32 1, label %14
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @ATOM_DISPLAY_LCD1_SUPPORT, align 4
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16
  br label %35

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %32 [
    i32 1, label %20
    i32 2, label %22
    i32 3, label %24
    i32 4, label %26
    i32 5, label %28
    i32 6, label %30
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @ATOM_DISPLAY_DFP1_SUPPORT, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %18
  %23 = load i32, i32* @ATOM_DISPLAY_DFP2_SUPPORT, align 4
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %18
  %25 = load i32, i32* @ATOM_DISPLAY_DFP3_SUPPORT, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load i32, i32* @ATOM_DISPLAY_DFP4_SUPPORT, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %18
  %29 = load i32, i32* @ATOM_DISPLAY_DFP5_SUPPORT, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %18
  %31 = load i32, i32* @ATOM_DISPLAY_DFP6_SUPPORT, align 4
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %33, %17
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %30, %28, %26, %24, %22, %20, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
