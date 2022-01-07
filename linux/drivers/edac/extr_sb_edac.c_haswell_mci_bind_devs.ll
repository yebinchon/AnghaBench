; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_haswell_mci_bind_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_sb_edac.c_haswell_mci_bind_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { %struct.TYPE_2__, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev*, %struct.pci_dev** }
%struct.TYPE_2__ = type { i32* }
%struct.pci_dev = type { i32, i32 }
%struct.sbridge_dev = type { i32, i32, %struct.pci_dev** }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_HASWELL_IMC_VTD_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Associated PCI %02x.%02d.%d with dev = %p\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Some needed devices are missing\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.sbridge_dev*)* @haswell_mci_bind_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @haswell_mci_bind_devs(%struct.mem_ctl_info* %0, %struct.sbridge_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.sbridge_dev*, align 8
  %6 = alloca %struct.sbridge_pvt*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.sbridge_dev* %1, %struct.sbridge_dev** %5, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %12 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %12, align 8
  store %struct.sbridge_pvt* %13, %struct.sbridge_pvt** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %15 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %21 = load i32, i32* @PCI_DEVICE_ID_INTEL_HASWELL_IMC_VTD_MISC, align 4
  %22 = call i32* @pci_get_device(i32 %20, i32 %21, i32* null)
  %23 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %24 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %2
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %109, %26
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.sbridge_dev*, %struct.sbridge_dev** %5, align 8
  %30 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %112

33:                                               ; preds = %27
  %34 = load %struct.sbridge_dev*, %struct.sbridge_dev** %5, align 8
  %35 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %34, i32 0, i32 2
  %36 = load %struct.pci_dev**, %struct.pci_dev*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %36, i64 %38
  %40 = load %struct.pci_dev*, %struct.pci_dev** %39, align 8
  store %struct.pci_dev* %40, %struct.pci_dev** %7, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %42 = icmp ne %struct.pci_dev* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %109

44:                                               ; preds = %33
  %45 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %94 [
    i32 147, label %48
    i32 146, label %52
    i32 141, label %56
    i32 134, label %56
    i32 140, label %60
    i32 133, label %60
    i32 135, label %64
    i32 128, label %64
    i32 139, label %68
    i32 138, label %68
    i32 137, label %68
    i32 136, label %68
    i32 132, label %68
    i32 131, label %68
    i32 130, label %68
    i32 129, label %68
    i32 145, label %84
    i32 144, label %84
    i32 143, label %84
    i32 142, label %84
  ]

48:                                               ; preds = %44
  %49 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %50 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %51 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %50, i32 0, i32 5
  store %struct.pci_dev* %49, %struct.pci_dev** %51, align 8
  br label %95

52:                                               ; preds = %44
  %53 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %54 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %55 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %54, i32 0, i32 3
  store %struct.pci_dev* %53, %struct.pci_dev** %55, align 8
  br label %95

56:                                               ; preds = %44, %44
  %57 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %58 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %59 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %58, i32 0, i32 4
  store %struct.pci_dev* %57, %struct.pci_dev** %59, align 8
  br label %95

60:                                               ; preds = %44, %44
  %61 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %62 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %63 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %62, i32 0, i32 1
  store %struct.pci_dev* %61, %struct.pci_dev** %63, align 8
  br label %95

64:                                               ; preds = %44, %44
  %65 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %66 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %67 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %66, i32 0, i32 2
  store %struct.pci_dev* %65, %struct.pci_dev** %67, align 8
  br label %95

68:                                               ; preds = %44, %44, %44, %44, %44, %44, %44, %44
  %69 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @TAD_DEV_TO_CHAN(i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %74 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %75 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %74, i32 0, i32 7
  %76 = load %struct.pci_dev**, %struct.pci_dev*** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.pci_dev*, %struct.pci_dev** %76, i64 %78
  store %struct.pci_dev* %73, %struct.pci_dev** %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 1, %80
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %95

84:                                               ; preds = %44, %44, %44, %44
  %85 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %86 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %85, i32 0, i32 6
  %87 = load %struct.pci_dev*, %struct.pci_dev** %86, align 8
  %88 = icmp ne %struct.pci_dev* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %91 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %92 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %91, i32 0, i32 6
  store %struct.pci_dev* %90, %struct.pci_dev** %92, align 8
  br label %93

93:                                               ; preds = %89, %84
  br label %95

94:                                               ; preds = %44
  br label %95

95:                                               ; preds = %94, %93, %68, %64, %60, %56, %52, %48
  %96 = load %struct.sbridge_dev*, %struct.sbridge_dev** %5, align 8
  %97 = getelementptr inbounds %struct.sbridge_dev, %struct.sbridge_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PCI_SLOT(i32 %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @PCI_FUNC(i32 %105)
  %107 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %108 = call i32 @edac_dbg(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %102, i32 %106, %struct.pci_dev* %107)
  br label %109

109:                                              ; preds = %95, %43
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %27

112:                                              ; preds = %27
  %113 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %114 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %113, i32 0, i32 5
  %115 = load %struct.pci_dev*, %struct.pci_dev** %114, align 8
  %116 = icmp ne %struct.pci_dev* %115, null
  br i1 %116, label %117, label %143

117:                                              ; preds = %112
  %118 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %119 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %118, i32 0, i32 4
  %120 = load %struct.pci_dev*, %struct.pci_dev** %119, align 8
  %121 = icmp ne %struct.pci_dev* %120, null
  br i1 %121, label %122, label %143

122:                                              ; preds = %117
  %123 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %124 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %123, i32 0, i32 3
  %125 = load %struct.pci_dev*, %struct.pci_dev** %124, align 8
  %126 = icmp ne %struct.pci_dev* %125, null
  br i1 %126, label %127, label %143

127:                                              ; preds = %122
  %128 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %129 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %128, i32 0, i32 2
  %130 = load %struct.pci_dev*, %struct.pci_dev** %129, align 8
  %131 = icmp ne %struct.pci_dev* %130, null
  br i1 %131, label %132, label %143

132:                                              ; preds = %127
  %133 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %134 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %133, i32 0, i32 1
  %135 = load %struct.pci_dev*, %struct.pci_dev** %134, align 8
  %136 = icmp ne %struct.pci_dev* %135, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %6, align 8
  %139 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %137, %132, %127, %122, %117, %112
  br label %152

144:                                              ; preds = %137
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 15
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 3
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %152

151:                                              ; preds = %147, %144
  store i32 0, i32* %3, align 4
  br label %157

152:                                              ; preds = %150, %143
  %153 = load i32, i32* @KERN_ERR, align 4
  %154 = call i32 @sbridge_printk(i32 %153, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %155 = load i32, i32* @ENODEV, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %152, %151
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @TAD_DEV_TO_CHAN(i32) #1

declare dso_local i32 @edac_dbg(i32, i8*, i32, i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @sbridge_printk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
