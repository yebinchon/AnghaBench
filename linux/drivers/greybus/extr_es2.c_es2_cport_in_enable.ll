; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_in_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_in_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.es2_cport_in = type { %struct.urb** }
%struct.urb = type { i32 }

@NUM_CPORT_IN_URB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to submit in-urb: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es2_ap_dev*, %struct.es2_cport_in*)* @es2_cport_in_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es2_cport_in_enable(%struct.es2_ap_dev* %0, %struct.es2_cport_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.es2_ap_dev*, align 8
  %5 = alloca %struct.es2_cport_in*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %4, align 8
  store %struct.es2_cport_in* %1, %struct.es2_cport_in** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %34, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @NUM_CPORT_IN_URB, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.es2_cport_in*, %struct.es2_cport_in** %5, align 8
  %15 = getelementptr inbounds %struct.es2_cport_in, %struct.es2_cport_in* %14, i32 0, i32 0
  %16 = load %struct.urb**, %struct.urb*** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.urb*, %struct.urb** %16, i64 %18
  %20 = load %struct.urb*, %struct.urb** %19, align 8
  store %struct.urb* %20, %struct.urb** %6, align 8
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @usb_submit_urb(%struct.urb* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %28 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %38

33:                                               ; preds = %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %9

37:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %59

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %54, %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.es2_cport_in*, %struct.es2_cport_in** %5, align 8
  %46 = getelementptr inbounds %struct.es2_cport_in, %struct.es2_cport_in* %45, i32 0, i32 0
  %47 = load %struct.urb**, %struct.urb*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.urb*, %struct.urb** %47, i64 %49
  %51 = load %struct.urb*, %struct.urb** %50, align 8
  store %struct.urb* %51, %struct.urb** %6, align 8
  %52 = load %struct.urb*, %struct.urb** %6, align 8
  %53 = call i32 @usb_kill_urb(%struct.urb* %52)
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  br label %41

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
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
