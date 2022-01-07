; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/extr_mdp_kms.c_mdp_irq_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/extr_mdp_kms.c_mdp_irq_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_kms = type { i32 }
%struct.mdp_irq = type { i32, i32 }

@list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp_irq_unregister(%struct.mdp_kms* %0, %struct.mdp_irq* %1) #0 {
  %3 = alloca %struct.mdp_kms*, align 8
  %4 = alloca %struct.mdp_irq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mdp_kms* %0, %struct.mdp_kms** %3, align 8
  store %struct.mdp_irq* %1, %struct.mdp_irq** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %7)
  %9 = load %struct.mdp_irq*, %struct.mdp_irq** %4, align 8
  %10 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.mdp_irq*, %struct.mdp_irq** %4, align 8
  %15 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = load %struct.mdp_irq*, %struct.mdp_irq** %4, align 8
  %17 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %16, i32 0, i32 1
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %20 = getelementptr inbounds %struct.mdp_kms, %struct.mdp_kms* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %13, %2
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %32 = call i32 @mdp_irq_update(%struct.mdp_kms* %31)
  br label %33

33:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp_irq_update(%struct.mdp_kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
