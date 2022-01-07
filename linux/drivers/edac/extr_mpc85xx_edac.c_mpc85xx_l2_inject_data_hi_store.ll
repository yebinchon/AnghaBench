; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_inject_data_hi_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_inject_data_hi_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.mpc85xx_l2_pdata* }
%struct.mpc85xx_l2_pdata = type { i64 }

@MPC85XX_L2_ERRINJHI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.edac_device_ctl_info*, i8*, i64)* @mpc85xx_l2_inject_data_hi_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mpc85xx_l2_inject_data_hi_store(%struct.edac_device_ctl_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.edac_device_ctl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mpc85xx_l2_pdata*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %10 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %9, i32 0, i32 0
  %11 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %10, align 8
  store %struct.mpc85xx_l2_pdata* %11, %struct.mpc85xx_l2_pdata** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @isdigit(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %8, align 8
  %18 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MPC85XX_L2_ERRINJHI, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @simple_strtoul(i8* %22, i32* null, i32 0)
  %24 = call i32 @out_be32(i64 %21, i32 %23)
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %4, align 8
  br label %27

26:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
