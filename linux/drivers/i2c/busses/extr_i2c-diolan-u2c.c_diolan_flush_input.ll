; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_flush_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_flush_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_diolan_u2c = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DIOLAN_USB_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to flush input buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_diolan_u2c*)* @diolan_flush_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diolan_flush_input(%struct.i2c_diolan_u2c* %0) #0 {
  %2 = alloca %struct.i2c_diolan_u2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_diolan_u2c* %0, %struct.i2c_diolan_u2c** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %35

9:                                                ; preds = %6
  store i32 0, i32* %4, align 4
  %10 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %11 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %14 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %17 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_rcvbulkpipe(i32 %15, i32 %18)
  %20 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DIOLAN_USB_TIMEOUT, align 4
  %24 = call i32 @usb_bulk_msg(i32 %12, i32 %19, i32 %22, i32 4, i32* %4, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %9
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %9
  br label %35

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %6

35:                                               ; preds = %30, %6
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %2, align 8
  %40 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %38, %35
  ret void
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
