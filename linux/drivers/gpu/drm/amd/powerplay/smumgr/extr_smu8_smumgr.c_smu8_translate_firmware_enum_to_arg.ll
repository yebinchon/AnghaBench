; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_translate_firmware_enum_to_arg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_smu8_smumgr.c_smu8_translate_firmware_enum_to_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@UCODE_ID_SDMA0 = common dso_local global i32 0, align 4
@CHIP_STONEY = common dso_local global i32 0, align 4
@UCODE_ID_SDMA1 = common dso_local global i32 0, align 4
@UCODE_ID_CP_CE = common dso_local global i32 0, align 4
@UCODE_ID_CP_PFP = common dso_local global i32 0, align 4
@UCODE_ID_CP_ME = common dso_local global i32 0, align 4
@UCODE_ID_CP_MEC_JT1 = common dso_local global i32 0, align 4
@UCODE_ID_CP_MEC_JT2 = common dso_local global i32 0, align 4
@UCODE_ID_GMCON_RENG = common dso_local global i32 0, align 4
@UCODE_ID_RLC_G = common dso_local global i32 0, align 4
@UCODE_ID_RLC_SCRATCH = common dso_local global i32 0, align 4
@UCODE_ID_RLC_SRM_ARAM = common dso_local global i32 0, align 4
@UCODE_ID_RLC_SRM_DRAM = common dso_local global i32 0, align 4
@UCODE_ID_DMCU_ERAM = common dso_local global i32 0, align 4
@UCODE_ID_DMCU_IRAM = common dso_local global i32 0, align 4
@TASK_ARG_INIT_MM_PWR_LOG = common dso_local global i32 0, align 4
@TASK_ARG_REG_MMIO = common dso_local global i32 0, align 4
@TASK_ARG_INIT_CLK_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @smu8_translate_firmware_enum_to_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu8_translate_firmware_enum_to_arg(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %59 [
    i32 129, label %7
    i32 128, label %9
    i32 142, label %20
    i32 138, label %22
    i32 141, label %24
    i32 140, label %26
    i32 139, label %28
    i32 135, label %39
    i32 133, label %41
    i32 132, label %43
    i32 131, label %45
    i32 130, label %47
    i32 137, label %49
    i32 136, label %51
    i32 134, label %53
    i32 147, label %55
    i32 144, label %55
    i32 146, label %55
    i32 148, label %55
    i32 145, label %55
    i32 149, label %55
    i32 143, label %57
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @UCODE_ID_SDMA0, align 4
  store i32 %8, i32* %5, align 4
  br label %59

9:                                                ; preds = %2
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %11 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CHIP_STONEY, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @UCODE_ID_SDMA0, align 4
  store i32 %16, i32* %5, align 4
  br label %19

17:                                               ; preds = %9
  %18 = load i32, i32* @UCODE_ID_SDMA1, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %17, %15
  br label %59

20:                                               ; preds = %2
  %21 = load i32, i32* @UCODE_ID_CP_CE, align 4
  store i32 %21, i32* %5, align 4
  br label %59

22:                                               ; preds = %2
  %23 = load i32, i32* @UCODE_ID_CP_PFP, align 4
  store i32 %23, i32* %5, align 4
  br label %59

24:                                               ; preds = %2
  %25 = load i32, i32* @UCODE_ID_CP_ME, align 4
  store i32 %25, i32* %5, align 4
  br label %59

26:                                               ; preds = %2
  %27 = load i32, i32* @UCODE_ID_CP_MEC_JT1, align 4
  store i32 %27, i32* %5, align 4
  br label %59

28:                                               ; preds = %2
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %30 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CHIP_STONEY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @UCODE_ID_CP_MEC_JT1, align 4
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @UCODE_ID_CP_MEC_JT2, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %59

39:                                               ; preds = %2
  %40 = load i32, i32* @UCODE_ID_GMCON_RENG, align 4
  store i32 %40, i32* %5, align 4
  br label %59

41:                                               ; preds = %2
  %42 = load i32, i32* @UCODE_ID_RLC_G, align 4
  store i32 %42, i32* %5, align 4
  br label %59

43:                                               ; preds = %2
  %44 = load i32, i32* @UCODE_ID_RLC_SCRATCH, align 4
  store i32 %44, i32* %5, align 4
  br label %59

45:                                               ; preds = %2
  %46 = load i32, i32* @UCODE_ID_RLC_SRM_ARAM, align 4
  store i32 %46, i32* %5, align 4
  br label %59

47:                                               ; preds = %2
  %48 = load i32, i32* @UCODE_ID_RLC_SRM_DRAM, align 4
  store i32 %48, i32* %5, align 4
  br label %59

49:                                               ; preds = %2
  %50 = load i32, i32* @UCODE_ID_DMCU_ERAM, align 4
  store i32 %50, i32* %5, align 4
  br label %59

51:                                               ; preds = %2
  %52 = load i32, i32* @UCODE_ID_DMCU_IRAM, align 4
  store i32 %52, i32* %5, align 4
  br label %59

53:                                               ; preds = %2
  %54 = load i32, i32* @TASK_ARG_INIT_MM_PWR_LOG, align 4
  store i32 %54, i32* %5, align 4
  br label %59

55:                                               ; preds = %2, %2, %2, %2, %2, %2
  %56 = load i32, i32* @TASK_ARG_REG_MMIO, align 4
  store i32 %56, i32* %5, align 4
  br label %59

57:                                               ; preds = %2
  %58 = load i32, i32* @TASK_ARG_INIT_CLK_TABLE, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %2, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %38, %26, %24, %22, %20, %19, %7
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
