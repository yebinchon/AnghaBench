; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_pf2vf_msg.c_adf_iov_putmsg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_adf_pf2vf_msg.c_adf_iov_putmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_accel_dev = type { i32 }

@ADF_IOV_MSG_RETRY_DELAY = common dso_local global i32 0, align 4
@ADF_IOV_MSG_MAX_RETRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adf_iov_putmsg(%struct.adf_accel_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.adf_accel_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.adf_accel_dev* %0, %struct.adf_accel_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %28, %3
  %10 = load %struct.adf_accel_dev*, %struct.adf_accel_dev** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @__adf_iov_putmsg(%struct.adf_accel_dev* %10, i64 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* @ADF_IOV_MSG_RETRY_DELAY, align 4
  %18 = call i32 @msleep(i32 %17)
  br label %19

19:                                               ; preds = %16, %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* @ADF_IOV_MSG_MAX_RETRIES, align 8
  %27 = icmp slt i64 %24, %26
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %9, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i32 @__adf_iov_putmsg(%struct.adf_accel_dev*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
