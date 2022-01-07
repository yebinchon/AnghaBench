; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.mpc85xx_l2_pdata* }
%struct.mpc85xx_l2_pdata = type { i64 }

@MPC85XX_L2_ERRDET = common dso_local global i64 0, align 8
@L2_EDE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ECC Error in CPU L2 cache\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"L2 Error Detect Register: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"L2 Error Capture Data High Register: 0x%08x\0A\00", align 1
@MPC85XX_L2_CAPTDATAHI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"L2 Error Capture Data Lo Register: 0x%08x\0A\00", align 1
@MPC85XX_L2_CAPTDATALO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"L2 Error Syndrome Register: 0x%08x\0A\00", align 1
@MPC85XX_L2_CAPTECC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"L2 Error Attributes Capture Register: 0x%08x\0A\00", align 1
@MPC85XX_L2_ERRATTR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"L2 Error Address Capture Register: 0x%08x\0A\00", align 1
@MPC85XX_L2_ERRADDR = common dso_local global i64 0, align 8
@L2_EDE_CE_MASK = common dso_local global i32 0, align 4
@L2_EDE_UE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @mpc85xx_l2_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc85xx_l2_check(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.mpc85xx_l2_pdata*, align 8
  %4 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %5 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %6 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %5, i32 0, i32 1
  %7 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %6, align 8
  store %struct.mpc85xx_l2_pdata* %7, %struct.mpc85xx_l2_pdata** %3, align 8
  %8 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MPC85XX_L2_ERRDET, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @in_be32(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @L2_EDE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %86

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %3, align 8
  %24 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MPC85XX_L2_CAPTDATAHI, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @in_be32(i64 %27)
  %29 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MPC85XX_L2_CAPTDATALO, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @in_be32(i64 %34)
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %3, align 8
  %38 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MPC85XX_L2_CAPTECC, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @in_be32(i64 %41)
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %3, align 8
  %45 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MPC85XX_L2_ERRATTR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @in_be32(i64 %48)
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %3, align 8
  %52 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MPC85XX_L2_ERRADDR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @in_be32(i64 %55)
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %3, align 8
  %59 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MPC85XX_L2_ERRDET, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @out_be32(i64 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @L2_EDE_CE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %19
  %70 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %71 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %72 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %70, i32 0, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %69, %19
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @L2_EDE_UE_MASK, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %82 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %83 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %81, i32 0, i32 0, i32 %84)
  br label %86

86:                                               ; preds = %18, %80, %75
  ret void
}

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i32) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
