; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-region.c_fpga_region_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-region.c_fpga_region_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_region = type { i32 (%struct.fpga_region*)*, %struct.TYPE_3__, i32, i32, %struct.fpga_manager* }
%struct.TYPE_3__ = type { i32, i32, %struct.device*, i32 }
%struct.device = type { i32 }
%struct.fpga_manager = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@fpga_region_ida = common dso_local global i32 0, align 4
@fpga_region_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"region%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fpga_region* @fpga_region_create(%struct.device* %0, %struct.fpga_manager* %1, i32 (%struct.fpga_region*)* %2) #0 {
  %4 = alloca %struct.fpga_region*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca i32 (%struct.fpga_region*)*, align 8
  %8 = alloca %struct.fpga_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.fpga_manager* %1, %struct.fpga_manager** %6, align 8
  store i32 (%struct.fpga_region*)* %2, i32 (%struct.fpga_region*)** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.fpga_region* @kzalloc(i32 48, i32 %11)
  store %struct.fpga_region* %12, %struct.fpga_region** %8, align 8
  %13 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %14 = icmp ne %struct.fpga_region* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.fpga_region* null, %struct.fpga_region** %4, align 8
  br label %71

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @ida_simple_get(i32* @fpga_region_ida, i32 0, i32 0, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %68

22:                                               ; preds = %16
  %23 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %24 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %25 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %24, i32 0, i32 4
  store %struct.fpga_manager* %23, %struct.fpga_manager** %25, align 8
  %26 = load i32 (%struct.fpga_region*)*, i32 (%struct.fpga_region*)** %7, align 8
  %27 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %28 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %27, i32 0, i32 0
  store i32 (%struct.fpga_region*)* %26, i32 (%struct.fpga_region*)** %28, align 8
  %29 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %30 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %29, i32 0, i32 3
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %33 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %32, i32 0, i32 2
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %36 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %35, i32 0, i32 1
  %37 = call i32 @device_initialize(%struct.TYPE_3__* %36)
  %38 = load i32, i32* @fpga_region_class, align 4
  %39 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %40 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %44 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store %struct.device* %42, %struct.device** %45, align 8
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %50 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %54 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %57 = getelementptr inbounds %struct.fpga_region, %struct.fpga_region* %56, i32 0, i32 1
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dev_set_name(%struct.TYPE_3__* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %22
  br label %65

63:                                               ; preds = %22
  %64 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  store %struct.fpga_region* %64, %struct.fpga_region** %4, align 8
  br label %71

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ida_simple_remove(i32* @fpga_region_ida, i32 %66)
  br label %68

68:                                               ; preds = %65, %21
  %69 = load %struct.fpga_region*, %struct.fpga_region** %8, align 8
  %70 = call i32 @kfree(%struct.fpga_region* %69)
  store %struct.fpga_region* null, %struct.fpga_region** %4, align 8
  br label %71

71:                                               ; preds = %68, %63, %15
  %72 = load %struct.fpga_region*, %struct.fpga_region** %4, align 8
  ret %struct.fpga_region* %72
}

declare dso_local %struct.fpga_region* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.fpga_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
