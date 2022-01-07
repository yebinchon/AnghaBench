; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser_common.c_encoder_id_from_bios_object_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/bios/extr_bios_parser_common.c_encoder_id_from_bios_object_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENCODER_ID_INTERNAL_LVDS = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_TMDS1 = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_TMDS2 = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_DAC1 = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_DAC2 = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_LVTM1 = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_HDMI = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_KLDSCP_TMDS1 = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_KLDSCP_DAC1 = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_KLDSCP_DAC2 = common dso_local global i32 0, align 4
@ENCODER_ID_EXTERNAL_MVPU_FPGA = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_DDI = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_UNIPHY = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_KLDSCP_LVTMA = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_UNIPHY1 = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_UNIPHY2 = common dso_local global i32 0, align 4
@ENCODER_ID_EXTERNAL_NUTMEG = common dso_local global i32 0, align 4
@ENCODER_ID_EXTERNAL_TRAVIS = common dso_local global i32 0, align 4
@ENCODER_ID_INTERNAL_UNIPHY3 = common dso_local global i32 0, align 4
@ENCODER_ID_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @encoder_id_from_bios_object_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encoder_id_from_bios_object_id(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @gpu_id_from_bios_object_id(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %46 [
    i32 137, label %8
    i32 135, label %10
    i32 134, label %12
    i32 144, label %14
    i32 143, label %16
    i32 136, label %18
    i32 145, label %20
    i32 138, label %22
    i32 141, label %24
    i32 140, label %26
    i32 129, label %28
    i32 142, label %30
    i32 133, label %32
    i32 139, label %34
    i32 132, label %36
    i32 131, label %38
    i32 146, label %40
    i32 128, label %42
    i32 130, label %44
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @ENCODER_ID_INTERNAL_LVDS, align 4
  store i32 %9, i32* %4, align 4
  br label %49

10:                                               ; preds = %1
  %11 = load i32, i32* @ENCODER_ID_INTERNAL_TMDS1, align 4
  store i32 %11, i32* %4, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load i32, i32* @ENCODER_ID_INTERNAL_TMDS2, align 4
  store i32 %13, i32* %4, align 4
  br label %49

14:                                               ; preds = %1
  %15 = load i32, i32* @ENCODER_ID_INTERNAL_DAC1, align 4
  store i32 %15, i32* %4, align 4
  br label %49

16:                                               ; preds = %1
  %17 = load i32, i32* @ENCODER_ID_INTERNAL_DAC2, align 4
  store i32 %17, i32* %4, align 4
  br label %49

18:                                               ; preds = %1
  %19 = load i32, i32* @ENCODER_ID_INTERNAL_LVTM1, align 4
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load i32, i32* @ENCODER_ID_INTERNAL_HDMI, align 4
  store i32 %21, i32* %4, align 4
  br label %49

22:                                               ; preds = %1
  %23 = load i32, i32* @ENCODER_ID_INTERNAL_KLDSCP_TMDS1, align 4
  store i32 %23, i32* %4, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load i32, i32* @ENCODER_ID_INTERNAL_KLDSCP_DAC1, align 4
  store i32 %25, i32* %4, align 4
  br label %49

26:                                               ; preds = %1
  %27 = load i32, i32* @ENCODER_ID_INTERNAL_KLDSCP_DAC2, align 4
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %1
  %29 = load i32, i32* @ENCODER_ID_EXTERNAL_MVPU_FPGA, align 4
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %1
  %31 = load i32, i32* @ENCODER_ID_INTERNAL_DDI, align 4
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %1
  %33 = load i32, i32* @ENCODER_ID_INTERNAL_UNIPHY, align 4
  store i32 %33, i32* %4, align 4
  br label %49

34:                                               ; preds = %1
  %35 = load i32, i32* @ENCODER_ID_INTERNAL_KLDSCP_LVTMA, align 4
  store i32 %35, i32* %4, align 4
  br label %49

36:                                               ; preds = %1
  %37 = load i32, i32* @ENCODER_ID_INTERNAL_UNIPHY1, align 4
  store i32 %37, i32* %4, align 4
  br label %49

38:                                               ; preds = %1
  %39 = load i32, i32* @ENCODER_ID_INTERNAL_UNIPHY2, align 4
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %1
  %41 = load i32, i32* @ENCODER_ID_EXTERNAL_NUTMEG, align 4
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %1
  %43 = load i32, i32* @ENCODER_ID_EXTERNAL_TRAVIS, align 4
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %1
  %45 = load i32, i32* @ENCODER_ID_INTERNAL_UNIPHY3, align 4
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* @ENCODER_ID_UNKNOWN, align 4
  store i32 %47, i32* %4, align 4
  %48 = call i32 @ASSERT(i32 0)
  br label %49

49:                                               ; preds = %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @gpu_id_from_bios_object_id(i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
