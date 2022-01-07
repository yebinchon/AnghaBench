; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_free_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_free_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32, i32 }
%struct.tegra_bpmp_mrq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_bpmp_free_mrq(%struct.tegra_bpmp* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tegra_bpmp_mrq*, align 8
  %8 = alloca i64, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.tegra_bpmp_mrq* @tegra_bpmp_find_mrq(%struct.tegra_bpmp* %13, i32 %14)
  store %struct.tegra_bpmp_mrq* %15, %struct.tegra_bpmp_mrq** %7, align 8
  %16 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %7, align 8
  %17 = icmp ne %struct.tegra_bpmp_mrq* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %7, align 8
  %21 = getelementptr inbounds %struct.tegra_bpmp_mrq, %struct.tegra_bpmp_mrq* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %7, align 8
  %27 = call i32 @devm_kfree(i32 %25, %struct.tegra_bpmp_mrq* %26)
  br label %28

28:                                               ; preds = %19, %18
  %29 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tegra_bpmp_mrq* @tegra_bpmp_find_mrq(%struct.tegra_bpmp*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.tegra_bpmp_mrq*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
