; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.ppc4xx_ecc_status = type { i32 }

@SDRAM_ECCES_UE = common dso_local global i32 0, align 4
@SDRAM_ECCES_CE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @ppc4xx_edac_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc4xx_edac_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.ppc4xx_ecc_status, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %4 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %5 = call i32 @ppc4xx_ecc_get_status(%struct.mem_ctl_info* %4, %struct.ppc4xx_ecc_status* %3)
  %6 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %3, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SDRAM_ECCES_UE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %13 = call i32 @ppc4xx_edac_handle_ue(%struct.mem_ctl_info* %12, %struct.ppc4xx_ecc_status* %3)
  br label %14

14:                                               ; preds = %11, %1
  %15 = getelementptr inbounds %struct.ppc4xx_ecc_status, %struct.ppc4xx_ecc_status* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SDRAM_ECCES_CE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %22 = call i32 @ppc4xx_edac_handle_ce(%struct.mem_ctl_info* %21, %struct.ppc4xx_ecc_status* %3)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %25 = call i32 @ppc4xx_ecc_clear_status(%struct.mem_ctl_info* %24, %struct.ppc4xx_ecc_status* %3)
  ret void
}

declare dso_local i32 @ppc4xx_ecc_get_status(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*) #1

declare dso_local i32 @ppc4xx_edac_handle_ue(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*) #1

declare dso_local i32 @ppc4xx_edac_handle_ce(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*) #1

declare dso_local i32 @ppc4xx_ecc_clear_status(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
