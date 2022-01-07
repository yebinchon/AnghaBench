; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_db_proxy_map_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_db_proxy_map_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, %struct.its_vpe** }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.its_vpe = type { i32, i32, i32 }

@vpe_proxy = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.its_vpe*)* @its_vpe_db_proxy_map_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_vpe_db_proxy_map_locked(%struct.its_vpe* %0) #0 {
  %2 = alloca %struct.its_vpe*, align 8
  store %struct.its_vpe* %0, %struct.its_vpe** %2, align 8
  %3 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %4 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %57

8:                                                ; preds = %1
  %9 = load %struct.its_vpe**, %struct.its_vpe*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 2), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.its_vpe*, %struct.its_vpe** %9, i64 %10
  %12 = load %struct.its_vpe*, %struct.its_vpe** %11, align 8
  %13 = icmp ne %struct.its_vpe* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.its_vpe**, %struct.its_vpe*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 2), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.its_vpe*, %struct.its_vpe** %15, i64 %16
  %18 = load %struct.its_vpe*, %struct.its_vpe** %17, align 8
  %19 = call i32 @its_vpe_db_proxy_unmap_locked(%struct.its_vpe* %18)
  br label %20

20:                                               ; preds = %14, %8
  %21 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %22 = load %struct.its_vpe**, %struct.its_vpe*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 2), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.its_vpe*, %struct.its_vpe** %22, i64 %23
  store %struct.its_vpe* %21, %struct.its_vpe** %24, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 0), align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %28 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 0), align 8
  %30 = add i64 %29, 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 1), align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = urem i64 %30, %34
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 0), align 8
  %36 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %37 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 1), align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %44 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  store i32 %38, i32* %47, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vpe_proxy, i32 0, i32 1), align 8
  %49 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %50 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %53 = getelementptr inbounds %struct.its_vpe, %struct.its_vpe* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @its_send_mapti(%struct.TYPE_6__* %48, i32 %51, i64 %55)
  br label %57

57:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @its_vpe_db_proxy_unmap_locked(%struct.its_vpe*) #1

declare dso_local i32 @its_send_mapti(%struct.TYPE_6__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
