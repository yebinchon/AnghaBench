; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_mc_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_mc_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.smu7_hwmgr = type { i32, i32, i32 }

@mmMC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@ixMC_IO_DEBUG_UP_13 = common dso_local global i32 0, align 4
@mmMC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@MEM_LATENCY_HIGH = common dso_local global i32 0, align 4
@MEM_LATENCY_LOW = common dso_local global i32 0, align 4
@CHIP_POLARIS10 = common dso_local global i64 0, align 8
@CHIP_POLARIS11 = common dso_local global i64 0, align 8
@CHIP_POLARIS12 = common dso_local global i64 0, align 8
@PPSMC_MSG_EnableFFC = common dso_local global i32 0, align 4
@PPSMC_MSG_DisableFFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu7_check_mc_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_check_mc_firmware(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %6 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %7 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %9, %struct.smu7_hwmgr** %3, align 8
  %10 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %11 = call i32 @smu7_get_mc_microcode_version(%struct.pp_hwmgr* %10)
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %18 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @mmMC_SEQ_IO_DEBUG_INDEX, align 4
  %23 = load i32, i32* @ixMC_IO_DEBUG_UP_13, align 4
  %24 = call i32 @cgs_write_register(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %26 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @mmMC_SEQ_IO_DEBUG_DATA, align 4
  %29 = call i32 @cgs_read_register(i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 8388608
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %1
  %34 = load i32, i32* @MEM_LATENCY_HIGH, align 4
  %35 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %36 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @MEM_LATENCY_LOW, align 4
  %38 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %41 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHIP_POLARIS10, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %33
  %46 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %47 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHIP_POLARIS11, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHIP_POLARIS12, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51, %45, %33
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %59 = load i32, i32* @PPSMC_MSG_EnableFFC, align 4
  %60 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %89

62:                                               ; preds = %1
  %63 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %64 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %63, i32 0, i32 1
  store i32 330, i32* %64, align 4
  %65 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %65, i32 0, i32 2
  store i32 330, i32* %66, align 4
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %68 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @CHIP_POLARIS10, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %84, label %72

72:                                               ; preds = %62
  %73 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %74 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @CHIP_POLARIS11, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %80 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CHIP_POLARIS12, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78, %72, %62
  %85 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %86 = load i32, i32* @PPSMC_MSG_DisableFFC, align 4
  %87 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %88, %61
  ret i32 0
}

declare dso_local i32 @smu7_get_mc_microcode_version(%struct.pp_hwmgr*) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @cgs_read_register(i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
