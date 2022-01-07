; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_apm-power.c_apmpower_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_apm-power.c_apmpower_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handler = type { i32 }
%struct.input_dev = type { i32 }
%struct.input_device_id = type { i32 }
%struct.input_handle = type { i8*, %struct.input_handler*, %struct.input_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"apm-power\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Failed to register input power handler, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Failed to open input power device, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)* @apmpower_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apmpower_connect(%struct.input_handler* %0, %struct.input_dev* %1, %struct.input_device_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_handler*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.input_device_id*, align 8
  %8 = alloca %struct.input_handle*, align 8
  %9 = alloca i32, align 4
  store %struct.input_handler* %0, %struct.input_handler** %5, align 8
  store %struct.input_dev* %1, %struct.input_dev** %6, align 8
  store %struct.input_device_id* %2, %struct.input_device_id** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.input_handle* @kzalloc(i32 24, i32 %10)
  store %struct.input_handle* %11, %struct.input_handle** %8, align 8
  %12 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %13 = icmp ne %struct.input_handle* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %19 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %20 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %19, i32 0, i32 2
  store %struct.input_dev* %18, %struct.input_dev** %20, align 8
  %21 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %22 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %23 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %22, i32 0, i32 1
  store %struct.input_handler* %21, %struct.input_handler** %23, align 8
  %24 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %25 = getelementptr inbounds %struct.input_handle, %struct.input_handle* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %27 = call i32 @input_register_handle(%struct.input_handle* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %34 = call i32 @kfree(%struct.input_handle* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %50

36:                                               ; preds = %17
  %37 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %38 = call i32 @input_open_device(%struct.input_handle* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %45 = call i32 @input_unregister_handle(%struct.input_handle* %44)
  %46 = load %struct.input_handle*, %struct.input_handle** %8, align 8
  %47 = call i32 @kfree(%struct.input_handle* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %41, %30, %14
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.input_handle* @kzalloc(i32, i32) #1

declare dso_local i32 @input_register_handle(%struct.input_handle*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @kfree(%struct.input_handle*) #1

declare dso_local i32 @input_open_device(%struct.input_handle*) #1

declare dso_local i32 @input_unregister_handle(%struct.input_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
