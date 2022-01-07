; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_alloc_set_mac_ipaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_alloc_set_mac_ipaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, i32*)* @i40iw_alloc_set_mac_ipaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_alloc_set_mac_ipaddr(%struct.i40iw_device* %0, i32* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %8 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %7, i32 0, i32 0
  %9 = call i32 @i40iw_alloc_local_mac_ipaddr_entry(%struct.i40iw_device* %6, i64* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @i40iw_add_mac_ipaddr_entry(%struct.i40iw_device* %13, i32* %14, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %3, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @i40iw_del_macip_entry(%struct.i40iw_device* %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %12
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @i40iw_alloc_local_mac_ipaddr_entry(%struct.i40iw_device*, i64*) #1

declare dso_local i32 @i40iw_add_mac_ipaddr_entry(%struct.i40iw_device*, i32*, i32) #1

declare dso_local i32 @i40iw_del_macip_entry(%struct.i40iw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
