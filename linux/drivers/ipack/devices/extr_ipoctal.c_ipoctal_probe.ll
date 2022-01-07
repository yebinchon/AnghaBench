; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipack_device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipoctal = type { %struct.ipack_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipack_device*)* @ipoctal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoctal_probe(%struct.ipack_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipack_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipoctal*, align 8
  store %struct.ipack_device* %0, %struct.ipack_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ipoctal* @kzalloc(i32 8, i32 %6)
  store %struct.ipoctal* %7, %struct.ipoctal** %5, align 8
  %8 = load %struct.ipoctal*, %struct.ipoctal** %5, align 8
  %9 = icmp eq %struct.ipoctal* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %15 = load %struct.ipoctal*, %struct.ipoctal** %5, align 8
  %16 = getelementptr inbounds %struct.ipoctal, %struct.ipoctal* %15, i32 0, i32 0
  store %struct.ipack_device* %14, %struct.ipack_device** %16, align 8
  %17 = load %struct.ipoctal*, %struct.ipoctal** %5, align 8
  %18 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %19 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %24 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ipoctal_inst_slot(%struct.ipoctal* %17, i32 %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %35

30:                                               ; preds = %13
  %31 = load %struct.ipack_device*, %struct.ipack_device** %3, align 8
  %32 = getelementptr inbounds %struct.ipack_device, %struct.ipack_device* %31, i32 0, i32 0
  %33 = load %struct.ipoctal*, %struct.ipoctal** %5, align 8
  %34 = call i32 @dev_set_drvdata(i32* %32, %struct.ipoctal* %33)
  store i32 0, i32* %2, align 4
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.ipoctal*, %struct.ipoctal** %5, align 8
  %37 = call i32 @kfree(%struct.ipoctal* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %30, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.ipoctal* @kzalloc(i32, i32) #1

declare dso_local i32 @ipoctal_inst_slot(%struct.ipoctal*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.ipoctal*) #1

declare dso_local i32 @kfree(%struct.ipoctal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
