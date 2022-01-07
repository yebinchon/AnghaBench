; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_check_bootloader_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_driver.c_rmi_check_bootloader_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_device = type { i32 }
%struct.pdt_entry = type { i32, i32, i32 }
%struct.rmi_driver_data = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to read F34 status: %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read F01 status: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmi_device*, %struct.pdt_entry*)* @rmi_check_bootloader_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_check_bootloader_mode(%struct.rmi_device* %0, %struct.pdt_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rmi_device*, align 8
  %5 = alloca %struct.pdt_entry*, align 8
  %6 = alloca %struct.rmi_driver_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rmi_device* %0, %struct.rmi_device** %4, align 8
  store %struct.pdt_entry* %1, %struct.pdt_entry** %5, align 8
  %9 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %10 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %9, i32 0, i32 0
  %11 = call %struct.rmi_driver_data* @dev_get_drvdata(i32* %10)
  store %struct.rmi_driver_data* %11, %struct.rmi_driver_data** %6, align 8
  %12 = load %struct.pdt_entry*, %struct.pdt_entry** %5, align 8
  %13 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 52
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = load %struct.pdt_entry*, %struct.pdt_entry** %5, align 8
  %18 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %23 = load %struct.pdt_entry*, %struct.pdt_entry** %5, align 8
  %24 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rmi_read(%struct.rmi_device* %22, i32 %25, i32* %8)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %31 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %74

35:                                               ; preds = %21
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @BIT(i32 7)
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %42 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %73

44:                                               ; preds = %16, %2
  %45 = load %struct.pdt_entry*, %struct.pdt_entry** %5, align 8
  %46 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %51 = load %struct.pdt_entry*, %struct.pdt_entry** %5, align 8
  %52 = getelementptr inbounds %struct.pdt_entry, %struct.pdt_entry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rmi_read(%struct.rmi_device* %50, i32 %53, i32* %8)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.rmi_device*, %struct.rmi_device** %4, align 8
  %59 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %74

63:                                               ; preds = %49
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @BIT(i32 6)
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.rmi_driver_data*, %struct.rmi_driver_data** %6, align 8
  %70 = getelementptr inbounds %struct.rmi_driver_data, %struct.rmi_driver_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %44
  br label %73

73:                                               ; preds = %72, %43
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %57, %29
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.rmi_driver_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @rmi_read(%struct.rmi_device*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
