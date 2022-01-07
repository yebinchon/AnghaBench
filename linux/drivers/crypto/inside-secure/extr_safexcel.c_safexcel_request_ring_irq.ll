; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_request_ring_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_request_ring_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_ring_irq_data = type { i32 }
%struct.device = type { i32 }
%struct.pci_dev = type { %struct.device }
%struct.platform_device = type { %struct.device }

@CONFIG_PCI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unable to get device MSI IRQ %d (err %d)\0A\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ring%d\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to get IRQ '%s' (err %d)\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"unable to request IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32, %struct.safexcel_ring_irq_data*)* @safexcel_request_ring_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safexcel_request_ring_irq(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.safexcel_ring_irq_data* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.safexcel_ring_irq_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.pci_dev*, align 8
  %18 = alloca %struct.platform_device*, align 8
  %19 = alloca [6 x i8], align 1
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.safexcel_ring_irq_data* %5, %struct.safexcel_ring_irq_data** %13, align 8
  %20 = load i32, i32* @CONFIG_PCI, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %6
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = bitcast i8* %27 to %struct.pci_dev*
  store %struct.pci_dev* %28, %struct.pci_dev** %17, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  store %struct.device* %30, %struct.device** %16, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @pci_irq_vector(%struct.pci_dev* %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.device*, %struct.device** %16, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %7, align 4
  br label %88

42:                                               ; preds = %26
  br label %69

43:                                               ; preds = %23, %6
  %44 = load i32, i32* @CONFIG_OF, align 4
  %45 = call i64 @IS_ENABLED(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to %struct.platform_device*
  store %struct.platform_device* %49, %struct.platform_device** %18, align 8
  %50 = bitcast [6 x i8]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %50, i8 0, i64 6, i1 false)
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @snprintf(i8* %51, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  store %struct.device* %55, %struct.device** %16, align 8
  %56 = load %struct.platform_device*, %struct.platform_device** %18, align 8
  %57 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %58 = call i32 @platform_get_irq_byname(%struct.platform_device* %56, i8* %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load %struct.device*, %struct.device** %16, align 8
  %63 = getelementptr inbounds [6 x i8], [6 x i8]* %19, i64 0, i64 0
  %64 = load i32, i32* %15, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %7, align 4
  br label %88

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %42
  %70 = load %struct.device*, %struct.device** %16, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @IRQF_ONESHOT, align 4
  %75 = load %struct.device*, %struct.device** %16, align 8
  %76 = call i32 @dev_name(%struct.device* %75)
  %77 = load %struct.safexcel_ring_irq_data*, %struct.safexcel_ring_irq_data** %13, align 8
  %78 = call i32 @devm_request_threaded_irq(%struct.device* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %76, %struct.safexcel_ring_irq_data* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %69
  %82 = load %struct.device*, %struct.device** %16, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %88

86:                                               ; preds = %69
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %81, %61, %36
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.safexcel_ring_irq_data*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
