; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp2.c_sp2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sp2_config* }
%struct.sp2_config = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.sp2 = type { %struct.i2c_client*, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"CIMaX SP2 successfully attached\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"init failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sp2_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp2_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.sp2_config*, align 8
  %7 = alloca %struct.sp2*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.sp2_config*, %struct.sp2_config** %11, align 8
  store %struct.sp2_config* %12, %struct.sp2_config** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_dbg(%struct.TYPE_3__* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sp2* @kzalloc(i32 24, i32 %16)
  store %struct.sp2* %17, %struct.sp2** %7, align 8
  %18 = load %struct.sp2*, %struct.sp2** %7, align 8
  %19 = icmp ne %struct.sp2* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.sp2*, %struct.sp2** %7, align 8
  %26 = getelementptr inbounds %struct.sp2, %struct.sp2* %25, i32 0, i32 0
  store %struct.i2c_client* %24, %struct.i2c_client** %26, align 8
  %27 = load %struct.sp2_config*, %struct.sp2_config** %6, align 8
  %28 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sp2*, %struct.sp2** %7, align 8
  %31 = getelementptr inbounds %struct.sp2, %struct.sp2* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sp2_config*, %struct.sp2_config** %6, align 8
  %33 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sp2*, %struct.sp2** %7, align 8
  %36 = getelementptr inbounds %struct.sp2, %struct.sp2* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sp2_config*, %struct.sp2_config** %6, align 8
  %38 = getelementptr inbounds %struct.sp2_config, %struct.sp2_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sp2*, %struct.sp2** %7, align 8
  %41 = getelementptr inbounds %struct.sp2, %struct.sp2* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.sp2*, %struct.sp2** %7, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.sp2* %43)
  %45 = load %struct.sp2*, %struct.sp2** %7, align 8
  %46 = call i32 @sp2_init(%struct.sp2* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %23
  br label %56

50:                                               ; preds = %23
  %51 = load %struct.sp2*, %struct.sp2** %7, align 8
  %52 = getelementptr inbounds %struct.sp2, %struct.sp2* %51, i32 0, i32 0
  %53 = load %struct.i2c_client*, %struct.i2c_client** %52, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call i32 @dev_info(%struct.TYPE_3__* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %64

56:                                               ; preds = %49, %20
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_dbg(%struct.TYPE_3__* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = load %struct.sp2*, %struct.sp2** %7, align 8
  %62 = call i32 @kfree(%struct.sp2* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %56, %50
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @dev_dbg(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local %struct.sp2* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sp2*) #1

declare dso_local i32 @sp2_init(%struct.sp2*) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @kfree(%struct.sp2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
