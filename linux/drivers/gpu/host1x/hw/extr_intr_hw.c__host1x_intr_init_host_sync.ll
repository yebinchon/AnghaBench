; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c__host1x_intr_init_host_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c__host1x_intr_init_host_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.work_struct = type opaque
%struct.work_struct.0 = type opaque

@syncpt_thresh_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"host1x_syncpt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x*, i32, void (%struct.work_struct*)*)* @_host1x_intr_init_host_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_host1x_intr_init_host_sync(%struct.host1x* %0, i32 %1, void (%struct.work_struct*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.host1x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.work_struct*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (%struct.work_struct*)* %2, void (%struct.work_struct*)** %7, align 8
  %10 = load %struct.host1x*, %struct.host1x** %5, align 8
  %11 = call i32 @host1x_hw_intr_disable_all_syncpt_intrs(%struct.host1x* %10)
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %32, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.host1x*, %struct.host1x** %5, align 8
  %15 = getelementptr inbounds %struct.host1x, %struct.host1x* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %12
  %21 = load %struct.host1x*, %struct.host1x** %5, align 8
  %22 = getelementptr inbounds %struct.host1x, %struct.host1x* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load void (%struct.work_struct*)*, void (%struct.work_struct*)** %7, align 8
  %30 = bitcast void (%struct.work_struct*)* %29 to void (%struct.work_struct.0*)*
  %31 = call i32 @INIT_WORK(i32* %28, void (%struct.work_struct.0*)* %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.host1x*, %struct.host1x** %5, align 8
  %37 = getelementptr inbounds %struct.host1x, %struct.host1x* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.host1x*, %struct.host1x** %5, align 8
  %40 = getelementptr inbounds %struct.host1x, %struct.host1x* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @syncpt_thresh_isr, align 4
  %43 = load i32, i32* @IRQF_SHARED, align 4
  %44 = load %struct.host1x*, %struct.host1x** %5, align 8
  %45 = call i32 @devm_request_irq(i32 %38, i32 %41, i32 %42, i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.host1x* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %35
  %49 = call i32 @WARN_ON(i32 1)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %55

51:                                               ; preds = %35
  %52 = load %struct.host1x*, %struct.host1x** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @intr_hw_init(%struct.host1x* %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @host1x_hw_intr_disable_all_syncpt_intrs(%struct.host1x*) #1

declare dso_local i32 @INIT_WORK(i32*, void (%struct.work_struct.0*)*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.host1x*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intr_hw_init(%struct.host1x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
