; ModuleID = '/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mcb/extr_mcb-core.c_mcb_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_bus = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mcb_device = type { i32, %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }

@mcb_bus_type = common dso_local global i32 0, align 4
@mcb_release_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"mcb%d-16z%03d-%d:%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed registering device 16z%03d on bus mcb%d (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcb_device_register(%struct.mcb_bus* %0, %struct.mcb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcb_bus*, align 8
  %5 = alloca %struct.mcb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mcb_bus* %0, %struct.mcb_bus** %4, align 8
  store %struct.mcb_device* %1, %struct.mcb_device** %5, align 8
  %8 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %9 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %8, i32 0, i32 1
  %10 = call i32 @device_initialize(%struct.TYPE_6__* %9)
  %11 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %12 = call i32 @mcb_bus_get(%struct.mcb_bus* %11)
  %13 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %14 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32* @mcb_bus_type, i32** %15, align 8
  %16 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %17 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %21 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @mcb_release_dev, align 4
  %24 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %25 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %28 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %31 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %33 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %36 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %35, i32 0, i32 1
  %37 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %38 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %42 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %45 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %48 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_set_name(%struct.TYPE_6__* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.mcb_device*, %struct.mcb_device** %5, align 8
  %52 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %51, i32 0, i32 1
  %53 = call i32 @device_add(%struct.TYPE_6__* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %2
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.mcb_bus*, %struct.mcb_bus** %4, align 8
  %59 = getelementptr inbounds %struct.mcb_bus, %struct.mcb_bus* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60, i32 %61)
  br label %64

63:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @device_initialize(%struct.TYPE_6__*) #1

declare dso_local i32 @mcb_bus_get(%struct.mcb_bus*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_add(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
