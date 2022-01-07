; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_partition_domain_translate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3.c_partition_domain_translate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i64* }
%struct.device_node = type { i32 }

@gic_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* @partition_domain_translate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition_domain_translate(%struct.irq_domain* %0, %struct.irq_fwspec* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca %struct.irq_fwspec*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store %struct.irq_fwspec* %1, %struct.irq_fwspec** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gic_data, i32 0, i32 0), align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %63

17:                                               ; preds = %4
  %18 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %19 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 3
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.device_node* @of_find_node_by_phandle(i64 %22)
  store %struct.device_node* %23, %struct.device_node** %10, align 8
  %24 = load %struct.device_node*, %struct.device_node** %10, align 8
  %25 = icmp ne %struct.device_node* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %63

33:                                               ; preds = %17
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gic_data, i32 0, i32 0), align 8
  %35 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %36 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %34, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.device_node*, %struct.device_node** %10, align 8
  %43 = call i32 @of_node_to_fwnode(%struct.device_node* %42)
  %44 = call i32 @partition_translate_id(i32 %41, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %5, align 4
  br label %63

49:                                               ; preds = %33
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %8, align 8
  store i64 %51, i64* %52, align 8
  %53 = load %struct.irq_fwspec*, %struct.irq_fwspec** %7, align 8
  %54 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %59 = zext i32 %58 to i64
  %60 = and i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %49, %47, %30, %14
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.device_node* @of_find_node_by_phandle(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @partition_translate_id(i32, i32) #1

declare dso_local i32 @of_node_to_fwnode(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
