; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser_common.c_enum_id_from_bios_object_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser_common.c_enum_id_from_bios_object_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENUM_ID_MASK = common dso_local global i32 0, align 4
@ENUM_ID_SHIFT = common dso_local global i32 0, align 4
@ENUM_ID_1 = common dso_local global i32 0, align 4
@ENUM_ID_2 = common dso_local global i32 0, align 4
@ENUM_ID_3 = common dso_local global i32 0, align 4
@ENUM_ID_4 = common dso_local global i32 0, align 4
@ENUM_ID_5 = common dso_local global i32 0, align 4
@ENUM_ID_6 = common dso_local global i32 0, align 4
@ENUM_ID_7 = common dso_local global i32 0, align 4
@ENUM_ID_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @enum_id_from_bios_object_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enum_id_from_bios_object_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @ENUM_ID_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @ENUM_ID_SHIFT, align 4
  %9 = ashr i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %25 [
    i32 134, label %11
    i32 133, label %13
    i32 132, label %15
    i32 131, label %17
    i32 130, label %19
    i32 129, label %21
    i32 128, label %23
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @ENUM_ID_1, align 4
  store i32 %12, i32* %4, align 4
  br label %27

13:                                               ; preds = %1
  %14 = load i32, i32* @ENUM_ID_2, align 4
  store i32 %14, i32* %4, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* @ENUM_ID_3, align 4
  store i32 %16, i32* %4, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load i32, i32* @ENUM_ID_4, align 4
  store i32 %18, i32* %4, align 4
  br label %27

19:                                               ; preds = %1
  %20 = load i32, i32* @ENUM_ID_5, align 4
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %1
  %22 = load i32, i32* @ENUM_ID_6, align 4
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @ENUM_ID_7, align 4
  store i32 %24, i32* %4, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ENUM_ID_UNKNOWN, align 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
