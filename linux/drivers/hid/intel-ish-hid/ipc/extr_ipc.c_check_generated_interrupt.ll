; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_check_generated_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_check_generated_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CHV_DEVICE_ID = common dso_local global i64 0, align 8
@IPC_REG_PISR_CHV_AB = common dso_local global i32 0, align 4
@IPC_REG_PISR_BXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ishtp_device*)* @check_generated_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_generated_interrupt(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  store i32 1, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %6 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CHV_DEVICE_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %14 = load i32, i32* @IPC_REG_PISR_CHV_AB, align 4
  %15 = call i64 @ish_reg_read(%struct.ishtp_device* %13, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @IPC_INT_FROM_ISH_TO_HOST_CHV_AB(i64 %16)
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %1
  %19 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %20 = load i32, i32* @IPC_REG_PISR_BXT, align 4
  %21 = call i64 @ish_reg_read(%struct.ishtp_device* %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %31 = load i32, i32* @IPC_REG_PISR_BXT, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ish_reg_write(%struct.ishtp_device* %30, i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %18
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @ish_reg_read(%struct.ishtp_device*, i32) #1

declare dso_local i32 @IPC_INT_FROM_ISH_TO_HOST_CHV_AB(i64) #1

declare dso_local i32 @ish_reg_write(%struct.ishtp_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
