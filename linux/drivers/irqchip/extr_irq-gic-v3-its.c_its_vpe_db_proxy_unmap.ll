; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_db_proxy_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-v3-its.c_its_vpe_db_proxy_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.its_vpe = type { i32 }

@gic_rdists = common dso_local global %struct.TYPE_4__* null, align 8
@vpe_proxy = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.its_vpe*)* @its_vpe_db_proxy_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_vpe_db_proxy_unmap(%struct.its_vpe* %0) #0 {
  %2 = alloca %struct.its_vpe*, align 8
  %3 = alloca i64, align 8
  store %struct.its_vpe* %0, %struct.its_vpe** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gic_rdists, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @raw_spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vpe_proxy, i32 0, i32 0), i64 %9)
  %11 = load %struct.its_vpe*, %struct.its_vpe** %2, align 8
  %12 = call i32 @its_vpe_db_proxy_unmap_locked(%struct.its_vpe* %11)
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @raw_spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vpe_proxy, i32 0, i32 0), i64 %13)
  br label %15

15:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @its_vpe_db_proxy_unmap_locked(%struct.its_vpe*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
