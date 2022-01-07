; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_hpt366.c_hpt3xx_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_hpt366.c_hpt3xx_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.pci_dev = type { i32 }
%struct.hpt_info = type { i64 }

@HPT374 = common dso_local global i64 0, align 8
@HPT370 = common dso_local global i64 0, align 8
@ATA_CBL_PATA40 = common dso_local global i64 0, align 8
@ATA_CBL_PATA80 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @hpt3xx_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hpt3xx_cable_detect(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.hpt_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.pci_dev* @to_pci_dev(i32 %13)
  store %struct.pci_dev* %14, %struct.pci_dev** %3, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.hpt_info* @hpt3xx_get_info(i32 %17)
  store %struct.hpt_info* %18, %struct.hpt_info** %4, align 8
  %19 = load %struct.hpt_info*, %struct.hpt_info** %4, align 8
  %20 = getelementptr inbounds %struct.hpt_info, %struct.hpt_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 2
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @HPT374, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %1
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PCI_FUNC(i32 %35)
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %32
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 2
  store i64 %43, i64* %8, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @pci_read_config_word(%struct.pci_dev* %44, i64 %45, i32* %9)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, 32768
  %51 = call i32 @pci_write_config_word(%struct.pci_dev* %47, i64 %48, i32 %50)
  %52 = call i32 @udelay(i32 10)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = call i32 @pci_read_config_byte(%struct.pci_dev* %53, i32 90, i64* %6)
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pci_write_config_word(%struct.pci_dev* %55, i64 %56, i32 %57)
  br label %80

59:                                               ; preds = %32, %1
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @HPT370, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  store i64 0, i64* %10, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = call i32 @pci_read_config_byte(%struct.pci_dev* %64, i32 91, i64* %10)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %67 = load i64, i64* %10, align 8
  %68 = and i64 %67, -2
  %69 = call i32 @pci_write_config_byte(%struct.pci_dev* %66, i32 91, i64 %68)
  %70 = call i32 @udelay(i32 10)
  %71 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %72 = call i32 @pci_read_config_byte(%struct.pci_dev* %71, i32 90, i64* %6)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @pci_write_config_byte(%struct.pci_dev* %73, i32 91, i64 %74)
  br label %79

76:                                               ; preds = %59
  %77 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %78 = call i32 @pci_read_config_byte(%struct.pci_dev* %77, i32 90, i64* %6)
  br label %79

79:                                               ; preds = %76, %63
  br label %80

80:                                               ; preds = %79, %39
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i64, i64* @ATA_CBL_PATA40, align 8
  br label %89

87:                                               ; preds = %80
  %88 = load i64, i64* @ATA_CBL_PATA80, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  ret i64 %90
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.hpt_info* @hpt3xx_get_info(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
