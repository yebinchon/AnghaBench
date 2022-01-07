; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_set_attn_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_set_attn_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32 }
%struct.rmi_driver_data = type { i32, i32 }
%struct.rmi4_attn_data = type { i64, i64, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmi_set_attn_data(%struct.rmi_device* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.rmi_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rmi_driver_data*, align 8
  %10 = alloca %struct.rmi4_attn_data, align 8
  %11 = alloca i8*, align 8
  store %struct.rmi_device* %0, %struct.rmi_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.rmi_device*, %struct.rmi_device** %5, align 8
  %13 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %12, i32 0, i32 0
  %14 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %13)
  store %struct.rmi_driver_data* %14, %struct.rmi_driver_data** %9, align 8
  %15 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %16 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %38

20:                                               ; preds = %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i8* @kmemdup(i8* %21, i64 %22, i32 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %38

28:                                               ; preds = %20
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.rmi4_attn_data, %struct.rmi4_attn_data* %10, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.rmi4_attn_data, %struct.rmi4_attn_data* %10, i32 0, i32 1
  store i64 %31, i64* %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds %struct.rmi4_attn_data, %struct.rmi4_attn_data* %10, i32 0, i32 2
  store i8* %33, i8** %34, align 8
  %35 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %9, align 8
  %36 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %35, i32 0, i32 0
  %37 = call i32 @kfifo_put(i32* %36, %struct.rmi4_attn_data* byval(%struct.rmi4_attn_data) align 8 %10)
  br label %38

38:                                               ; preds = %28, %27, %19
  ret void
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i8* @kmemdup(i8*, i64, i32) #1

declare dso_local i32 @kfifo_put(i32*, %struct.rmi4_attn_data* byval(%struct.rmi4_attn_data) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
