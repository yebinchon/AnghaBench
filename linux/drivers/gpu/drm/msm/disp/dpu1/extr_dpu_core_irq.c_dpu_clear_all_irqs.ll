; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c_dpu_clear_all_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_irq.c_dpu_clear_all_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_kms*)* @dpu_clear_all_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_clear_all_irqs(%struct.dpu_kms* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  store %struct.dpu_kms* %0, %struct.dpu_kms** %2, align 8
  %3 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %4 = icmp ne %struct.dpu_kms* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %7 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %12 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_4__*)* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %5, %1
  br label %30

19:                                               ; preds = %10
  %20 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %21 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %24, align 8
  %26 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  %27 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 %25(%struct.TYPE_4__* %28)
  br label %30

30:                                               ; preds = %19, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
