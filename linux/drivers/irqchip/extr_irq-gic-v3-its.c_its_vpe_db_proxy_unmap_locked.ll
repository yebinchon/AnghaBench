; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_db_proxy_unmap_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_db_proxy_unmap_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32**, i32 }
%struct.its_vpe = type { i32 }

@vpe_proxy = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.its_vpe*)* @its_vpe_db_proxy_unmap_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_vpe_db_proxy_unmap_locked(%struct.its_vpe* %0) #0 {
  %2 = alloca %struct.its_vpe*, align 8
  store %struct.its_vpe* %0, %struct.its_vpe** %2, align 8
  %3 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %4 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpe_proxy, i32 0, i32 2), align 8
  %10 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %11 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @its_send_discard(i32 %9, i32 %12)
  %14 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpe_proxy, i32 0, i32 1), align 8
  %15 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %16 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %14, i64 %18
  store i32* null, i32** %19, align 8
  %20 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpe_proxy, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpe_proxy, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %8
  %26 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %27 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vpe_proxy, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %25, %8
  %31 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %32 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %7
  ret void
}

declare dso_local i32 @its_send_discard(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
