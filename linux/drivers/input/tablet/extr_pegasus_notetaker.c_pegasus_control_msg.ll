; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_control_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_pegasus_notetaker.c_pegasus_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pegasus = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NOTETAKER_REPORT_ID = common dso_local global i32 0, align 4
@USB_REQ_SET_REPORT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"control msg error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pegasus*, i32*, i32)* @pegasus_control_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pegasus_control_msg(%struct.pegasus* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pegasus*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.pegasus* %0, %struct.pegasus** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 %14, i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %75

22:                                               ; preds = %3
  %23 = load i32, i32* @NOTETAKER_REPORT_ID, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memcpy(i32* %30, i32* %31, i32 %32)
  %34 = load %struct.pegasus*, %struct.pegasus** %5, align 8
  %35 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.pegasus*, %struct.pegasus** %5, align 8
  %38 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %39, i32 0)
  %41 = load i32, i32* @USB_REQ_SET_REPORT, align 4
  %42 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %43 = load i32, i32* @USB_DIR_OUT, align 4
  %44 = or i32 %42, %43
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %48 = call i32 @usb_control_msg(%struct.TYPE_3__* %36, i32 %40, i32 %41, i32 %44, i32 0, i32 0, i32* %45, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @kfree(i32* %49)
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %22
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  br label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  br label %65

65:                                               ; preds = %62, %60
  %66 = phi i32 [ %61, %60 ], [ %64, %62 ]
  store i32 %66, i32* %10, align 4
  %67 = load %struct.pegasus*, %struct.pegasus** %5, align 8
  %68 = getelementptr inbounds %struct.pegasus, %struct.pegasus* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %75

74:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %65, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
