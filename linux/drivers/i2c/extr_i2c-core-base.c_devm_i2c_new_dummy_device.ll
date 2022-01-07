; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_devm_i2c_new_dummy_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_devm_i2c_new_dummy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_dummy_devres = type { %struct.i2c_client* }

@devm_i2c_release_dummy = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_client* @devm_i2c_new_dummy_device(%struct.device* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_dummy_devres*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @devm_i2c_release_dummy, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.i2c_dummy_devres* @devres_alloc(i32 %10, i32 8, i32 %11)
  store %struct.i2c_dummy_devres* %12, %struct.i2c_dummy_devres** %8, align 8
  %13 = load %struct.i2c_dummy_devres*, %struct.i2c_dummy_devres** %8, align 8
  %14 = icmp ne %struct.i2c_dummy_devres* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.i2c_client* @ERR_PTR(i32 %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %4, align 8
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.i2c_client* @i2c_new_dummy_device(%struct.i2c_adapter* %20, i32 %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %9, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %24 = call i64 @IS_ERR(%struct.i2c_client* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.i2c_dummy_devres*, %struct.i2c_dummy_devres** %8, align 8
  %28 = call i32 @devres_free(%struct.i2c_dummy_devres* %27)
  br label %36

29:                                               ; preds = %19
  %30 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %31 = load %struct.i2c_dummy_devres*, %struct.i2c_dummy_devres** %8, align 8
  %32 = getelementptr inbounds %struct.i2c_dummy_devres, %struct.i2c_dummy_devres* %31, i32 0, i32 0
  store %struct.i2c_client* %30, %struct.i2c_client** %32, align 8
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.i2c_dummy_devres*, %struct.i2c_dummy_devres** %8, align 8
  %35 = call i32 @devres_add(%struct.device* %33, %struct.i2c_dummy_devres* %34)
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %37, %struct.i2c_client** %4, align 8
  br label %38

38:                                               ; preds = %36, %15
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  ret %struct.i2c_client* %39
}

declare dso_local %struct.i2c_dummy_devres* @devres_alloc(i32, i32, i32) #1

declare dso_local %struct.i2c_client* @ERR_PTR(i32) #1

declare dso_local %struct.i2c_client* @i2c_new_dummy_device(%struct.i2c_adapter*, i32) #1

declare dso_local i64 @IS_ERR(%struct.i2c_client*) #1

declare dso_local i32 @devres_free(%struct.i2c_dummy_devres*) #1

declare dso_local i32 @devres_add(%struct.device*, %struct.i2c_dummy_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
