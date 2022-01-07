; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_allocate_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_allocate_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_6__, i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.wacom = type { %struct.wacom_wac, %struct.hid_device* }
%struct.wacom_wac = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.hid_device = type { i32, i64, i32, i32, i32, i32, i32 }

@wacom_open = common dso_local global i32 0, align 4
@wacom_close = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.input_dev* (%struct.wacom*)* @wacom_allocate_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.input_dev* @wacom_allocate_input(%struct.wacom* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.wacom_wac*, align 8
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  %7 = load %struct.wacom*, %struct.wacom** %3, align 8
  %8 = getelementptr inbounds %struct.wacom, %struct.wacom* %7, i32 0, i32 1
  %9 = load %struct.hid_device*, %struct.hid_device** %8, align 8
  store %struct.hid_device* %9, %struct.hid_device** %5, align 8
  %10 = load %struct.wacom*, %struct.wacom** %3, align 8
  %11 = getelementptr inbounds %struct.wacom, %struct.wacom* %10, i32 0, i32 0
  store %struct.wacom_wac* %11, %struct.wacom_wac** %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 5
  %14 = call %struct.input_dev* @devm_input_allocate_device(i32* %13)
  store %struct.input_dev* %14, %struct.input_dev** %4, align 8
  %15 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %16 = icmp ne %struct.input_dev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.input_dev* null, %struct.input_dev** %2, align 8
  br label %85

18:                                               ; preds = %1
  %19 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %20 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %26 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 5
  %32 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load i32, i32* @wacom_open, align 4
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @wacom_close, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %47 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %53 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %59 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %18
  %63 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %64 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  br label %70

66:                                               ; preds = %18
  %67 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %68 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i64 [ %65, %62 ], [ %69, %66 ]
  %72 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  %75 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %76 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = load %struct.wacom*, %struct.wacom** %3, align 8
  %83 = call i32 @input_set_drvdata(%struct.input_dev* %81, %struct.wacom* %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  store %struct.input_dev* %84, %struct.input_dev** %2, align 8
  br label %85

85:                                               ; preds = %70, %17
  %86 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  ret %struct.input_dev* %86
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
