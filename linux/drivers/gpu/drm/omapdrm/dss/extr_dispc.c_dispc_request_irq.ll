; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32*, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@dispc_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"OMAP DISPC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dispc_device*, i32*, i8*)* @dispc_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_request_irq(%struct.dispc_device* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dispc_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.dispc_device* %0, %struct.dispc_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %10 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %45

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %19 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %23 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = call i32 (...) @smp_wmb()
  %25 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %26 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %30 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @dispc_irq_handler, align 4
  %33 = load i32, i32* @IRQF_SHARED, align 4
  %34 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %35 = call i32 @devm_request_irq(i32* %28, i32 %31, i32 %32, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.dispc_device* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %16
  %39 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %40 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  %41 = load %struct.dispc_device*, %struct.dispc_device** %5, align 8
  %42 = getelementptr inbounds %struct.dispc_device, %struct.dispc_device* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %38, %16
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.dispc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
