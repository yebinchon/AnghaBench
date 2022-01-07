; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_mbigen_irq_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_mbigen_irq_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { i32 }
%struct.irq_fwspec = type { i32 }
%struct.mbigen_device = type { i32 }

@mbigen_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @mbigen_irq_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbigen_irq_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.irq_fwspec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mbigen_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %17, %struct.irq_fwspec** %10, align 8
  %18 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %19 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %20 = call i32 @mbigen_domain_translate(%struct.irq_domain* %18, %struct.irq_fwspec* %19, i64* %11, i32* %12)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %4
  %26 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @platform_msi_domain_alloc(%struct.irq_domain* %26, i32 %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %5, align 4
  br label %58

34:                                               ; preds = %25
  %35 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %36 = call %struct.mbigen_device* @platform_msi_get_host_data(%struct.irq_domain* %35)
  store %struct.mbigen_device* %36, %struct.mbigen_device** %13, align 8
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %54, %34
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add i32 %43, %44
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load %struct.mbigen_device*, %struct.mbigen_device** %13, align 8
  %51 = getelementptr inbounds %struct.mbigen_device, %struct.mbigen_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %42, i32 %45, i64 %49, i32* @mbigen_irq_chip, i32 %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %37

57:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %32, %23
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @mbigen_domain_translate(%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*) #1

declare dso_local i32 @platform_msi_domain_alloc(%struct.irq_domain*, i32, i32) #1

declare dso_local %struct.mbigen_device* @platform_msi_get_host_data(%struct.irq_domain*) #1

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
