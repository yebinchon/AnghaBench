; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_err_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_err_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.edac_device_ctl_info = type { %struct.mpc85xx_l2_pdata* }
%struct.mpc85xx_l2_pdata = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_INT = common dso_local global i64 0, align 8
@MPC85XX_L2_ERRINTEN = common dso_local global i64 0, align 8
@MPC85XX_L2_ERRDIS = common dso_local global i64 0, align 8
@orig_l2_err_disable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc85xx_l2_err_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_l2_err_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca %struct.mpc85xx_l2_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.edac_device_ctl_info* @dev_get_drvdata(i32* %6)
  store %struct.edac_device_ctl_info* %7, %struct.edac_device_ctl_info** %3, align 8
  %8 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %8, i32 0, i32 0
  %10 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %9, align 8
  store %struct.mpc85xx_l2_pdata* %10, %struct.mpc85xx_l2_pdata** %4, align 8
  %11 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @edac_op_state, align 8
  %13 = load i64, i64* @EDAC_OPSTATE_INT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MPC85XX_L2_ERRINTEN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @out_be32(i64 %20, i32 0)
  %22 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @irq_dispose_mapping(i32 %24)
  br label %26

26:                                               ; preds = %15, %1
  %27 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %4, align 8
  %28 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MPC85XX_L2_ERRDIS, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @orig_l2_err_disable, align 4
  %33 = call i32 @out_be32(i64 %31, i32 %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @edac_device_del_device(i32* %35)
  %37 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %38 = call i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info* %37)
  ret i32 0
}

declare dso_local %struct.edac_device_ctl_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @edac_dbg(i32, i8*) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @edac_device_del_device(i32*) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
