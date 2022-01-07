; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_nvm_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_nvm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HIDEEP_FLASH_CFG = common dso_local global i32 0, align 4
@HIDEEP_NVM_SFR_RPAGE = common dso_local global i32 0, align 4
@HIDEEP_NVM_DEFAULT_PAGE = common dso_local global i32 0, align 4
@HIDEEP_PROT_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"read mask code different %#08x vs %#08x\00", align 1
@HIDEEP_NVM_SFR_WPAGE = common dso_local global i32 0, align 4
@HIDEEP_NVM_MASK_OFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hideep_ts*)* @hideep_nvm_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hideep_nvm_unlock(%struct.hideep_ts* %0) #0 {
  %2 = alloca %struct.hideep_ts*, align 8
  %3 = alloca i32, align 4
  store %struct.hideep_ts* %0, %struct.hideep_ts** %2, align 8
  %4 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %5 = load i32, i32* @HIDEEP_FLASH_CFG, align 4
  %6 = load i32, i32* @HIDEEP_NVM_SFR_RPAGE, align 4
  %7 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %4, i32 %5, i32 %6)
  %8 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %9 = call i32 @hideep_pgm_r_reg(%struct.hideep_ts* %8, i32 12, i32* %3)
  %10 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %11 = load i32, i32* @HIDEEP_FLASH_CFG, align 4
  %12 = load i32, i32* @HIDEEP_NVM_DEFAULT_PAGE, align 4
  %13 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @HIDEEP_PROT_MODE, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %20 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %25 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %30 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %23, %1
  %34 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %35 = load i32, i32* @HIDEEP_FLASH_CFG, align 4
  %36 = load i32, i32* @HIDEEP_NVM_SFR_WPAGE, align 4
  %37 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %34, i32 %35, i32 %36)
  %38 = call i32 @SET_FLASH_PIO(i32 0)
  %39 = load i32, i32* @HIDEEP_NVM_MASK_OFS, align 4
  %40 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %41 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @NVM_W_SFR(i32 %39, i32 %42)
  %44 = call i32 (...) @SET_FLASH_HWCONTROL()
  %45 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %46 = load i32, i32* @HIDEEP_FLASH_CFG, align 4
  %47 = load i32, i32* @HIDEEP_NVM_DEFAULT_PAGE, align 4
  %48 = call i32 @hideep_pgm_w_reg(%struct.hideep_ts* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @hideep_pgm_w_reg(%struct.hideep_ts*, i32, i32) #1

declare dso_local i32 @hideep_pgm_r_reg(%struct.hideep_ts*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @SET_FLASH_PIO(i32) #1

declare dso_local i32 @NVM_W_SFR(i32, i32) #1

declare dso_local i32 @SET_FLASH_HWCONTROL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
