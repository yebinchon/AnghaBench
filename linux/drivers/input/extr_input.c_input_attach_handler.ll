; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_attach_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_attach_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.input_handler = type { i32 (%struct.input_handler*, %struct.input_dev.0*, %struct.input_device_id*)*, i32 }
%struct.input_dev.0 = type opaque
%struct.input_device_id = type opaque
%struct.input_device_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"failed to attach handler %s to device %s, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.input_handler*)* @input_attach_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_attach_handler(%struct.input_dev* %0, %struct.input_handler* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.input_handler*, align 8
  %6 = alloca %struct.input_device_id.1*, align 8
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store %struct.input_handler* %1, %struct.input_handler** %5, align 8
  %8 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %9 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %10 = call %struct.input_device_id.1* @input_match_device(%struct.input_handler* %8, %struct.input_dev* %9)
  store %struct.input_device_id.1* %10, %struct.input_device_id.1** %6, align 8
  %11 = load %struct.input_device_id.1*, %struct.input_device_id.1** %6, align 8
  %12 = icmp ne %struct.input_device_id.1* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %18 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %17, i32 0, i32 0
  %19 = load i32 (%struct.input_handler*, %struct.input_dev.0*, %struct.input_device_id*)*, i32 (%struct.input_handler*, %struct.input_dev.0*, %struct.input_device_id*)** %18, align 8
  %20 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %21 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %22 = bitcast %struct.input_dev* %21 to %struct.input_dev.0*
  %23 = load %struct.input_device_id.1*, %struct.input_device_id.1** %6, align 8
  %24 = bitcast %struct.input_device_id.1* %23 to %struct.input_device_id*
  %25 = call i32 %19(%struct.input_handler* %20, %struct.input_dev.0* %22, %struct.input_device_id* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %16
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.input_handler*, %struct.input_handler** %5, align 8
  %35 = getelementptr inbounds %struct.input_handler, %struct.input_handler* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @kobject_name(i32* %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %28, %16
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.input_device_id.1* @input_match_device(%struct.input_handler*, %struct.input_dev*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
