; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/qcom/extr_smd-rpm.c_qcom_icc_rpm_smd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/qcom/extr_smd-rpm.c_qcom_icc_rpm_smd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icc_rpm_smd_req = type { i32, i32, i32 }

@RPM_KEY_BW = common dso_local global i32 0, align 4
@icc_smd_rpm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qcom_icc_rpm_smd_send(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.icc_rpm_smd_req, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.icc_rpm_smd_req, %struct.icc_rpm_smd_req* %9, i32 0, i32 0
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds %struct.icc_rpm_smd_req, %struct.icc_rpm_smd_req* %9, i32 0, i32 1
  %14 = call i32 @cpu_to_le32(i32 4)
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.icc_rpm_smd_req, %struct.icc_rpm_smd_req* %9, i32 0, i32 2
  %16 = load i32, i32* @RPM_KEY_BW, align 4
  %17 = call i32 @cpu_to_le32(i32 %16)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @icc_smd_rpm, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @qcom_rpm_smd_write(i32 %18, i32 %19, i32 %20, i32 %21, %struct.icc_rpm_smd_req* %9, i32 12)
  ret i32 %22
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qcom_rpm_smd_write(i32, i32, i32, i32, %struct.icc_rpm_smd_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
