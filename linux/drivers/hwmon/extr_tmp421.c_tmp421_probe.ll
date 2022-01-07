; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp421.c_tmp421_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp421.c_tmp421_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i64 }
%struct.tmp421_data = type { i64, i32*, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__**, %struct.i2c_client*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__**, i32* }
%struct.TYPE_3__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HWMON_T_INPUT = common dso_local global i32 0, align 4
@HWMON_T_FAULT = common dso_local global i32 0, align 4
@tmp421_ops = common dso_local global i32 0, align 4
@hwmon_temp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tmp421_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp421_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.tmp421_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tmp421_data* @devm_kzalloc(%struct.device* %13, i32 72, i32 %14)
  store %struct.tmp421_data* %15, %struct.tmp421_data** %8, align 8
  %16 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %17 = icmp ne %struct.tmp421_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %109

21:                                               ; preds = %2
  %22 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %23 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %22, i32 0, i32 6
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = call i64 @of_device_get_match_data(%struct.device* %32)
  %34 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %35 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %42

36:                                               ; preds = %21
  %37 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %41 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %45 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %44, i32 0, i32 5
  store %struct.i2c_client* %43, %struct.i2c_client** %45, align 8
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = call i32 @tmp421_init_client(%struct.i2c_client* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %109

52:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %57 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %55, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load i32, i32* @HWMON_T_INPUT, align 4
  %62 = load i32, i32* @HWMON_T_FAULT, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %65 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %53

73:                                               ; preds = %53
  %74 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %75 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32* @tmp421_ops, i32** %76, align 8
  %77 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %78 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %77, i32 0, i32 4
  %79 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %78, align 8
  %80 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %81 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store %struct.TYPE_3__** %79, %struct.TYPE_3__*** %82, align 8
  %83 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %84 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %83, i32 0, i32 3
  %85 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %86 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %85, i32 0, i32 4
  %87 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %87, i64 0
  store %struct.TYPE_3__* %84, %struct.TYPE_3__** %88, align 8
  %89 = load i32, i32* @hwmon_temp, align 4
  %90 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %91 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  %93 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %94 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %97 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32* %95, i32** %98, align 8
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %104 = load %struct.tmp421_data*, %struct.tmp421_data** %8, align 8
  %105 = getelementptr inbounds %struct.tmp421_data, %struct.tmp421_data* %104, i32 0, i32 2
  %106 = call %struct.device* @devm_hwmon_device_register_with_info(%struct.device* %99, i32 %102, %struct.tmp421_data* %103, %struct.TYPE_4__* %105, i32* null)
  store %struct.device* %106, %struct.device** %7, align 8
  %107 = load %struct.device*, %struct.device** %7, align 8
  %108 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %107)
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %73, %50, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.tmp421_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @tmp421_init_client(%struct.i2c_client*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_info(%struct.device*, i32, %struct.tmp421_data*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
