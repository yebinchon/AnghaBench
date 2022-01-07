; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_restore_ecc_error_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_restore_ecc_error_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecc_settings = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@NBCTL = common dso_local global i32 0, align 4
@NBCFG = common dso_local global i32 0, align 4
@NBCFG_ECC_ENABLE = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error restoring NB MCGCTL settings!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecc_settings*, i32, %struct.pci_dev*)* @restore_ecc_error_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_ecc_error_reporting(%struct.ecc_settings* %0, i32 %1, %struct.pci_dev* %2) #0 {
  %4 = alloca %struct.ecc_settings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ecc_settings* %0, %struct.ecc_settings** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pci_dev* %2, %struct.pci_dev** %6, align 8
  store i32 3, i32* %8, align 4
  %9 = load %struct.ecc_settings*, %struct.ecc_settings** %4, align 8
  %10 = getelementptr inbounds %struct.ecc_settings, %struct.ecc_settings* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %56

14:                                               ; preds = %3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %16 = load i32, i32* @NBCTL, align 4
  %17 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %15, i32 %16, i32* %7)
  %18 = load i32, i32* %8, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ecc_settings*, %struct.ecc_settings** %4, align 8
  %23 = getelementptr inbounds %struct.ecc_settings, %struct.ecc_settings* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = load i32, i32* @NBCTL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @amd64_write_pci_cfg(%struct.pci_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.ecc_settings*, %struct.ecc_settings** %4, align 8
  %32 = getelementptr inbounds %struct.ecc_settings, %struct.ecc_settings* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %14
  %37 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %38 = load i32, i32* @NBCFG, align 4
  %39 = call i32 @amd64_read_pci_cfg(%struct.pci_dev* %37, i32 %38, i32* %7)
  %40 = load i32, i32* @NBCFG_ECC_ENABLE, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %45 = load i32, i32* @NBCFG, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @amd64_write_pci_cfg(%struct.pci_dev* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %36, %14
  %49 = load %struct.ecc_settings*, %struct.ecc_settings** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @OFF, align 4
  %52 = call i64 @toggle_ecc_err_reporting(%struct.ecc_settings* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @amd64_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %13, %54, %48
  ret void
}

declare dso_local i32 @amd64_read_pci_cfg(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @amd64_write_pci_cfg(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @toggle_ecc_err_reporting(%struct.ecc_settings*, i32, i32) #1

declare dso_local i32 @amd64_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
