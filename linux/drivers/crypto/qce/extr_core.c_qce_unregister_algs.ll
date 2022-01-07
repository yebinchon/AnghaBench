; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_unregister_algs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_core.c_qce_unregister_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qce_algo_ops = type { i32 (%struct.qce_device*)* }
%struct.qce_device = type { i32 }

@qce_ops = common dso_local global %struct.qce_algo_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qce_device*)* @qce_unregister_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qce_unregister_algs(%struct.qce_device* %0) #0 {
  %2 = alloca %struct.qce_device*, align 8
  %3 = alloca %struct.qce_algo_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.qce_device* %0, %struct.qce_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.qce_algo_ops**, %struct.qce_algo_ops*** @qce_ops, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.qce_algo_ops** %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load %struct.qce_algo_ops**, %struct.qce_algo_ops*** @qce_ops, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.qce_algo_ops*, %struct.qce_algo_ops** %11, i64 %13
  %15 = load %struct.qce_algo_ops*, %struct.qce_algo_ops** %14, align 8
  store %struct.qce_algo_ops* %15, %struct.qce_algo_ops** %3, align 8
  %16 = load %struct.qce_algo_ops*, %struct.qce_algo_ops** %3, align 8
  %17 = getelementptr inbounds %struct.qce_algo_ops, %struct.qce_algo_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.qce_device*)*, i32 (%struct.qce_device*)** %17, align 8
  %19 = load %struct.qce_device*, %struct.qce_device** %2, align 8
  %20 = call i32 %18(%struct.qce_device* %19)
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.qce_algo_ops**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
