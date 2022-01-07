; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_message_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_message_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_message = type { %struct.urb*, %struct.TYPE_4__* }
%struct.urb = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gb_host_device* }
%struct.gb_host_device = type { i32 }
%struct.es2_ap_dev = type { i32*, i32, %struct.urb** }

@NUM_CPORT_OUT_URB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_message*)* @message_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @message_cancel(%struct.gb_message* %0) #0 {
  %2 = alloca %struct.gb_message*, align 8
  %3 = alloca %struct.gb_host_device*, align 8
  %4 = alloca %struct.es2_ap_dev*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.gb_message* %0, %struct.gb_message** %2, align 8
  %7 = load %struct.gb_message*, %struct.gb_message** %2, align 8
  %8 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %12, align 8
  store %struct.gb_host_device* %13, %struct.gb_host_device** %3, align 8
  %14 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %15 = call %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %14)
  store %struct.es2_ap_dev* %15, %struct.es2_ap_dev** %4, align 8
  %16 = call i32 (...) @might_sleep()
  %17 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %18 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.gb_message*, %struct.gb_message** %2, align 8
  %21 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %20, i32 0, i32 0
  %22 = load %struct.urb*, %struct.urb** %21, align 8
  store %struct.urb* %22, %struct.urb** %5, align 8
  %23 = load %struct.urb*, %struct.urb** %5, align 8
  %24 = call i32 @usb_get_urb(%struct.urb* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %47, %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @NUM_CPORT_OUT_URB, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.urb*, %struct.urb** %5, align 8
  %31 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %32 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %31, i32 0, i32 2
  %33 = load %struct.urb**, %struct.urb*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.urb*, %struct.urb** %33, i64 %35
  %37 = load %struct.urb*, %struct.urb** %36, align 8
  %38 = icmp eq %struct.urb* %30, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %41 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 1, i32* %45, align 4
  br label %50

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %25

50:                                               ; preds = %39, %25
  %51 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %52 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock_irq(i32* %52)
  %54 = load %struct.urb*, %struct.urb** %5, align 8
  %55 = call i32 @usb_kill_urb(%struct.urb* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @NUM_CPORT_OUT_URB, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %50
  %60 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %61 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %60, i32 0, i32 1
  %62 = call i32 @spin_lock_irq(i32* %61)
  %63 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %64 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %4, align 8
  %70 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %69, i32 0, i32 1
  %71 = call i32 @spin_unlock_irq(i32* %70)
  br label %72

72:                                               ; preds = %59, %50
  %73 = load %struct.urb*, %struct.urb** %5, align 8
  %74 = call i32 @usb_free_urb(%struct.urb* %73)
  ret void
}

declare dso_local %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @usb_get_urb(%struct.urb*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
