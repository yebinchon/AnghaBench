; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_allocate_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_allocate_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.hid_device = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.hidpp_device = type { i32 }

@hidpp_input_open = common dso_local global i32 0, align 4
@hidpp_input_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.input_dev* (%struct.hid_device*)* @hidpp_allocate_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.input_dev* @hidpp_allocate_input(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.hidpp_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = call %struct.input_dev* @devm_input_allocate_device(i32* %7)
  store %struct.input_dev* %8, %struct.input_dev** %4, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %10 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.hidpp_device* %10, %struct.hidpp_device** %5, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = icmp ne %struct.input_dev* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.input_dev* null, %struct.input_dev** %2, align 8
  br label %69

14:                                               ; preds = %1
  %15 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %16 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %17 = call i32 @input_set_drvdata(%struct.input_dev* %15, %struct.hid_device* %16)
  %18 = load i32, i32* @hidpp_input_open, align 4
  %19 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @hidpp_input_close, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %25 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %35 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %46 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %52 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %58 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %61 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %64 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %63, i32 0, i32 0
  %65 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32* %64, i32** %67, align 8
  %68 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  store %struct.input_dev* %68, %struct.input_dev** %2, align 8
  br label %69

69:                                               ; preds = %14, %13
  %70 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  ret %struct.input_dev* %70
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
