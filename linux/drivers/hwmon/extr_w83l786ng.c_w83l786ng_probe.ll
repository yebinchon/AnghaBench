; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_w83l786ng_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83l786ng.c_w83l786ng_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.w83l786ng_data = type { i32*, i8**, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@W83L786NG_REG_FAN_DIV = common dso_local global i32 0, align 4
@w83l786ng_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @w83l786ng_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83l786ng_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.w83l786ng_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.w83l786ng_data* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.w83l786ng_data* %15, %struct.w83l786ng_data** %7, align 8
  %16 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %17 = icmp ne %struct.w83l786ng_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %24 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %23, i32 0, i32 3
  store %struct.i2c_client* %22, %struct.i2c_client** %24, align 8
  %25 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %26 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = call i32 @w83l786ng_init_client(%struct.i2c_client* %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %44, %21
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @W83L786NG_REG_FAN_MIN(i32 %35)
  %37 = call i8* @w83l786ng_read_value(%struct.i2c_client* %34, i32 %36)
  %38 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %39 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  store i8* %37, i8** %43, align 8
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i32, i32* @W83L786NG_REG_FAN_DIV, align 4
  %50 = call i8* @w83l786ng_read_value(%struct.i2c_client* %48, i32 %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 7
  %54 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %55 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 7
  %61 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %62 = getelementptr inbounds %struct.w83l786ng_data, %struct.w83l786ng_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.w83l786ng_data*, %struct.w83l786ng_data** %7, align 8
  %70 = load i32, i32* @w83l786ng_groups, align 4
  %71 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %65, i32 %68, %struct.w83l786ng_data* %69, i32 %70)
  store %struct.device* %71, %struct.device** %8, align 8
  %72 = load %struct.device*, %struct.device** %8, align 8
  %73 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %72)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %47, %18
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.w83l786ng_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @w83l786ng_init_client(%struct.i2c_client*) #1

declare dso_local i8* @w83l786ng_read_value(%struct.i2c_client*, i32) #1

declare dso_local i32 @W83L786NG_REG_FAN_MIN(i32) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i32, %struct.w83l786ng_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
