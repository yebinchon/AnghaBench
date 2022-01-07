; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_trusted_foundations.c_tf_prepare_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_trusted_foundations.c_tf_prepare_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TF_CPU_PM = common dso_local global i32 0, align 4
@TF_CPU_PM_S3 = common dso_local global i32 0, align 4
@cpu_boot_addr = common dso_local global i32 0, align 4
@TF_CPU_PM_S2 = common dso_local global i32 0, align 4
@TF_CPU_PM_S2_NO_MC_CLK = common dso_local global i32 0, align 4
@TF_CPU_PM_S1 = common dso_local global i32 0, align 4
@TF_CPU_PM_S1_NOFLUSH_L2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @tf_prepare_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tf_prepare_idle(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %30 [
    i64 132, label %5
    i64 131, label %10
    i64 130, label %15
    i64 129, label %20
    i64 128, label %25
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @TF_CPU_PM, align 4
  %7 = load i32, i32* @TF_CPU_PM_S3, align 4
  %8 = load i32, i32* @cpu_boot_addr, align 4
  %9 = call i32 @tf_generic_smc(i32 %6, i32 %7, i32 %8)
  br label %33

10:                                               ; preds = %1
  %11 = load i32, i32* @TF_CPU_PM, align 4
  %12 = load i32, i32* @TF_CPU_PM_S2, align 4
  %13 = load i32, i32* @cpu_boot_addr, align 4
  %14 = call i32 @tf_generic_smc(i32 %11, i32 %12, i32 %13)
  br label %33

15:                                               ; preds = %1
  %16 = load i32, i32* @TF_CPU_PM, align 4
  %17 = load i32, i32* @TF_CPU_PM_S2_NO_MC_CLK, align 4
  %18 = load i32, i32* @cpu_boot_addr, align 4
  %19 = call i32 @tf_generic_smc(i32 %16, i32 %17, i32 %18)
  br label %33

20:                                               ; preds = %1
  %21 = load i32, i32* @TF_CPU_PM, align 4
  %22 = load i32, i32* @TF_CPU_PM_S1, align 4
  %23 = load i32, i32* @cpu_boot_addr, align 4
  %24 = call i32 @tf_generic_smc(i32 %21, i32 %22, i32 %23)
  br label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @TF_CPU_PM, align 4
  %27 = load i32, i32* @TF_CPU_PM_S1_NOFLUSH_L2, align 4
  %28 = load i32, i32* @cpu_boot_addr, align 4
  %29 = call i32 @tf_generic_smc(i32 %26, i32 %27, i32 %28)
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %25, %20, %15, %10, %5
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @tf_generic_smc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
