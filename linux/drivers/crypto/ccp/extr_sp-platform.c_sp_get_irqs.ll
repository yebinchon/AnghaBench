; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-platform.c_sp_get_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-platform.c_sp_get_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sp_device = type { i32, i32, %struct.device*, %struct.sp_platform* }
%struct.device = type { i32 }
%struct.sp_platform = type { i32 }
%struct.platform_device = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@IORESOURCE_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"unable to get IRQ (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sp_device*)* @sp_get_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_get_irqs(%struct.sp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sp_device*, align 8
  %4 = alloca %struct.sp_platform*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  store %struct.sp_device* %0, %struct.sp_device** %3, align 8
  %11 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %12 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %11, i32 0, i32 3
  %13 = load %struct.sp_platform*, %struct.sp_platform** %12, align 8
  store %struct.sp_platform* %13, %struct.sp_platform** %4, align 8
  %14 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %15 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %14, i32 0, i32 2
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.platform_device* @to_platform_device(%struct.device* %17)
  store %struct.platform_device* %18, %struct.platform_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %40, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 1
  %28 = load %struct.resource*, %struct.resource** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %28, i64 %30
  store %struct.resource* %31, %struct.resource** %10, align 8
  %32 = load %struct.resource*, %struct.resource** %10, align 8
  %33 = call i64 @resource_type(%struct.resource* %32)
  %34 = load i64, i64* @IORESOURCE_IRQ, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %19

43:                                               ; preds = %19
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.sp_platform*, %struct.sp_platform** %4, align 8
  %46 = getelementptr inbounds %struct.sp_platform, %struct.sp_platform* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %48 = call i32 @platform_get_irq(%struct.platform_device* %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dev_notice(%struct.device* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %2, align 4
  br label %81

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %59 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %65 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %80

66:                                               ; preds = %56
  %67 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %68 = call i32 @platform_get_irq(%struct.platform_device* %67, i32 1)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dev_notice(%struct.device* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.sp_device*, %struct.sp_device** %3, align 8
  %79 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %62
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %71, %51
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i64 @resource_type(%struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
