; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_alloc_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_alloc_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_bus = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32*, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcb_ida = common dso_local global i32 0, align 4
@mcb_bus_type = common dso_local global i32 0, align 4
@mcb_carrier_device_type = common dso_local global i32 0, align 4
@mcb_free_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mcb:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mcb_bus* @mcb_alloc_bus(%struct.device* %0) #0 {
  %2 = alloca %struct.mcb_bus*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mcb_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mcb_bus* @kzalloc(i32 48, i32 %7)
  store %struct.mcb_bus* %8, %struct.mcb_bus** %4, align 8
  %9 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %10 = icmp ne %struct.mcb_bus* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.mcb_bus* @ERR_PTR(i32 %13)
  store %struct.mcb_bus* %14, %struct.mcb_bus** %2, align 8
  br label %65

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @ida_simple_get(i32* @mcb_ida, i32 0, i32 0, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %6, align 4
  br label %58

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %25 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i32 @get_device(%struct.device* %26)
  %28 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %29 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %31 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %30, i32 0, i32 1
  %32 = call i32 @device_initialize(%struct.TYPE_4__* %31)
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %35 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store %struct.device* %33, %struct.device** %36, align 8
  %37 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %38 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32* @mcb_bus_type, i32** %39, align 8
  %40 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %41 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32* @mcb_carrier_device_type, i32** %42, align 8
  %43 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %44 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32* @mcb_free_bus, i32** %45, align 8
  %46 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %47 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %46, i32 0, i32 1
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_set_name(%struct.TYPE_4__* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %51 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %50, i32 0, i32 1
  %52 = call i32 @device_add(%struct.TYPE_4__* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %22
  br label %58

56:                                               ; preds = %22
  %57 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  store %struct.mcb_bus* %57, %struct.mcb_bus** %2, align 8
  br label %65

58:                                               ; preds = %55, %20
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = call i32 @put_device(%struct.device* %59)
  %61 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %62 = call i32 @kfree(%struct.mcb_bus* %61)
  %63 = load i32, i32* %6, align 4
  %64 = call %struct.mcb_bus* @ERR_PTR(i32 %63)
  store %struct.mcb_bus* %64, %struct.mcb_bus** %2, align 8
  br label %65

65:                                               ; preds = %58, %56, %11
  %66 = load %struct.mcb_bus*, %struct.mcb_bus** %2, align 8
  ret %struct.mcb_bus* %66
}

declare dso_local %struct.mcb_bus* @kzalloc(i32, i32) #1

declare dso_local %struct.mcb_bus* @ERR_PTR(i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_4__*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.mcb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
