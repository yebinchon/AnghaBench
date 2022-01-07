; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_reset_attn_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-rmi.c_rmi_reset_attn_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.rmi_data = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rmi_device* }
%struct.rmi_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rmi_device*)* }

@RMI_MODE_ATTN_REPORTS = common dso_local global i32 0, align 4
@RMI_STARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @rmi_reset_attn_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_reset_attn_mode(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.rmi_data*, align 8
  %5 = alloca %struct.rmi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = call %struct.rmi_data* @hid_get_drvdata(%struct.hid_device* %7)
  store %struct.rmi_data* %8, %struct.rmi_data** %4, align 8
  %9 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %10 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.rmi_device*, %struct.rmi_device** %11, align 8
  store %struct.rmi_device* %12, %struct.rmi_device** %5, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = load i32, i32* @RMI_MODE_ATTN_REPORTS, align 4
  %15 = call i32 @rmi_set_mode(%struct.hid_device* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @RMI_STARTED, align 4
  %22 = load %struct.rmi_data*, %struct.rmi_data** %4, align 8
  %23 = getelementptr inbounds %struct.rmi_data, %struct.rmi_data* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %28 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.rmi_device*)*, i32 (%struct.rmi_device*)** %30, align 8
  %32 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %33 = call i32 %31(%struct.rmi_device* %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %26, %20
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.rmi_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @rmi_set_mode(%struct.hid_device*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
