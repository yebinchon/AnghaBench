; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_request_mrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/tegra/extr_bpmp.c_tegra_bpmp_request_mrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32, i32, i32 }
%struct.tegra_bpmp_mrq = type { i32, i32, i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_bpmp_request_mrq(%struct.tegra_bpmp* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_bpmp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tegra_bpmp_mrq*, align 8
  %11 = alloca i64, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %51

17:                                               ; preds = %4
  %18 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %19 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.tegra_bpmp_mrq* @devm_kzalloc(i32 %20, i32 24, i32 %21)
  store %struct.tegra_bpmp_mrq* %22, %struct.tegra_bpmp_mrq** %10, align 8
  %23 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %10, align 8
  %24 = icmp ne %struct.tegra_bpmp_mrq* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %51

28:                                               ; preds = %17
  %29 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %30 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %29, i32 0, i32 0
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %10, align 8
  %35 = getelementptr inbounds %struct.tegra_bpmp_mrq, %struct.tegra_bpmp_mrq* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %10, align 8
  %38 = getelementptr inbounds %struct.tegra_bpmp_mrq, %struct.tegra_bpmp_mrq* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %10, align 8
  %41 = getelementptr inbounds %struct.tegra_bpmp_mrq, %struct.tegra_bpmp_mrq* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.tegra_bpmp_mrq*, %struct.tegra_bpmp_mrq** %10, align 8
  %43 = getelementptr inbounds %struct.tegra_bpmp_mrq, %struct.tegra_bpmp_mrq* %42, i32 0, i32 1
  %44 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %45 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %44, i32 0, i32 1
  %46 = call i32 @list_add(i32* %43, i32* %45)
  %47 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %6, align 8
  %48 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %47, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %28, %25, %14
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.tegra_bpmp_mrq* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
