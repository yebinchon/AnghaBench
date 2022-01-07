; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_send_cmd_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ims-pcu.c_ims_pcu_send_cmd_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ims_pcu = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IMS_PCU_CMD_WRITE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Sending 0x%02x command failed at chunk %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ims_pcu*, i32, i32, i32)* @ims_pcu_send_cmd_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ims_pcu_send_cmd_chunk(%struct.ims_pcu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ims_pcu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ims_pcu* %0, %struct.ims_pcu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %12 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %15 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %18 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_sndbulkpipe(i32 %16, i32 %21)
  %23 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %24 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @IMS_PCU_CMD_WRITE_TIMEOUT, align 4
  %28 = call i32 @usb_bulk_msg(i32 %13, i32 %22, i32 %25, i32 %26, i32* null, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load %struct.ims_pcu*, %struct.ims_pcu** %6, align 8
  %33 = getelementptr inbounds %struct.ims_pcu, %struct.ims_pcu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
