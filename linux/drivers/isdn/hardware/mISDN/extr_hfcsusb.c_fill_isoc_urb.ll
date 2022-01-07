; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_fill_isoc_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcsusb.c_fill_isoc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.usb_device = type { i32 }

@URB_ISO_ASAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, %struct.usb_device*, i32, i8*, i32, i32, i32, i32, i8*)* @fill_isoc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_isoc_urb(%struct.urb* %0, %struct.usb_device* %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca %struct.urb*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %10, align 8
  store %struct.usb_device* %1, %struct.usb_device** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %20 = load %struct.urb*, %struct.urb** %10, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i8*, i8** %13, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %14, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %17, align 4
  %28 = load i8*, i8** %18, align 8
  %29 = call i32 @usb_fill_bulk_urb(%struct.urb* %20, %struct.usb_device* %21, i32 %22, i8* %23, i32 %26, i32 %27, i8* %28)
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.urb*, %struct.urb** %10, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @URB_ISO_ASAP, align 4
  %34 = load %struct.urb*, %struct.urb** %10, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.urb*, %struct.urb** %10, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load %struct.urb*, %struct.urb** %10, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %71, %9
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %19, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load %struct.urb*, %struct.urb** %10, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %19, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.urb*, %struct.urb** %10, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %56, i32* %63, align 4
  %64 = load %struct.urb*, %struct.urb** %10, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %45
  %72 = load i32, i32* %19, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %19, align 4
  br label %41

74:                                               ; preds = %41
  ret void
}

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
