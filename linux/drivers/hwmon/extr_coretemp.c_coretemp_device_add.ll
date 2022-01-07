; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_coretemp.c_coretemp_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@DRVNAME = common dso_local global i32 0, align 4
@zone_devices = common dso_local global %struct.platform_device** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.platform_device* (i32)* @coretemp_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.platform_device* @coretemp_device_add(i32 %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @topology_logical_die_id(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.platform_device* @ERR_PTR(i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %2, align 8
  br label %42

15:                                               ; preds = %1
  %16 = load i32, i32* @DRVNAME, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.platform_device* @platform_device_alloc(i32 %16, i32 %17)
  store %struct.platform_device* %18, %struct.platform_device** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %20 = icmp ne %struct.platform_device* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.platform_device* @ERR_PTR(i32 %23)
  store %struct.platform_device* %24, %struct.platform_device** %2, align 8
  br label %42

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %27 = call i32 @platform_device_add(%struct.platform_device* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %32 = call i32 @platform_device_put(%struct.platform_device* %31)
  %33 = load i32, i32* %4, align 4
  %34 = call %struct.platform_device* @ERR_PTR(i32 %33)
  store %struct.platform_device* %34, %struct.platform_device** %2, align 8
  br label %42

35:                                               ; preds = %25
  %36 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %37 = load %struct.platform_device**, %struct.platform_device*** @zone_devices, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %37, i64 %39
  store %struct.platform_device* %36, %struct.platform_device** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %41, %struct.platform_device** %2, align 8
  br label %42

42:                                               ; preds = %35, %30, %21, %11
  %43 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  ret %struct.platform_device* %43
}

declare dso_local i32 @topology_logical_die_id(i32) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
