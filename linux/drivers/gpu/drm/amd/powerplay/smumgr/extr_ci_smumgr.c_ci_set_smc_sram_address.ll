; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_set_smc_sram_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_set_smc_sram_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"smc_addr invalid \0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmSMC_IND_INDEX_0 = common dso_local global i32 0, align 4
@SMC_IND_ACCESS_CNTL = common dso_local global i32 0, align 4
@AUTO_INCREMENT_IND_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i32)* @ci_set_smc_sram_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_set_smc_sram_address(%struct.pp_hwmgr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = and i32 3, %8
  %10 = icmp ne i32 0, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 3
  %14 = load i32, i32* %7, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11, %3
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %11
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @mmSMC_IND_INDEX_0, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @cgs_write_register(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SMC_IND_ACCESS_CNTL, align 4
  %31 = load i32, i32* @AUTO_INCREMENT_IND_0, align 4
  %32 = call i32 @PHM_WRITE_FIELD(i32 %29, i32 %30, i32 %31, i32 0)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %20, %16
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cgs_write_register(i32, i32, i32) #1

declare dso_local i32 @PHM_WRITE_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
