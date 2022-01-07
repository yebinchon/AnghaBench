; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_set_sysinfo_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_cyttsp_core.c_cyttsp_set_sysinfo_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyttsp = type { i64, i64, i64 }

@CY_ACT_INTRVL_DFLT = common dso_local global i64 0, align 8
@CY_TCH_TMOUT_DFLT = common dso_local global i64 0, align 8
@CY_LP_INTRVL_DFLT = common dso_local global i64 0, align 8
@CY_REG_ACT_INTRVL = common dso_local global i32 0, align 4
@CY_DELAY_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyttsp*)* @cyttsp_set_sysinfo_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyttsp_set_sysinfo_regs(%struct.cyttsp* %0) #0 {
  %2 = alloca %struct.cyttsp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i64], align 16
  store %struct.cyttsp* %0, %struct.cyttsp** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %6 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CY_ACT_INTRVL_DFLT, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %12 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CY_TCH_TMOUT_DFLT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %18 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CY_LP_INTRVL_DFLT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16, %10, %1
  %23 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %24 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %25 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %23, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 1
  %28 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %29 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %27, align 8
  %31 = getelementptr inbounds i64, i64* %27, i64 1
  %32 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %33 = getelementptr inbounds %struct.cyttsp, %struct.cyttsp* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %31, align 8
  %35 = load %struct.cyttsp*, %struct.cyttsp** %2, align 8
  %36 = load i32, i32* @CY_REG_ACT_INTRVL, align 4
  %37 = getelementptr inbounds [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %38 = call i32 @ttsp_write_block_data(%struct.cyttsp* %35, i32 %36, i32 24, i64* %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @CY_DELAY_DFLT, align 4
  %40 = call i32 @msleep(i32 %39)
  br label %41

41:                                               ; preds = %22, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ttsp_write_block_data(%struct.cyttsp*, i32, i32, i64*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
