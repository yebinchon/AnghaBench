; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-32.c___qcom_scm_is_call_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_qcom_scm-32.c___qcom_scm_is_call_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@QCOM_SCM_SVC_INFO = common dso_local global i32 0, align 4
@QCOM_IS_CALL_AVAIL_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qcom_scm_is_call_available(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 10
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @cpu_to_le32(i32 %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i32, i32* @QCOM_SCM_SVC_INFO, align 4
  %18 = load i32, i32* @QCOM_IS_CALL_AVAIL_CMD, align 4
  %19 = call i32 @qcom_scm_call(%struct.device* %16, i32 %17, i32 %18, i32* %9, i32 4, i32* %10, i32 4)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qcom_scm_call(%struct.device*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
