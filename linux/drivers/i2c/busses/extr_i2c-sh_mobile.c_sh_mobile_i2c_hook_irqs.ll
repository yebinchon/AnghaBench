; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_hook_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_hook_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sh_mobile_i2c_data = type { i32 }
%struct.resource = type { i64, i64 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@sh_mobile_i2c_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot request IRQ %pa\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.sh_mobile_i2c_data*)* @sh_mobile_i2c_hook_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_hook_irqs(%struct.platform_device* %0, %struct.sh_mobile_i2c_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.sh_mobile_i2c_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.sh_mobile_i2c_data* %1, %struct.sh_mobile_i2c_data** %5, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %47, %2
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = load i32, i32* @IORESOURCE_IRQ, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.resource* @platform_get_resource(%struct.platform_device* %11, i32 %12, i32 %13)
  store %struct.resource* %14, %struct.resource** %6, align 8
  %15 = icmp ne %struct.resource* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %44, %16
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @sh_mobile_i2c_isr, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_name(i32* %32)
  %34 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %5, align 8
  %35 = call i32 @devm_request_irq(i32* %28, i64 %29, i32 %30, i32 0, i32 %33, %struct.sh_mobile_i2c_data* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64* %7)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  br label %59

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %7, align 8
  br label %20

47:                                               ; preds = %20
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %10

50:                                               ; preds = %10
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  br label %57

57:                                               ; preds = %54, %53
  %58 = phi i32 [ 0, %53 ], [ %56, %54 ]
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %38
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
