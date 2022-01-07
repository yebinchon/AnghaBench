; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_destroy_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_uinput.c_uinput_destroy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uinput_device = type { i32, %struct.input_dev* }
%struct.input_dev = type { i8*, i8* }

@UIST_NEW_DEVICE = common dso_local global i32 0, align 4
@UIST_CREATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uinput_device*)* @uinput_destroy_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uinput_destroy_device(%struct.uinput_device* %0) #0 {
  %2 = alloca %struct.uinput_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.uinput_device* %0, %struct.uinput_device** %2, align 8
  %7 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %8 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %7, i32 0, i32 1
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %11 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @UIST_NEW_DEVICE, align 4
  %14 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %15 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %17 = icmp ne %struct.input_dev* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  %22 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @UIST_CREATED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %30 = call i32 @uinput_flush_requests(%struct.uinput_device* %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = call i32 @input_unregister_device(%struct.input_dev* %31)
  br label %36

33:                                               ; preds = %18
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = call i32 @input_free_device(%struct.input_dev* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @kfree(i8* %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @kfree(i8* %39)
  %41 = load %struct.uinput_device*, %struct.uinput_device** %2, align 8
  %42 = getelementptr inbounds %struct.uinput_device, %struct.uinput_device* %41, i32 0, i32 1
  store %struct.input_dev* null, %struct.input_dev** %42, align 8
  br label %43

43:                                               ; preds = %36, %1
  ret void
}

declare dso_local i32 @uinput_flush_requests(%struct.uinput_device*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
