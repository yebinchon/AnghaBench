; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_set_affinity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_set_affinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.irq_data = type { i32 }
%struct.its_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i64, %struct.its_collection* }
%struct.its_collection = type { i32 }

@cpu_online_mask = common dso_local global %struct.cpumask* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ITS_FLAGS_WORKAROUND_CAVIUM_23144 = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@IRQ_SET_MASK_OK_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, %struct.cpumask*, i32)* @its_set_affinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @its_set_affinity(%struct.irq_data* %0, %struct.cpumask* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpumask*, align 8
  %10 = alloca %struct.its_device*, align 8
  %11 = alloca %struct.its_collection*, align 8
  %12 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.cpumask*, %struct.cpumask** @cpu_online_mask, align 8
  store %struct.cpumask* %13, %struct.cpumask** %9, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %15 = call %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data* %14)
  store %struct.its_device* %15, %struct.its_device** %10, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %17 = call i64 @its_get_event_id(%struct.irq_data* %16)
  store i64 %17, i64* %12, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %19 = call i64 @irqd_is_forwarded_to_vcpu(%struct.irq_data* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %102

24:                                               ; preds = %3
  %25 = load %struct.its_device*, %struct.its_device** %10, align 8
  %26 = getelementptr inbounds %struct.its_device, %struct.its_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ITS_FLAGS_WORKAROUND_CAVIUM_23144, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %24
  %34 = load %struct.its_device*, %struct.its_device** %10, align 8
  %35 = getelementptr inbounds %struct.its_device, %struct.its_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load %struct.its_device*, %struct.its_device** %10, align 8
  %42 = getelementptr inbounds %struct.its_device, %struct.its_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.cpumask* @cpumask_of_node(i64 %45)
  store %struct.cpumask* %46, %struct.cpumask** %9, align 8
  %47 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %48 = load %struct.cpumask*, %struct.cpumask** %9, align 8
  %49 = call i32 @cpumask_intersects(%struct.cpumask* %47, %struct.cpumask* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %102

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54, %33
  br label %56

56:                                               ; preds = %55, %24
  %57 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %58 = load %struct.cpumask*, %struct.cpumask** %9, align 8
  %59 = call i32 @cpumask_any_and(%struct.cpumask* %57, %struct.cpumask* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @nr_cpu_ids, align 4
  %62 = icmp uge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %102

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.its_device*, %struct.its_device** %10, align 8
  %69 = getelementptr inbounds %struct.its_device, %struct.its_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %67, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %66
  %77 = load %struct.its_device*, %struct.its_device** %10, align 8
  %78 = getelementptr inbounds %struct.its_device, %struct.its_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load %struct.its_collection*, %struct.its_collection** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %81, i64 %83
  store %struct.its_collection* %84, %struct.its_collection** %11, align 8
  %85 = load %struct.its_device*, %struct.its_device** %10, align 8
  %86 = load %struct.its_collection*, %struct.its_collection** %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @its_send_movi(%struct.its_device* %85, %struct.its_collection* %86, i64 %87)
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.its_device*, %struct.its_device** %10, align 8
  %91 = getelementptr inbounds %struct.its_device, %struct.its_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %89, i32* %95, align 4
  %96 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @cpumask_of(i32 %97)
  %99 = call i32 @irq_data_update_effective_affinity(%struct.irq_data* %96, i32 %98)
  br label %100

100:                                              ; preds = %76, %66
  %101 = load i32, i32* @IRQ_SET_MASK_OK_DONE, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %63, %51, %21
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.its_device* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i64 @its_get_event_id(%struct.irq_data*) #1

declare dso_local i64 @irqd_is_forwarded_to_vcpu(%struct.irq_data*) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i64) #1

declare dso_local i32 @cpumask_intersects(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_any_and(%struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @its_send_movi(%struct.its_device*, %struct.its_collection*, i64) #1

declare dso_local i32 @irq_data_update_effective_affinity(%struct.irq_data*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
