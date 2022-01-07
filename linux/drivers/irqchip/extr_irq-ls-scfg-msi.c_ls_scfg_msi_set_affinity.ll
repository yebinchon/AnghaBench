; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-ls-scfg-msi.c_ls_scfg_msi_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.cpumask = type { i32 }
%struct.ls_scfg_msi = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@msi_affinity_flag = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot bind the irq to cpu%d\0A\00", align 1
@IRQ_SET_MASK_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @ls_scfg_msi_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls_scfg_msi_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ls_scfg_msi*, align 8
  %9 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %11 = call %struct.ls_scfg_msi* @irq_data_get_irq_chip_data(%struct.irq_data* %10)
  store %struct.ls_scfg_msi* %11, %struct.ls_scfg_msi** %8, align 8
  %12 = load i32, i32* @msi_affinity_flag, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %22 = load i32, i32* @cpu_online_mask, align 4
  %23 = call i64 @cpumask_any_and(%struct.cpumask* %21, i32 %22)
  store i64 %23, i64* %9, align 8
  br label %27

24:                                               ; preds = %17
  %25 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %26 = call i64 @cpumask_first(%struct.cpumask* %25)
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %8, align 8
  %30 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp uge i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %27
  %37 = load %struct.ls_scfg_msi*, %struct.ls_scfg_msi** %8, align 8
  %38 = getelementptr inbounds %struct.ls_scfg_msi, %struct.ls_scfg_msi* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %56

50:                                               ; preds = %36
  %51 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @cpumask_of(i64 %52)
  %54 = call i32 @irq_data_update_effective_affinity(%struct.irq_data* %51, i32 %53)
  %55 = load i32, i32* @IRQ_SET_MASK_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %50, %45, %33, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.ls_scfg_msi* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @cpumask_any_and(%struct.cpumask*, i32) #1

declare dso_local i64 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @irq_data_update_effective_affinity(%struct.irq_data*, i32) #1

declare dso_local i32 @cpumask_of(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
