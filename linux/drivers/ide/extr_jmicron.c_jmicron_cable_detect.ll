; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_jmicron.c_jmicron_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_jmicron.c_jmicron_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@ATA_CBL_PATA40 = common dso_local global i32 0, align 4
@ATA_CBL_PATA80 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @jmicron_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmicron_cable_detect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_read_config_dword(%struct.pci_dev* %16, i32 64, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 8388608
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 128, i32* %22, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 130, i32* %23, align 4
  br label %27

24:                                               ; preds = %1
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 128, i32* %25, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 128, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = call i32 @pci_read_config_dword(%struct.pci_dev* %28, i32 128, i32* %6)
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 16777216
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 129, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 4194304
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = xor i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %64 [
    i32 130, label %47
    i32 129, label %55
    i32 128, label %63
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %47
  %54 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %54, i32* %2, align 4
  br label %66

55:                                               ; preds = %42
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, 524288
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @ATA_CBL_PATA40, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %55
  %62 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %42
  br label %64

64:                                               ; preds = %42, %63
  %65 = load i32, i32* @ATA_CBL_PATA80, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %61, %59, %53, %51
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
