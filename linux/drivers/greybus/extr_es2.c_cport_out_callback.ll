; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_cport_out_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_cport_out_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.gb_message* }
%struct.gb_message = type { i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gb_host_device* }
%struct.gb_host_device = type { i32 }
%struct.es2_ap_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @cport_out_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cport_out_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.gb_message*, align 8
  %4 = alloca %struct.gb_host_device*, align 8
  %5 = alloca %struct.es2_ap_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load %struct.gb_message*, %struct.gb_message** %9, align 8
  store %struct.gb_message* %10, %struct.gb_message** %3, align 8
  %11 = load %struct.gb_message*, %struct.gb_message** %3, align 8
  %12 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.gb_host_device*, %struct.gb_host_device** %16, align 8
  store %struct.gb_host_device* %17, %struct.gb_host_device** %4, align 8
  %18 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %19 = call %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %18)
  store %struct.es2_ap_dev* %19, %struct.es2_ap_dev** %5, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = call i32 @check_urb_status(%struct.urb* %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.gb_message*, %struct.gb_message** %3, align 8
  %23 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gb_message_cport_clear(i32 %24)
  %26 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %5, align 8
  %27 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.gb_message*, %struct.gb_message** %3, align 8
  %31 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %5, align 8
  %33 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.gb_host_device*, %struct.gb_host_device** %4, align 8
  %37 = load %struct.gb_message*, %struct.gb_message** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @greybus_message_sent(%struct.gb_host_device* %36, %struct.gb_message* %37, i32 %38)
  %40 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %5, align 8
  %41 = load %struct.urb*, %struct.urb** %2, align 8
  %42 = call i32 @free_urb(%struct.es2_ap_dev* %40, %struct.urb* %41)
  ret void
}

declare dso_local %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i32 @check_urb_status(%struct.urb*) #1

declare dso_local i32 @gb_message_cport_clear(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @greybus_message_sent(%struct.gb_host_device*, %struct.gb_message*, i32) #1

declare dso_local i32 @free_urb(%struct.es2_ap_dev*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
