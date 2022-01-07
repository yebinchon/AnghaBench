; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_handle_fsi2pib_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_handle_fsi2pib_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scom_device = type { i32 }

@SCOM_STATUS_PROTECTION = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SCOM_STATUS_PARITY = common dso_local global i32 0, align 4
@SCOM_FSI2PIB_RESET_REG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SCOM_STATUS_PIB_ABORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scom_device*, i32)* @handle_fsi2pib_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_fsi2pib_status(%struct.scom_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scom_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scom_device* %0, %struct.scom_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SCOM_STATUS_PROTECTION, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SCOM_STATUS_PARITY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.scom_device*, %struct.scom_device** %4, align 8
  %21 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SCOM_FSI2PIB_RESET_REG, align 4
  %24 = call i32 @fsi_device_write(i32 %22, i32 %23, i32* %6, i32 4)
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %36

27:                                               ; preds = %14
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @SCOM_STATUS_PIB_ABORT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %32, %19, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @fsi_device_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
