; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_es2.c_es2_cport_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32 }
%struct.es2_ap_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_host_device*, i32)* @es2_cport_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es2_cport_release(%struct.gb_host_device* %0, i32 %1) #0 {
  %3 = alloca %struct.gb_host_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.es2_ap_dev*, align 8
  store %struct.gb_host_device* %0, %struct.gb_host_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %7 = call %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device* %6)
  store %struct.es2_ap_dev* %7, %struct.es2_ap_dev** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %12 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.es2_ap_dev*, %struct.es2_ap_dev** %5, align 8
  %11 = getelementptr inbounds %struct.es2_ap_dev, %struct.es2_ap_dev* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %14 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %13, i32 0, i32 0
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ida_simple_remove(i32* %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %9
  ret void
}

declare dso_local %struct.es2_ap_dev* @hd_to_es2(%struct.gb_host_device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
