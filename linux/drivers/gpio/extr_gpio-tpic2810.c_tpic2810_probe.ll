; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tpic2810.c_tpic2810_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-tpic2810.c_tpic2810_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tpic2810 = type { %struct.TYPE_3__, i32, %struct.i2c_client* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@template_chip = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unable to register gpiochip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tpic2810_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpic2810_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tpic2810*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tpic2810* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.tpic2810* %11, %struct.tpic2810** %6, align 8
  %12 = load %struct.tpic2810*, %struct.tpic2810** %6, align 8
  %13 = icmp ne %struct.tpic2810* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = load %struct.tpic2810*, %struct.tpic2810** %6, align 8
  %20 = call i32 @i2c_set_clientdata(%struct.i2c_client* %18, %struct.tpic2810* %19)
  %21 = load %struct.tpic2810*, %struct.tpic2810** %6, align 8
  %22 = getelementptr inbounds %struct.tpic2810, %struct.tpic2810* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_3__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.TYPE_3__* @template_chip to i8*), i64 8, i1 false)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load %struct.tpic2810*, %struct.tpic2810** %6, align 8
  %27 = getelementptr inbounds %struct.tpic2810, %struct.tpic2810* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32* %25, i32** %28, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load %struct.tpic2810*, %struct.tpic2810** %6, align 8
  %31 = getelementptr inbounds %struct.tpic2810, %struct.tpic2810* %30, i32 0, i32 2
  store %struct.i2c_client* %29, %struct.i2c_client** %31, align 8
  %32 = load %struct.tpic2810*, %struct.tpic2810** %6, align 8
  %33 = getelementptr inbounds %struct.tpic2810, %struct.tpic2810* %32, i32 0, i32 1
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.tpic2810*, %struct.tpic2810** %6, align 8
  %36 = getelementptr inbounds %struct.tpic2810, %struct.tpic2810* %35, i32 0, i32 0
  %37 = load %struct.tpic2810*, %struct.tpic2810** %6, align 8
  %38 = call i32 @gpiochip_add_data(%struct.TYPE_3__* %36, %struct.tpic2810* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %17
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %41, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.tpic2810* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tpic2810*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_3__*, %struct.tpic2810*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
