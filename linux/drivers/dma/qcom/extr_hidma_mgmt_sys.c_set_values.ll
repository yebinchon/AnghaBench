; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_set_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/qcom/extr_hidma_mgmt_sys.c_set_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.hidma_mgmt_dev*, i64)*, i32 }
%struct.hidma_mgmt_dev = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@hidma_mgmt_files = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_values(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hidma_mgmt_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.hidma_mgmt_dev* @dev_get_drvdata(%struct.device* %14)
  store %struct.hidma_mgmt_dev* %15, %struct.hidma_mgmt_dev** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @kstrtoul(i8* %16, i32 0, i64* %11)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %5, align 4
  br label %63

22:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hidma_mgmt_files, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %25)
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %30 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hidma_mgmt_files, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @strcmp(i32 %32, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %28
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hidma_mgmt_files, align 8
  %43 = load i32, i32* %12, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.hidma_mgmt_dev*, i64)*, i32 (%struct.hidma_mgmt_dev*, i64)** %46, align 8
  %48 = load %struct.hidma_mgmt_dev*, %struct.hidma_mgmt_dev** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 %47(%struct.hidma_mgmt_dev* %48, i64 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %63

55:                                               ; preds = %41
  br label %60

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %23

60:                                               ; preds = %55, %23
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %53, %20
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.hidma_mgmt_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
