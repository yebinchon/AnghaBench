; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ipc/extr_ipc.c_ish_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i64, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IPC_REG_ISH2HOST_DRBL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ISHTP_DEV_DISABLED = common dso_local global i64 0, align 8
@IPC_PAYLOAD_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"IPC hdr - bad length: %u; dropped\0A\00", align 1
@IPC_REG_ISH_HOST_FWSTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ish_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ishtp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ishtp_device*
  store %struct.ishtp_device* %10, %struct.ishtp_device** %6, align 8
  %11 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %12 = call i32 @check_generated_interrupt(%struct.ishtp_device* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %79

17:                                               ; preds = %2
  %18 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %19 = load i32, i32* @IPC_REG_ISH2HOST_DRBL, align 4
  %20 = call i32 @ish_reg_read(%struct.ishtp_device* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @IPC_IS_BUSY(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %79

26:                                               ; preds = %17
  %27 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %28 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ISHTP_DEV_DISABLED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %3, align 4
  br label %79

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @IPC_HEADER_GET_LENGTH(i32 %35)
  %37 = load i64, i64* @IPC_PAYLOAD_SIZE, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %41 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @IPC_HEADER_GET_LENGTH(i32 %43)
  %45 = trunc i64 %44 to i32
  %46 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %59

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @IPC_HEADER_GET_PROTOCOL(i32 %48)
  switch i32 %49, label %50 [
    i32 128, label %51
    i32 129, label %55
  ]

50:                                               ; preds = %47
  br label %58

51:                                               ; preds = %47
  %52 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @recv_ipc(%struct.ishtp_device* %52, i32 %53)
  br label %58

55:                                               ; preds = %47
  %56 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %57 = call i32 @ishtp_recv(%struct.ishtp_device* %56)
  br label %58

58:                                               ; preds = %55, %51, %50
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %61 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @IPC_HEADER_GET_LENGTH(i32 %64)
  %66 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %67 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  %72 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %73 = load i32, i32* @IPC_REG_ISH2HOST_DRBL, align 4
  %74 = call i32 @ish_reg_write(%struct.ishtp_device* %72, i32 %73, i32 0)
  %75 = load %struct.ishtp_device*, %struct.ishtp_device** %6, align 8
  %76 = load i32, i32* @IPC_REG_ISH_HOST_FWSTS, align 4
  %77 = call i32 @ish_reg_read(%struct.ishtp_device* %75, i32 %76)
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %59, %32, %24, %15
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @check_generated_interrupt(%struct.ishtp_device*) #1

declare dso_local i32 @ish_reg_read(%struct.ishtp_device*, i32) #1

declare dso_local i32 @IPC_IS_BUSY(i32) #1

declare dso_local i64 @IPC_HEADER_GET_LENGTH(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @IPC_HEADER_GET_PROTOCOL(i32) #1

declare dso_local i32 @recv_ipc(%struct.ishtp_device*, i32) #1

declare dso_local i32 @ishtp_recv(%struct.ishtp_device*) #1

declare dso_local i32 @ish_reg_write(%struct.ishtp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
