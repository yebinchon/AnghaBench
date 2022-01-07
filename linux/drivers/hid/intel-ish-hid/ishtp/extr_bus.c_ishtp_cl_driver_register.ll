; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_bus.c_ishtp_cl_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_cl_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, %struct.module*, i32 }
%struct.module = type { i32 }

@ishtp_device_ready = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ishtp_cl_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_cl_driver_register(%struct.ishtp_cl_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ishtp_cl_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.ishtp_cl_driver* %0, %struct.ishtp_cl_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load i32, i32* @ishtp_device_ready, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %4, align 8
  %14 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %4, align 8
  %17 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load %struct.module*, %struct.module** %5, align 8
  %20 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %4, align 8
  %21 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.module* %19, %struct.module** %22, align 8
  %23 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %4, align 8
  %24 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* @ishtp_cl_bus_type, i32** %25, align 8
  %26 = load %struct.ishtp_cl_driver*, %struct.ishtp_cl_driver** %4, align 8
  %27 = getelementptr inbounds %struct.ishtp_cl_driver, %struct.ishtp_cl_driver* %26, i32 0, i32 0
  %28 = call i32 @driver_register(%struct.TYPE_2__* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %12
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %31, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
