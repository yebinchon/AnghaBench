; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_dev_parity_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_pci_sysfs.c_edac_pci_dev_parity_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }

@PCI_HEADER_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PCI STATUS= 0x%04x %s\0A\00", align 1
@PCI_STATUS_SIG_SYSTEM_ERROR = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@EDAC_PCI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Signaled System Error on %s\0A\00", align 1
@pci_nonparity_count = common dso_local global i32 0, align 4
@PCI_STATUS_PARITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Master Data Parity Error on %s\0A\00", align 1
@pci_parity_count = common dso_local global i32 0, align 4
@PCI_STATUS_DETECTED_PARITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Detected Parity Error on %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"PCI HEADER TYPE= 0x%02x %s\0A\00", align 1
@PCI_HEADER_TYPE_BRIDGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"PCI SEC_STATUS= 0x%04x %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Bridge Signaled System Error on %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Bridge Master Data Parity Error on %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Bridge Detected Parity Error on %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @edac_pci_dev_parity_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edac_pci_dev_parity_test(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %9 = call i32 @get_pci_parity_status(%struct.pci_dev* %8, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = load i32, i32* @PCI_HEADER_TYPE, align 4
  %12 = call i32 @pci_read_config_byte(%struct.pci_dev* %10, i32 %11, i32* %5)
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @local_irq_restore(i64 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  %18 = call i32 @dev_name(i32* %17)
  %19 = call i32 @edac_dbg(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* @KERN_CRIT, align 4
  %34 = load i32, i32* @EDAC_PCI, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_name(%struct.pci_dev* %35)
  %37 = call i32 @edac_printk(i32 %33, i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = call i32 @atomic_inc(i32* @pci_nonparity_count)
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i32, i32* @KERN_CRIT, align 4
  %46 = load i32, i32* @EDAC_PCI, align 4
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = call i32 @pci_name(%struct.pci_dev* %47)
  %49 = call i32 @edac_printk(i32 %45, i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = call i32 @atomic_inc(i32* @pci_parity_count)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @KERN_CRIT, align 4
  %58 = load i32, i32* @EDAC_PCI, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %60 = call i32 @pci_name(%struct.pci_dev* %59)
  %61 = call i32 @edac_printk(i32 %57, i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  %62 = call i32 @atomic_inc(i32* @pci_parity_count)
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %22, %1
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 1
  %68 = call i32 @dev_name(i32* %67)
  %69 = call i32 @edac_dbg(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 127
  %72 = load i32, i32* @PCI_HEADER_TYPE_BRIDGE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %127

74:                                               ; preds = %64
  %75 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %76 = call i32 @get_pci_parity_status(%struct.pci_dev* %75, i32 1)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %79 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %78, i32 0, i32 1
  %80 = call i32 @dev_name(i32* %79)
  %81 = call i32 @edac_dbg(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %74
  %85 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %126, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @PCI_STATUS_SIG_SYSTEM_ERROR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load i32, i32* @KERN_CRIT, align 4
  %96 = load i32, i32* @EDAC_PCI, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %98 = call i32 @pci_name(%struct.pci_dev* %97)
  %99 = call i32 @edac_printk(i32 %95, i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  %100 = call i32 @atomic_inc(i32* @pci_nonparity_count)
  br label %101

101:                                              ; preds = %94, %89
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @PCI_STATUS_PARITY, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load i32, i32* @KERN_CRIT, align 4
  %108 = load i32, i32* @EDAC_PCI, align 4
  %109 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %110 = call i32 @pci_name(%struct.pci_dev* %109)
  %111 = call i32 @edac_printk(i32 %107, i32 %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = call i32 @atomic_inc(i32* @pci_parity_count)
  br label %113

113:                                              ; preds = %106, %101
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @PCI_STATUS_DETECTED_PARITY, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, i32* @KERN_CRIT, align 4
  %120 = load i32, i32* @EDAC_PCI, align 4
  %121 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %122 = call i32 @pci_name(%struct.pci_dev* %121)
  %123 = call i32 @edac_printk(i32 %119, i32 %120, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = call i32 @atomic_inc(i32* @pci_parity_count)
  br label %125

125:                                              ; preds = %118, %113
  br label %126

126:                                              ; preds = %125, %84, %74
  br label %127

127:                                              ; preds = %126, %64
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @get_pci_parity_status(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @edac_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
