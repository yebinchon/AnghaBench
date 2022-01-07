; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trig_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_iio_trig_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_trigger = type { %struct.iio_trigger*, i64 }

@CONFIG_IIO_CONSUMERS_PER_TRIGGER = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @iio_trig_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iio_trig_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.iio_trigger* @to_iio_trigger(%struct.device* %5)
  store %struct.iio_trigger* %6, %struct.iio_trigger** %3, align 8
  %7 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %8 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %42, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %18 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %24 = load i32, i32* @IRQ_NOREQUEST, align 4
  %25 = load i32, i32* @IRQ_NOPROBE, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @irq_modify_status(i64 %22, i32 %23, i32 %26)
  %28 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %29 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @irq_set_chip(i64 %33, i32* null)
  %35 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %36 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @irq_set_handler(i64 %40, i32* null)
  br label %42

42:                                               ; preds = %16
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %12

45:                                               ; preds = %12
  %46 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %47 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %50 = call i32 @irq_free_descs(i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %1
  %52 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %53 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %52, i32 0, i32 0
  %54 = load %struct.iio_trigger*, %struct.iio_trigger** %53, align 8
  %55 = call i32 @kfree(%struct.iio_trigger* %54)
  %56 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %57 = call i32 @kfree(%struct.iio_trigger* %56)
  ret void
}

declare dso_local %struct.iio_trigger* @to_iio_trigger(%struct.device*) #1

declare dso_local i32 @irq_modify_status(i64, i32, i32) #1

declare dso_local i32 @irq_set_chip(i64, i32*) #1

declare dso_local i32 @irq_set_handler(i64, i32*) #1

declare dso_local i32 @irq_free_descs(i64, i32) #1

declare dso_local i32 @kfree(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
