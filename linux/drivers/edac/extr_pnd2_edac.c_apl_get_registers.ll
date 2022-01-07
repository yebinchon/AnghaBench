; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_apl_get_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_apl_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENODEV = common dso_local global i32 0, align 4
@asym_2way = common dso_local global i32 0, align 4
@b_cr_asym_2way_mem_region_mchbar = common dso_local global i32 0, align 4
@APL_NUM_CHANNELS = common dso_local global i32 0, align 4
@drp0 = common dso_local global i32* null, align 8
@d_cr_drp0 = common dso_local global i32 0, align 4
@apl_dports = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @apl_get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apl_get_registers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ENODEV, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* @b_cr_asym_2way_mem_region_mchbar, align 4
  %7 = call i64 @RD_REG(i32* @asym_2way, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %37

12:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @APL_NUM_CHANNELS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i32*, i32** @drp0, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* @d_cr_drp0, align 4
  %23 = load i32*, i32** @apl_dports, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RD_REGP(i32* %21, i32 %22, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %9
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i64 @RD_REG(i32*, i32) #1

declare dso_local i32 @RD_REGP(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
