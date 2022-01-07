; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_gl518_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_gl518sm.c_gl518_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.gl518_data = type { i64, i32, i32**, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GL518_REG_REVISION = common dso_local global i32 0, align 4
@gl518sm_r80 = common dso_local global i64 0, align 8
@gl518sm_r00 = common dso_local global i64 0, align 8
@gl518_group = common dso_local global i32 0, align 4
@gl518_group_r80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @gl518_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl518_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.gl518_data*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gl518_data* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.gl518_data* %14, %struct.gl518_data** %8, align 8
  %15 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %16 = icmp ne %struct.gl518_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %23 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %22, i32 0, i32 4
  store %struct.i2c_client* %21, %struct.i2c_client** %23, align 8
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i32, i32* @GL518_REG_REVISION, align 4
  %26 = call i32 @gl518_read_value(%struct.i2c_client* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i64, i64* @gl518sm_r80, align 8
  br label %33

31:                                               ; preds = %20
  %32 = load i64, i64* @gl518sm_r00, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %36 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %38 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %37, i32 0, i32 3
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %41 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %40, i32 0, i32 1
  store i32 255, i32* %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = call i32 @gl518_init_client(%struct.i2c_client* %42)
  %44 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %45 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %44, i32 0, i32 2
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 0
  store i32* @gl518_group, i32** %47, align 8
  %48 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %49 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @gl518sm_r80, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %33
  %54 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %55 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %54, i32 0, i32 2
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 1
  store i32* @gl518_group_r80, i32** %57, align 8
  br label %58

58:                                               ; preds = %53, %33
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %64 = load %struct.gl518_data*, %struct.gl518_data** %8, align 8
  %65 = getelementptr inbounds %struct.gl518_data, %struct.gl518_data* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %59, i32 %62, %struct.gl518_data* %63, i32** %66)
  store %struct.device* %67, %struct.device** %7, align 8
  %68 = load %struct.device*, %struct.device** %7, align 8
  %69 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %58, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.gl518_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @gl518_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gl518_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.gl518_data*, i32**) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
