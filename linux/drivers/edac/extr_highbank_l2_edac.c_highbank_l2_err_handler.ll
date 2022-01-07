; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_l2_edac.c_highbank_l2_err_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_highbank_l2_edac.c_highbank_l2_err_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.hb_l2_drvdata* }
%struct.hb_l2_drvdata = type { i32, i32, i64 }

@SR_CLR_SB_ECC_INTR = common dso_local global i64 0, align 8
@SR_CLR_DB_ECC_INTR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @highbank_l2_err_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @highbank_l2_err_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.edac_device_ctl_info*, align 8
  %6 = alloca %struct.hb_l2_drvdata*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.edac_device_ctl_info*
  store %struct.edac_device_ctl_info* %8, %struct.edac_device_ctl_info** %5, align 8
  %9 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %10 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %9, i32 0, i32 1
  %11 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %10, align 8
  store %struct.hb_l2_drvdata* %11, %struct.hb_l2_drvdata** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %14 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %19 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SR_CLR_SB_ECC_INTR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 1, i64 %22)
  %24 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %25 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %26 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %24, i32 0, i32 0, i32 %27)
  br label %29

29:                                               ; preds = %17, %2
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %32 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.hb_l2_drvdata*, %struct.hb_l2_drvdata** %6, align 8
  %37 = getelementptr inbounds %struct.hb_l2_drvdata, %struct.hb_l2_drvdata* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SR_CLR_DB_ECC_INTR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 1, i64 %40)
  %42 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %43 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %44 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %42, i32 0, i32 0, i32 %45)
  br label %47

47:                                               ; preds = %35, %29
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %48
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i32) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
