; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_ap_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_ap_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.es2_ap_dev = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @ap_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ap_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.es2_ap_dev*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.es2_ap_dev* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.es2_ap_dev* %5, %struct.es2_ap_dev** %3, align 8
  %6 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %7 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gb_hd_del(i32 %8)
  %10 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %11 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %12 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %11, i32 0, i32 0
  %13 = call i32 @es2_cport_in_disable(%struct.es2_ap_dev* %10, i32* %12)
  %14 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %15 = call i32 @es2_arpc_in_disable(%struct.es2_ap_dev* %14)
  %16 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %3, align 8
  %17 = call i32 @es2_destroy(%struct.es2_ap_dev* %16)
  ret void
}

declare dso_local %struct.es2_ap_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @gb_hd_del(i32) #1

declare dso_local i32 @es2_cport_in_disable(%struct.es2_ap_dev*, i32*) #1

declare dso_local i32 @es2_arpc_in_disable(%struct.es2_ap_dev*) #1

declare dso_local i32 @es2_destroy(%struct.es2_ap_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
