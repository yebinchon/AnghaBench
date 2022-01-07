; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c_ismt_int_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-ismt.c_ismt_int_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@ismt_do_msi_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ismt-msi\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Unable to use MSI interrupts, falling back to legacy\0A\00", align 1
@ismt_do_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ismt-intx\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"no usable interrupts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ismt_priv*)* @ismt_int_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_int_init(%struct.ismt_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ismt_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ismt_priv* %0, %struct.ismt_priv** %3, align 8
  %5 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %6 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = call i32 @pci_enable_msi(%struct.TYPE_3__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ismt_do_msi_interrupt, align 4
  %23 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %24 = call i32 @devm_request_irq(i32* %16, i32 %21, i32 %22, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.ismt_priv* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %12
  %28 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @pci_disable_msi(%struct.TYPE_3__* %30)
  br label %33

32:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %62

33:                                               ; preds = %27, %11
  %34 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %35 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %40 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ismt_do_interrupt, align 4
  %49 = load i32, i32* @IRQF_SHARED, align 4
  %50 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %51 = call i32 @devm_request_irq(i32* %42, i32 %47, i32 %48, i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.ismt_priv* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %33
  %55 = load %struct.ismt_priv*, %struct.ismt_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ismt_priv, %struct.ismt_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54, %32
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.ismt_priv*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
