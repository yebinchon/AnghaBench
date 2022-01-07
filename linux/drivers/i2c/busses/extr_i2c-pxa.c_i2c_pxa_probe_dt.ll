; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pxa.c_i2c_pxa_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pxa_i2c = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.of_device_id = type { i64 }

@i2c_pxa_dt_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mrvl,i2c-polling\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"mrvl,i2c-fast-mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.pxa_i2c*, i32*)* @i2c_pxa_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_pxa_probe_dt(%struct.platform_device* %0, %struct.pxa_i2c* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.pxa_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.pxa_i2c* %1, %struct.pxa_i2c** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %8, align 8
  %14 = load i32, i32* @i2c_pxa_dt_ids, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.TYPE_4__* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %9, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %19 = icmp ne %struct.of_device_id* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %23 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = load %struct.device_node*, %struct.device_node** %8, align 8
  %26 = call i64 @of_get_property(%struct.device_node* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %30 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = call i64 @of_get_property(%struct.device_node* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.pxa_i2c*, %struct.pxa_i2c** %6, align 8
  %37 = getelementptr inbounds %struct.pxa_i2c, %struct.pxa_i2c* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %40 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %20
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @of_get_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
