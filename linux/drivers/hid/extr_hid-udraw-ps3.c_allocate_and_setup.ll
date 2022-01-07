; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-udraw-ps3.c_allocate_and_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-udraw-ps3.c_allocate_and_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i8*, %struct.TYPE_4__, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.hid_device = type { i32, i32, i32, i32, i32, i32, i32 }

@udraw_open = common dso_local global i32 0, align 4
@udraw_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.input_dev* (%struct.hid_device*, i8*)* @allocate_and_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.input_dev* @allocate_and_setup(%struct.hid_device* %0, i8* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 5
  %9 = call %struct.input_dev* @devm_input_allocate_device(i32* %8)
  store %struct.input_dev* %9, %struct.input_dev** %6, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %11 = icmp ne %struct.input_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.input_dev* null, %struct.input_dev** %3, align 8
  br label %67

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %18 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %23 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %22, i32 0, i32 5
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32* %23, i32** %26, align 8
  %27 = load i32, i32* @udraw_open, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @udraw_close, align 4
  %31 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %34 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %45 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 8
  %50 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %51 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %63 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %64 = call i32 @hid_get_drvdata(%struct.hid_device* %63)
  %65 = call i32 @input_set_drvdata(%struct.input_dev* %62, i32 %64)
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  store %struct.input_dev* %66, %struct.input_dev** %3, align 8
  br label %67

67:                                               ; preds = %13, %12
  %68 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  ret %struct.input_dev* %68
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, i32) #1

declare dso_local i32 @hid_get_drvdata(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
