; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_k10temp.c_has_erratum_319.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_k10temp.c_has_erratum_319.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPUID_PKGTYPE_MASK = common dso_local global i32 0, align 4
@CPUID_PKGTYPE_F = common dso_local global i32 0, align 4
@CPUID_PKGTYPE_AM2R2_AM3 = common dso_local global i32 0, align 4
@REG_DCT0_CONFIG_HIGH = common dso_local global i32 0, align 4
@DDR3_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @has_erratum_319 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_erratum_319(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %7 = icmp ne i32 %6, 16
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

9:                                                ; preds = %1
  %10 = call i32 @cpuid_ebx(i32 -2147483647)
  %11 = load i32, i32* @CPUID_PKGTYPE_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CPUID_PKGTYPE_F, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %52

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CPUID_PKGTYPE_AM2R2_AM3, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %52

22:                                               ; preds = %17
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @PCI_SLOT(i32 %28)
  %30 = call i32 @PCI_DEVFN(i32 %29, i32 2)
  %31 = load i32, i32* @REG_DCT0_CONFIG_HIGH, align 4
  %32 = call i32 @pci_bus_read_config_dword(i32 %25, i32 %30, i32 %31, i32* %5)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @DDR3_MODE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %52

38:                                               ; preds = %22
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %46 = icmp sle i32 %45, 2
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br label %49

49:                                               ; preds = %47, %38
  %50 = phi i1 [ true, %38 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %37, %21, %16, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @cpuid_ebx(i32) #1

declare dso_local i32 @pci_bus_read_config_dword(i32, i32, i32, i32*) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
