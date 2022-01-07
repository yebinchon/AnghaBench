; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mm-lantiq.c_ltq_mm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-mm-lantiq.c_ltq_mm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ltq_mm = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ltq_mm_dir_out = common dso_local global i32 0, align 4
@ltq_mm_set = common dso_local global i32 0, align 4
@ltq_mm_save_regs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"lantiq,shadow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ltq_mm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_mm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ltq_mm*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ltq_mm* @devm_kzalloc(%struct.TYPE_6__* %7, i32 20, i32 %8)
  store %struct.ltq_mm* %9, %struct.ltq_mm** %4, align 8
  %10 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %11 = icmp ne %struct.ltq_mm* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %18 = call i32 @platform_set_drvdata(%struct.platform_device* %16, %struct.ltq_mm* %17)
  %19 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %20 = getelementptr inbounds %struct.ltq_mm, %struct.ltq_mm* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 16, i32* %22, align 4
  %23 = load i32, i32* @ltq_mm_dir_out, align 4
  %24 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %25 = getelementptr inbounds %struct.ltq_mm, %struct.ltq_mm* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @ltq_mm_set, align 4
  %29 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %30 = getelementptr inbounds %struct.ltq_mm, %struct.ltq_mm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* @ltq_mm_save_regs, align 4
  %34 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %35 = getelementptr inbounds %struct.ltq_mm, %struct.ltq_mm* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @of_property_read_u32(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %5)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %15
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %46 = getelementptr inbounds %struct.ltq_mm, %struct.ltq_mm* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %15
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %53 = getelementptr inbounds %struct.ltq_mm, %struct.ltq_mm* %52, i32 0, i32 0
  %54 = load %struct.ltq_mm*, %struct.ltq_mm** %4, align 8
  %55 = call i32 @of_mm_gpiochip_add_data(i32 %51, %struct.TYPE_5__* %53, %struct.ltq_mm* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %47, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.ltq_mm* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ltq_mm*) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @of_mm_gpiochip_add_data(i32, %struct.TYPE_5__*, %struct.ltq_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
