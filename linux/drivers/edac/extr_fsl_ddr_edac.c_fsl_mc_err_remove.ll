; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_fsl_mc_err_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_fsl_ddr_edac.c_fsl_mc_err_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mem_ctl_info = type { %struct.fsl_mc_pdata* }
%struct.fsl_mc_pdata = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_INT = common dso_local global i64 0, align 8
@FSL_MC_ERR_INT_EN = common dso_local global i64 0, align 8
@FSL_MC_ERR_DISABLE = common dso_local global i64 0, align 8
@orig_ddr_err_disable = common dso_local global i32 0, align 4
@FSL_MC_ERR_SBE = common dso_local global i64 0, align 8
@orig_ddr_err_sbe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsl_mc_err_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.fsl_mc_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.mem_ctl_info* @dev_get_drvdata(i32* %6)
  store %struct.mem_ctl_info* %7, %struct.mem_ctl_info** %3, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %9, align 8
  store %struct.fsl_mc_pdata* %10, %struct.fsl_mc_pdata** %4, align 8
  %11 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @edac_op_state, align 8
  %13 = load i64, i64* @EDAC_OPSTATE_INT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FSL_MC_ERR_INT_EN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ddr_out32(i64 %20, i32 0)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %4, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FSL_MC_ERR_DISABLE, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @orig_ddr_err_disable, align 4
  %29 = call i32 @ddr_out32(i64 %27, i32 %28)
  %30 = load %struct.fsl_mc_pdata*, %struct.fsl_mc_pdata** %4, align 8
  %31 = getelementptr inbounds %struct.fsl_mc_pdata, %struct.fsl_mc_pdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FSL_MC_ERR_SBE, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @orig_ddr_err_sbe, align 4
  %36 = call i32 @ddr_out32(i64 %34, i32 %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @edac_mc_del_mc(i32* %38)
  %40 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %41 = call i32 @edac_mc_free(%struct.mem_ctl_info* %40)
  ret i32 0
}

declare dso_local %struct.mem_ctl_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @ddr_out32(i64, i32) #1

declare dso_local i32 @edac_mc_del_mc(i32*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
