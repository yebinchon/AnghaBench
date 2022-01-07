; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_synopsys_edac.c_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.synps_edac_priv* }
%struct.synps_edac_priv = type { i32 }
%struct.platform_device = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@EDAC_MC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"No IRQ %d in DT\0A\00", align 1
@intr_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.platform_device*)* @setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_irq(%struct.mem_ctl_info* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.synps_edac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %10 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %9, i32 0, i32 0
  %11 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %10, align 8
  store %struct.synps_edac_priv* %11, %struct.synps_edac_priv** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call i32 @platform_get_irq(%struct.platform_device* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @KERN_ERR, align 4
  %18 = load i32, i32* @EDAC_MC, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 (i32, i32, i8*, ...) @edac_printk(i32 %17, i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @intr_handler, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_name(i32* %28)
  %30 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %31 = call i32 @devm_request_irq(i32* %24, i32 %25, i32 %26, i32 0, i32 %29, %struct.mem_ctl_info* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %22
  %35 = load i32, i32* @KERN_ERR, align 4
  %36 = load i32, i32* @EDAC_MC, align 4
  %37 = call i32 (i32, i32, i8*, ...) @edac_printk(i32 %35, i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %22
  %40 = load %struct.synps_edac_priv*, %struct.synps_edac_priv** %6, align 8
  %41 = call i32 @enable_intr(%struct.synps_edac_priv* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %34, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @edac_printk(i32, i32, i8*, ...) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.mem_ctl_info*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @enable_intr(%struct.synps_edac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
