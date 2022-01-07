; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_free_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_free_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es2_ap_dev = type { i32*, i32, %struct.urb** }
%struct.urb = type { i32 }

@NUM_CPORT_OUT_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es2_ap_dev*, %struct.urb*)* @free_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_urb(%struct.es2_ap_dev* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.es2_ap_dev*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.es2_ap_dev* %0, %struct.es2_ap_dev** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %7 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %8 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NUM_CPORT_OUT_URB, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %18 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %17, i32 0, i32 2
  %19 = load %struct.urb**, %struct.urb*** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.urb*, %struct.urb** %19, i64 %21
  %23 = load %struct.urb*, %struct.urb** %22, align 8
  %24 = icmp eq %struct.urb* %16, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %27 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  store %struct.urb* null, %struct.urb** %4, align 8
  br label %36

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %11

36:                                               ; preds = %25, %11
  %37 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %38 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %37, i32 0, i32 1
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.urb*, %struct.urb** %4, align 8
  %42 = call i32 @usb_free_urb(%struct.urb* %41)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
