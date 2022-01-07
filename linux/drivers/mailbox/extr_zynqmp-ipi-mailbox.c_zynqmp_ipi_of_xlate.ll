; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_zynqmp-ipi-mailbox.c_zynqmp_ipi_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { i32 }
%struct.mbox_controller = type { %struct.mbox_chan*, %struct.device* }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32* }

@IPI_MB_CHNL_TX = common dso_local global i32 0, align 4
@IPI_MB_CHNL_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"req chnl failure: invalid chnl type %u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbox_chan* (%struct.mbox_controller*, %struct.of_phandle_args*)* @zynqmp_ipi_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbox_chan* @zynqmp_ipi_of_xlate(%struct.mbox_controller* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.mbox_chan*, align 8
  %4 = alloca %struct.mbox_controller*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.mbox_chan*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.mbox_controller* %0, %struct.mbox_controller** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %9 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %10 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IPI_MB_CHNL_TX, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @IPI_MB_CHNL_RX, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.mbox_chan* @ERR_PTR(i32 %29)
  store %struct.mbox_chan* %30, %struct.mbox_chan** %3, align 8
  br label %39

31:                                               ; preds = %20, %2
  %32 = load %struct.mbox_controller*, %struct.mbox_controller** %4, align 8
  %33 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %32, i32 0, i32 0
  %34 = load %struct.mbox_chan*, %struct.mbox_chan** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %34, i64 %36
  store %struct.mbox_chan* %37, %struct.mbox_chan** %6, align 8
  %38 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  store %struct.mbox_chan* %38, %struct.mbox_chan** %3, align 8
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.mbox_chan*, %struct.mbox_chan** %3, align 8
  ret %struct.mbox_chan* %40
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.mbox_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
