; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_attention.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f01.c_rmi_f01_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32, %struct.TYPE_3__, %struct.rmi_device* }
%struct.TYPE_3__ = type { i32 }
%struct.rmi_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.rmi_device*)* }

@.str = private unnamed_addr constant [35 x i8] c"Failed to read device status: %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Device in bootloader mode, please update firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Device reset detected.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Device reset failed: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rmi_f01_attention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f01_attention(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rmi_function*, align 8
  %7 = alloca %struct.rmi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rmi_function*
  store %struct.rmi_function* %11, %struct.rmi_function** %6, align 8
  %12 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %13 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %12, i32 0, i32 2
  %14 = load %struct.rmi_device*, %struct.rmi_device** %13, align 8
  store %struct.rmi_device* %14, %struct.rmi_device** %7, align 8
  %15 = load %struct.rmi_device*, %struct.rmi_device** %7, align 8
  %16 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %17 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @rmi_read(%struct.rmi_device* %15, i32 %19, i32* %9)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %25 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @IRQ_RETVAL(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @RMI_F01_STATUS_BOOTLOADER(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %36 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %35, i32 0, i32 0
  %37 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @RMI_F01_STATUS_UNCONFIGURED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %44 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %43, i32 0, i32 0
  %45 = call i32 @dev_warn(i32* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.rmi_device*, %struct.rmi_device** %7, align 8
  %47 = getelementptr inbounds %struct.rmi_device, %struct.rmi_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (%struct.rmi_device*)*, i32 (%struct.rmi_device*)** %49, align 8
  %51 = load %struct.rmi_device*, %struct.rmi_device** %7, align 8
  %52 = call i32 %50(%struct.rmi_device* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load %struct.rmi_function*, %struct.rmi_function** %6, align 8
  %57 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @IRQ_RETVAL(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %65

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %38
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %55, %23
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @rmi_read(%struct.rmi_device*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

declare dso_local i64 @RMI_F01_STATUS_BOOTLOADER(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i64 @RMI_F01_STATUS_UNCONFIGURED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
