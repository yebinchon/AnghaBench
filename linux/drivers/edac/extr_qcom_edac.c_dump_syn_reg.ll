; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_dump_syn_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_qcom_edac.c_dump_syn_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.llcc_drv_data* }
%struct.llcc_drv_data = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"LLCC Data RAM correctable Error\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"LLCC Data RAM uncorrectable Error\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"LLCC Tag RAM correctable Error\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"LLCC Tag RAM uncorrectable Error\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@EDAC_LLCC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Unexpected error type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edac_device_ctl_info*, i32, i32)* @dump_syn_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_syn_reg(%struct.edac_device_ctl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.edac_device_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.llcc_drv_data*, align 8
  %9 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %11 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %10, i32 0, i32 0
  %12 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %11, align 8
  store %struct.llcc_drv_data* %12, %struct.llcc_drv_data** %8, align 8
  %13 = load %struct.llcc_drv_data*, %struct.llcc_drv_data** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dump_syn_reg_values(%struct.llcc_drv_data* %13, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %48

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %39 [
    i32 131, label %23
    i32 130, label %27
    i32 129, label %31
    i32 128, label %35
  ]

23:                                               ; preds = %21
  %24 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %24, i32 0, i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %46

27:                                               ; preds = %21
  %28 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %28, i32 0, i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %46

31:                                               ; preds = %21
  %32 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %32, i32 0, i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %46

35:                                               ; preds = %21
  %36 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %36, i32 0, i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %46

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @KERN_CRIT, align 4
  %43 = load i32, i32* @EDAC_LLCC, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @edac_printk(i32 %42, i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %35, %31, %27, %23
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %19
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @dump_syn_reg_values(%struct.llcc_drv_data*, i32, i32) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i8*) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i8*) #1

declare dso_local i32 @edac_printk(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
