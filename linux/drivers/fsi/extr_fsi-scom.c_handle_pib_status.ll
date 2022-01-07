; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_handle_pib_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-scom.c_handle_pib_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scom_device = type { i32 }

@SCOM_PIB_SUCCESS = common dso_local global i32 0, align 4
@SCOM_PIB_BLOCKED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCOM_FSI2PIB_RESET_REG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scom_device*, i32)* @handle_pib_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_pib_status(%struct.scom_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scom_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.scom_device* %0, %struct.scom_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SCOM_PIB_SUCCESS, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SCOM_PIB_BLOCKED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %11
  %19 = load %struct.scom_device*, %struct.scom_device** %4, align 8
  %20 = getelementptr inbounds %struct.scom_device, %struct.scom_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SCOM_FSI2PIB_RESET_REG, align 4
  %23 = call i32 @fsi_device_write(i32 %21, i32 %22, i32* %6, i32 4)
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %35 [
    i32 131, label %25
    i32 133, label %28
    i32 128, label %31
    i32 129, label %34
    i32 132, label %34
    i32 130, label %34
  ]

25:                                               ; preds = %18
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %18
  %29 = load i32, i32* @ENXIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %18
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %18, %18, %18
  br label %35

35:                                               ; preds = %18, %34
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %31, %28, %25, %15, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @fsi_device_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
