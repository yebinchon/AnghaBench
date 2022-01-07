; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_soc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_xgene_edac.c_xgene_edac_soc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_edac_dev_ctx = type { %struct.TYPE_2__*, %struct.edac_device_ctl_info* }
%struct.TYPE_2__ = type { i32 }
%struct.edac_device_ctl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_edac_dev_ctx*)* @xgene_edac_soc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_edac_soc_remove(%struct.xgene_edac_dev_ctx* %0) #0 {
  %2 = alloca %struct.xgene_edac_dev_ctx*, align 8
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  store %struct.xgene_edac_dev_ctx* %0, %struct.xgene_edac_dev_ctx** %2, align 8
  %4 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %4, i32 0, i32 1
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %5, align 8
  store %struct.edac_device_ctl_info* %6, %struct.edac_device_ctl_info** %3, align 8
  %7 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %8 = call i32 @xgene_edac_soc_hw_init(%struct.edac_device_ctl_info* %7, i32 0)
  %9 = load %struct.xgene_edac_dev_ctx*, %struct.xgene_edac_dev_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.xgene_edac_dev_ctx, %struct.xgene_edac_dev_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @edac_device_del_device(i32 %13)
  %15 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %16 = call i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info* %15)
  ret i32 0
}

declare dso_local i32 @xgene_edac_soc_hw_init(%struct.edac_device_ctl_info*, i32) #1

declare dso_local i32 @edac_device_del_device(i32) #1

declare dso_local i32 @edac_device_free_ctl_info(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
