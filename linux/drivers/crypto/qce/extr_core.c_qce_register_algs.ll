; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_register_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_register_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_algo_ops = type { i32 (%struct.qce_device*)* }
%struct.qce_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@qce_ops = common dso_local global %struct.qce_algo_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qce_device*)* @qce_register_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qce_register_algs(%struct.qce_device* %0) #0 {
  %2 = alloca %struct.qce_device*, align 8
  %3 = alloca %struct.qce_algo_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qce_device* %0, %struct.qce_device** %2, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.qce_algo_ops**, %struct.qce_algo_ops*** @qce_ops, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.qce_algo_ops** %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.qce_algo_ops**, %struct.qce_algo_ops*** @qce_ops, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qce_algo_ops*, %struct.qce_algo_ops** %14, i64 %16
  %18 = load %struct.qce_algo_ops*, %struct.qce_algo_ops** %17, align 8
  store %struct.qce_algo_ops* %18, %struct.qce_algo_ops** %3, align 8
  %19 = load %struct.qce_algo_ops*, %struct.qce_algo_ops** %3, align 8
  %20 = getelementptr inbounds %struct.qce_algo_ops, %struct.qce_algo_ops* %19, i32 0, i32 0
  %21 = load i32 (%struct.qce_device*)*, i32 (%struct.qce_device*)** %20, align 8
  %22 = load %struct.qce_device*, %struct.qce_device** %2, align 8
  %23 = call i32 %21(%struct.qce_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %31

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %8

31:                                               ; preds = %26, %8
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.qce_algo_ops**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
