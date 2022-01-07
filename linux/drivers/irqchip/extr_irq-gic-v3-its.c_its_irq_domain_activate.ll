; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_domain_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_irq_domain_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.irq_domain = type { i32 }
%struct.irq_data = type { i32 }
%struct.its_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64, i32 }

@cpu_online_mask = common dso_local global %struct.cpumask* null, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@ITS_FLAGS_WORKAROUND_CAVIUM_23144 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_data*, i32)* @its_irq_domain_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_irq_domain_activate(%struct.irq_domain* %0, %struct.irq_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca %struct.irq_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.its_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cpumask*, align 8
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store %struct.irq_data* %1, %struct.irq_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %13 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.its_device* %13, %struct.its_device** %8, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %15 = call i64 @its_get_event_id(%struct.irq_data* %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  store %struct.cpumask* %16, %struct.cpumask** %10, align 8
  %17 = load %struct.its_device*, %struct.its_device** %8, align 8
  %18 = getelementptr inbounds %struct.its_device, %struct.its_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.its_device*, %struct.its_device** %8, align 8
  %25 = getelementptr inbounds %struct.its_device, %struct.its_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.cpumask* @cpumask_of_node(i64 %28)
  store %struct.cpumask* %29, %struct.cpumask** %10, align 8
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %32 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %33 = call i32 @cpumask_first_and(%struct.cpumask* %31, %struct.cpumask* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @nr_cpu_ids, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load %struct.its_device*, %struct.its_device** %8, align 8
  %39 = getelementptr inbounds %struct.its_device, %struct.its_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ITS_FLAGS_WORKAROUND_CAVIUM_23144, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %70

49:                                               ; preds = %37
  %50 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  %51 = call i32 @cpumask_first(%struct.cpumask* %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %30
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.its_device*, %struct.its_device** %8, align 8
  %55 = getelementptr inbounds %struct.its_device, %struct.its_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @cpumask_of(i32 %61)
  %63 = call i32 @irq_data_update_effective_affinity(%struct.irq_data* %60, i32 %62)
  %64 = load %struct.its_device*, %struct.its_device** %8, align 8
  %65 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %66 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @its_send_mapti(%struct.its_device* %64, i32 %67, i64 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %52, %46
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @its_get_event_id(%struct.irq_data*) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i64) #1

declare dso_local i32 @cpumask_first_and(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_first(%struct.cpumask*) #1

declare dso_local i32 @irq_data_update_effective_affinity(%struct.irq_data*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i32 @its_send_mapti(%struct.its_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
