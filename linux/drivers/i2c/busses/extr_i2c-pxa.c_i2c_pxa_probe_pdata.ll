; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_probe_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_probe_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.pxa_i2c = type { i32, i32, i32, i32, i32 }
%struct.i2c_pxa_platform_data = type { i32, i32, i32, i32, i32 }
%struct.platform_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.pxa_i2c*, i32*)* @i2c_pxa_probe_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_probe_pdata(%struct.platform_device* %0, %struct.pxa_i2c* %1, i32* %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.pxa_i2c*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i2c_pxa_platform_data*, align 8
  %8 = alloca %struct.platform_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.pxa_i2c* %1, %struct.pxa_i2c** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.i2c_pxa_platform_data* @dev_get_platdata(i32* %10)
  store %struct.i2c_pxa_platform_data* %11, %struct.i2c_pxa_platform_data** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = call %struct.platform_device_id* @platform_get_device_id(%struct.platform_device* %12)
  store %struct.platform_device_id* %13, %struct.platform_device_id** %8, align 8
  %14 = load %struct.platform_device_id*, %struct.platform_device_id** %8, align 8
  %15 = getelementptr inbounds %struct.platform_device_id, %struct.platform_device_id* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %7, align 8
  %19 = icmp ne %struct.i2c_pxa_platform_data* %18, null
  br i1 %19, label %20, label %54

20:                                               ; preds = %3
  %21 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %7, align 8
  %22 = getelementptr inbounds %struct.i2c_pxa_platform_data, %struct.i2c_pxa_platform_data* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pxa_i2c*, %struct.pxa_i2c** %5, align 8
  %25 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %7, align 8
  %27 = getelementptr inbounds %struct.i2c_pxa_platform_data, %struct.i2c_pxa_platform_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pxa_i2c*, %struct.pxa_i2c** %5, align 8
  %30 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %7, align 8
  %32 = getelementptr inbounds %struct.i2c_pxa_platform_data, %struct.i2c_pxa_platform_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pxa_i2c*, %struct.pxa_i2c** %5, align 8
  %35 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %7, align 8
  %37 = getelementptr inbounds %struct.i2c_pxa_platform_data, %struct.i2c_pxa_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pxa_i2c*, %struct.pxa_i2c** %5, align 8
  %40 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pxa_i2c*, %struct.pxa_i2c** %5, align 8
  %42 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %20
  %46 = load %struct.pxa_i2c*, %struct.pxa_i2c** %5, align 8
  %47 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %46, i32 0, i32 0
  store i32 14, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %20
  %49 = load %struct.i2c_pxa_platform_data*, %struct.i2c_pxa_platform_data** %7, align 8
  %50 = getelementptr inbounds %struct.i2c_pxa_platform_data, %struct.i2c_pxa_platform_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pxa_i2c*, %struct.pxa_i2c** %5, align 8
  %53 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %3
  ret i32 0
}

declare dso_local %struct.i2c_pxa_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.platform_device_id* @platform_get_device_id(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
