; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_arpc_in_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_arpc_in_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { %struct.urb**, %struct.TYPE_2__* }
%struct.urb = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NUM_ARPC_IN_URB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to submit arpc in-urb: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es2_ap_dev*)* @es2_arpc_in_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es2_arpc_in_enable(%struct.es2_ap_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.es2_ap_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %1
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NUM_ARPC_IN_URB, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %13 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %12, i32 0, i32 0
  %14 = load %struct.urb**, %struct.urb*** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.urb*, %struct.urb** %14, i64 %16
  %18 = load %struct.urb*, %struct.urb** %17, align 8
  store %struct.urb* %18, %struct.urb** %4, align 8
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @usb_submit_urb(%struct.urb* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %11
  %25 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %26 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %36

31:                                               ; preds = %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %57

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %52, %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %44 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %43, i32 0, i32 0
  %45 = load %struct.urb**, %struct.urb*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.urb*, %struct.urb** %45, i64 %47
  %49 = load %struct.urb*, %struct.urb** %48, align 8
  store %struct.urb* %49, %struct.urb** %4, align 8
  %50 = load %struct.urb*, %struct.urb** %4, align 8
  %51 = call i32 @usb_kill_urb(%struct.urb* %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %39

55:                                               ; preds = %39
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %35
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
