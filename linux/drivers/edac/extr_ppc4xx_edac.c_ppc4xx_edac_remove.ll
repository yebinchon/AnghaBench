; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mem_ctl_info = type { i32, %struct.ppc4xx_edac_pdata* }
%struct.ppc4xx_edac_pdata = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@edac_op_state = common dso_local global i64 0, align 8
@EDAC_OPSTATE_INT = common dso_local global i64 0, align 8
@SDRAM_DCR_RESOURCE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ppc4xx_edac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc4xx_edac_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.ppc4xx_edac_pdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.mem_ctl_info* @dev_get_drvdata(i32* %6)
  store %struct.mem_ctl_info* %7, %struct.mem_ctl_info** %3, align 8
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 1
  %10 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %9, align 8
  store %struct.ppc4xx_edac_pdata* %10, %struct.ppc4xx_edac_pdata** %4, align 8
  %11 = load i64, i64* @edac_op_state, align 8
  %12 = load i64, i64* @EDAC_OPSTATE_INT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %4, align 8
  %16 = getelementptr inbounds %struct.ppc4xx_edac_pdata, %struct.ppc4xx_edac_pdata* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.mem_ctl_info* %19)
  %21 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %4, align 8
  %22 = getelementptr inbounds %struct.ppc4xx_edac_pdata, %struct.ppc4xx_edac_pdata* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.mem_ctl_info* %25)
  br label %27

27:                                               ; preds = %14, %1
  %28 = load %struct.ppc4xx_edac_pdata*, %struct.ppc4xx_edac_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.ppc4xx_edac_pdata, %struct.ppc4xx_edac_pdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SDRAM_DCR_RESOURCE_LEN, align 4
  %32 = call i32 @dcr_unmap(i32 %30, i32 %31)
  %33 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %34 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @edac_mc_del_mc(i32 %35)
  %37 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %38 = call i32 @edac_mc_free(%struct.mem_ctl_info* %37)
  ret i32 0
}

declare dso_local %struct.mem_ctl_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.mem_ctl_info*) #1

declare dso_local i32 @dcr_unmap(i32, i32) #1

declare dso_local i32 @edac_mc_del_mc(i32) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
