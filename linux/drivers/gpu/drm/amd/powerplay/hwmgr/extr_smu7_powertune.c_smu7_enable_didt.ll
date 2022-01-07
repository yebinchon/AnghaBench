; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_powertune.c_smu7_enable_didt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_powertune.c_smu7_enable_didt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32 }

@CHIP_POLARIS11 = common dso_local global i64 0, align 8
@Polaris11_DIDTBlock_Info = common dso_local global i32 0, align 4
@DIDTBlock_Info = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SQRamping = common dso_local global i32 0, align 4
@CGS_IND_REG__DIDT = common dso_local global i32 0, align 4
@DIDT_SQ_CTRL0 = common dso_local global i32 0, align 4
@DIDT_CTRL_EN = common dso_local global i32 0, align 4
@SQ_Enable_MASK = common dso_local global i32 0, align 4
@SQ_Enable_SHIFT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DBRamping = common dso_local global i32 0, align 4
@DIDT_DB_CTRL0 = common dso_local global i32 0, align 4
@DB_Enable_MASK = common dso_local global i32 0, align 4
@DB_Enable_SHIFT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_TDRamping = common dso_local global i32 0, align 4
@DIDT_TD_CTRL0 = common dso_local global i32 0, align 4
@TD_Enable_MASK = common dso_local global i32 0, align 4
@TD_Enable_SHIFT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_TCPRamping = common dso_local global i32 0, align 4
@DIDT_TCP_CTRL0 = common dso_local global i32 0, align 4
@TCP_Enable_MASK = common dso_local global i32 0, align 4
@TCP_Enable_SHIFT = common dso_local global i32 0, align 4
@PPSMC_MSG_Didt_Block_Function = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32)* @smu7_enable_didt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_enable_didt(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CHIP_POLARIS11, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @Polaris11_DIDTBlock_Info, align 4
  store i32 %19, i32* %8, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @DIDTBlock_Info, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %24 = call i64 @PP_CAP(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  store i32 %30, i32* %6, align 4
  %31 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %32 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %35 = load i32, i32* @DIDT_SQ_CTRL0, align 4
  %36 = load i32, i32* @DIDT_CTRL_EN, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @CGS_WREG32_FIELD_IND(i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* @SQ_Enable_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SQ_Enable_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %49 = call i64 @PP_CAP(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %29
  %52 = load i32, i32* %5, align 4
  br label %54

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  store i32 %55, i32* %6, align 4
  %56 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %57 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %60 = load i32, i32* @DIDT_DB_CTRL0, align 4
  %61 = load i32, i32* @DIDT_CTRL_EN, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @CGS_WREG32_FIELD_IND(i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @DB_Enable_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %8, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @DB_Enable_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %74 = call i64 @PP_CAP(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %54
  %77 = load i32, i32* %5, align 4
  br label %79

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  store i32 %80, i32* %6, align 4
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %82 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %85 = load i32, i32* @DIDT_TD_CTRL0, align 4
  %86 = load i32, i32* @DIDT_CTRL_EN, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @CGS_WREG32_FIELD_IND(i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* @TD_Enable_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @TD_Enable_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %99 = call i64 @PP_CAP(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %79
  %102 = load i32, i32* %5, align 4
  br label %104

103:                                              ; preds = %79
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  store i32 %105, i32* %6, align 4
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %107 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %110 = load i32, i32* @DIDT_TCP_CTRL0, align 4
  %111 = load i32, i32* @DIDT_CTRL_EN, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @CGS_WREG32_FIELD_IND(i32 %108, i32 %109, i32 %110, i32 %111, i32 %112)
  %114 = load i32, i32* @TCP_Enable_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %8, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @TCP_Enable_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %104
  %126 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %127 = load i32, i32* @PPSMC_MSG_Didt_Block_Function, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %126, i32 %127, i32 %128)
  store i32 %129, i32* %7, align 4
  br label %130

130:                                              ; preds = %125, %104
  %131 = load i32, i32* %7, align 4
  ret i32 %131
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @CGS_WREG32_FIELD_IND(i32, i32, i32, i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
