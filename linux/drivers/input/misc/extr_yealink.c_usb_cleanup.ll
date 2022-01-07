; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_yealink.c_usb_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_yealink.c_usb_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yealink_dev = type { i32, i32, i32, i32, i32, %struct.yealink_dev*, i32, i32, i64 }

@USB_PKT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.yealink_dev*, i32)* @usb_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_cleanup(%struct.yealink_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.yealink_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.yealink_dev* %0, %struct.yealink_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %7 = icmp eq %struct.yealink_dev* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %3, align 4
  br label %67

10:                                               ; preds = %2
  %11 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %12 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %20 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @input_free_device(i64 %21)
  br label %28

23:                                               ; preds = %15
  %24 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %25 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @input_unregister_device(i64 %26)
  br label %28

28:                                               ; preds = %23, %18
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %31 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_free_urb(i32 %32)
  %34 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %35 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @usb_free_urb(i32 %36)
  %38 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %39 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %38, i32 0, i32 5
  %40 = load %struct.yealink_dev*, %struct.yealink_dev** %39, align 8
  %41 = call i32 @kfree(%struct.yealink_dev* %40)
  %42 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %43 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @USB_PKT_LEN, align 4
  %46 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %47 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %50 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_free_coherent(i32 %44, i32 %45, i32 %48, i32 %51)
  %53 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %54 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @USB_PKT_LEN, align 4
  %57 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %58 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %61 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @usb_free_coherent(i32 %55, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.yealink_dev*, %struct.yealink_dev** %4, align 8
  %65 = call i32 @kfree(%struct.yealink_dev* %64)
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %29, %8
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @input_free_device(i64) #1

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.yealink_dev*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
