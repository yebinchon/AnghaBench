; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/extr_mdp_kms.c_mdp_irq_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/extr_mdp_kms.c_mdp_irq_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_kms = type { i32, i32 }
%struct.mdp_irq = type { i32, i32 }

@list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdp_irq_register(%struct.mdp_kms* %0, %struct.mdp_irq* %1) #0 {
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
  br i1 %12, label %27, label %13

13:                                               ; preds = %2
  %14 = load %struct.mdp_irq*, %struct.mdp_irq** %4, align 8
  %15 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.mdp_irq*, %struct.mdp_irq** %4, align 8
  %17 = getelementptr inbounds %struct.mdp_irq, %struct.mdp_irq* %16, i32 0, i32 1
  %18 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %19 = getelementptr inbounds %struct.mdp_kms, %struct.mdp_kms* %18, i32 0, i32 1
  %20 = call i32 @list_add(i32* %17, i32* %19)
  %21 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %22 = getelementptr inbounds %struct.mdp_kms, %struct.mdp_kms* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %13, %2
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.mdp_kms*, %struct.mdp_kms** %3, align 8
  %34 = call i32 @mdp_irq_update(%struct.mdp_kms* %33)
  br label %35

35:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdp_irq_update(%struct.mdp_kms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
