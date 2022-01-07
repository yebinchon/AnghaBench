; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_viio_trigger_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-trigger.c_viio_trigger_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i64, %struct.TYPE_5__, %struct.TYPE_4__, i32*, i32 }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_4__ = type { i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@iio_trig_type = common dso_local global i32 0, align 4
@iio_bus_type = common dso_local global i32 0, align 4
@CONFIG_IIO_CONSUMERS_PER_TRIGGER = common dso_local global i32 0, align 4
@iio_trig_subirqmask = common dso_local global i32 0, align 4
@iio_trig_subirqunmask = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_NOREQUEST = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@IRQ_NOPROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_trigger* (i8*, i32)* @viio_trigger_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_trigger* @viio_trigger_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_trigger*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.iio_trigger* @kzalloc(i32 64, i32 %8)
  store %struct.iio_trigger* %9, %struct.iio_trigger** %6, align 8
  %10 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %11 = icmp ne %struct.iio_trigger* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.iio_trigger* null, %struct.iio_trigger** %3, align 8
  br label %109

13:                                               ; preds = %2
  %14 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %15 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32* @iio_trig_type, i32** %16, align 8
  %17 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %18 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32* @iio_bus_type, i32** %19, align 8
  %20 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %21 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %20, i32 0, i32 1
  %22 = call i32 @device_initialize(%struct.TYPE_5__* %21)
  %23 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %24 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %23, i32 0, i32 4
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %27 = call i64 @irq_alloc_descs(i32 -1, i32 0, i32 %26, i32 0)
  %28 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %29 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %31 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %13
  br label %106

35:                                               ; preds = %13
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32* @kvasprintf(i32 %36, i8* %37, i32 %38)
  %40 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %41 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %40, i32 0, i32 3
  store i32* %39, i32** %41, align 8
  %42 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %43 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %100

47:                                               ; preds = %35
  %48 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %49 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %52 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32* %50, i32** %53, align 8
  %54 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %55 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32* @iio_trig_subirqmask, i32** %56, align 8
  %57 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %58 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* @iio_trig_subirqunmask, i32** %59, align 8
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %92, %47
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %60
  %65 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %66 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %67, %69
  %71 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %72 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %71, i32 0, i32 2
  %73 = call i32 @irq_set_chip(i64 %70, %struct.TYPE_4__* %72)
  %74 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %75 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @irq_set_handler(i64 %79, i32* @handle_simple_irq)
  %81 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %82 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i32, i32* @IRQ_NOREQUEST, align 4
  %88 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @IRQ_NOPROBE, align 4
  %91 = call i32 @irq_modify_status(i64 %86, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %64
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %60

95:                                               ; preds = %60
  %96 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %97 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %96, i32 0, i32 1
  %98 = call i32 @get_device(%struct.TYPE_5__* %97)
  %99 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  store %struct.iio_trigger* %99, %struct.iio_trigger** %3, align 8
  br label %109

100:                                              ; preds = %46
  %101 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %102 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* @CONFIG_IIO_CONSUMERS_PER_TRIGGER, align 4
  %105 = call i32 @irq_free_descs(i64 %103, i32 %104)
  br label %106

106:                                              ; preds = %100, %34
  %107 = load %struct.iio_trigger*, %struct.iio_trigger** %6, align 8
  %108 = call i32 @kfree(%struct.iio_trigger* %107)
  store %struct.iio_trigger* null, %struct.iio_trigger** %3, align 8
  br label %109

109:                                              ; preds = %106, %95, %12
  %110 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  ret %struct.iio_trigger* %110
}

declare dso_local %struct.iio_trigger* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @irq_alloc_descs(i32, i32, i32, i32) #1

declare dso_local i32* @kvasprintf(i32, i8*, i32) #1

declare dso_local i32 @irq_set_chip(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @irq_set_handler(i64, i32*) #1

declare dso_local i32 @irq_modify_status(i64, i32, i32) #1

declare dso_local i32 @get_device(%struct.TYPE_5__*) #1

declare dso_local i32 @irq_free_descs(i64, i32) #1

declare dso_local i32 @kfree(%struct.iio_trigger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
