; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_hd.c_gb_hd_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_hd.c_gb_hd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_host_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gb_hd_add(%struct.gb_host_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_host_device*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_host_device* %0, %struct.gb_host_device** %3, align 8
  %5 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %6 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %5, i32 0, i32 0
  %7 = call i32 @device_add(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %14 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gb_svc_add(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %21 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %20, i32 0, i32 0
  %22 = call i32 @device_del(i32* %21)
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %12
  %25 = load %struct.gb_host_device*, %struct.gb_host_device** %3, align 8
  %26 = call i32 @trace_gb_hd_add(%struct.gb_host_device* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %19, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @gb_svc_add(i32) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @trace_gb_hd_add(%struct.gb_host_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
