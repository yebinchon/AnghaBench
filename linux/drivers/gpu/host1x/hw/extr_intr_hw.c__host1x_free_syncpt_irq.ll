; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c__host1x_free_syncpt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_intr_hw.c__host1x_free_syncpt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x*)* @_host1x_free_syncpt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_host1x_free_syncpt_irq(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %4 = load %struct.host1x*, %struct.host1x** %2, align 8
  %5 = getelementptr inbounds %struct.host1x, %struct.host1x* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.host1x*, %struct.host1x** %2, align 8
  %8 = getelementptr inbounds %struct.host1x, %struct.host1x* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.host1x*, %struct.host1x** %2, align 8
  %11 = call i32 @devm_free_irq(i32 %6, i32 %9, %struct.host1x* %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.host1x*, %struct.host1x** %2, align 8
  %15 = getelementptr inbounds %struct.host1x, %struct.host1x* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct.host1x*, %struct.host1x** %2, align 8
  %22 = getelementptr inbounds %struct.host1x, %struct.host1x* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @cancel_work_sync(i32* %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %12

33:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @devm_free_irq(i32, i32, %struct.host1x*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
