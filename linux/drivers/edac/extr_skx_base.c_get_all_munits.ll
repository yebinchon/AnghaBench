; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_get_all_munits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_skx_base.c_get_all_munits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.munit = type { i32, i64*, i32, i32, i32 }
%struct.pci_dev = type { i64, i32 }
%struct.skx_dev = type { i32, %struct.pci_dev*, %struct.pci_dev*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pci_dev* }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@SKX_NUM_IMC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't enable device %04x:%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mcroute mismatch\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.munit*)* @get_all_munits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_all_munits(%struct.munit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.munit*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.skx_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.munit* %0, %struct.munit** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %5, align 8
  br label %10

10:                                               ; preds = %143, %1
  %11 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %12 = load %struct.munit*, %struct.munit** %3, align 8
  %13 = getelementptr inbounds %struct.munit, %struct.munit* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call %struct.pci_dev* @pci_get_device(i32 %11, i32 %14, %struct.pci_dev* %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %4, align 8
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = icmp ne %struct.pci_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %145

20:                                               ; preds = %10
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load %struct.munit*, %struct.munit** %3, align 8
  %24 = getelementptr inbounds %struct.munit, %struct.munit* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SKX_NUM_IMC, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %47, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @SKX_NUM_IMC, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.munit*, %struct.munit** %3, align 8
  %35 = getelementptr inbounds %struct.munit, %struct.munit* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %50

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %29

50:                                               ; preds = %45, %29
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SKX_NUM_IMC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %147

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55, %20
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.munit*, %struct.munit** %3, align 8
  %61 = getelementptr inbounds %struct.munit, %struct.munit* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.skx_dev* @get_skx_dev(i32 %59, i32 %62)
  store %struct.skx_dev* %63, %struct.skx_dev** %6, align 8
  %64 = load %struct.skx_dev*, %struct.skx_dev** %6, align 8
  %65 = icmp ne %struct.skx_dev* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %147

67:                                               ; preds = %56
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i64 @pci_enable_device(%struct.pci_dev* %68)
  %70 = icmp slt i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load i32, i32* @KERN_ERR, align 4
  %76 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %77 = load %struct.munit*, %struct.munit** %3, align 8
  %78 = getelementptr inbounds %struct.munit, %struct.munit* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @skx_printk(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %79)
  br label %147

81:                                               ; preds = %67
  %82 = load %struct.munit*, %struct.munit** %3, align 8
  %83 = getelementptr inbounds %struct.munit, %struct.munit* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %143 [
    i32 133, label %85
    i32 132, label %85
    i32 131, label %85
    i32 129, label %103
    i32 128, label %109
    i32 130, label %115
  ]

85:                                               ; preds = %81, %81, %81
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = call i32 @pci_dev_get(%struct.pci_dev* %86)
  %88 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %89 = load %struct.skx_dev*, %struct.skx_dev** %6, align 8
  %90 = getelementptr inbounds %struct.skx_dev, %struct.skx_dev* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load %struct.munit*, %struct.munit** %3, align 8
  %98 = getelementptr inbounds %struct.munit, %struct.munit* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store %struct.pci_dev* %88, %struct.pci_dev** %102, align 8
  br label %143

103:                                              ; preds = %81
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = call i32 @pci_dev_get(%struct.pci_dev* %104)
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = load %struct.skx_dev*, %struct.skx_dev** %6, align 8
  %108 = getelementptr inbounds %struct.skx_dev, %struct.skx_dev* %107, i32 0, i32 2
  store %struct.pci_dev* %106, %struct.pci_dev** %108, align 8
  br label %143

109:                                              ; preds = %81
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = call i32 @pci_dev_get(%struct.pci_dev* %110)
  %112 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %113 = load %struct.skx_dev*, %struct.skx_dev** %6, align 8
  %114 = getelementptr inbounds %struct.skx_dev, %struct.skx_dev* %113, i32 0, i32 1
  store %struct.pci_dev* %112, %struct.pci_dev** %114, align 8
  br label %143

115:                                              ; preds = %81
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = call i32 @pci_read_config_dword(%struct.pci_dev* %116, i32 180, i32* %7)
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = load %struct.skx_dev*, %struct.skx_dev** %6, align 8
  %122 = getelementptr inbounds %struct.skx_dev, %struct.skx_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.skx_dev*, %struct.skx_dev** %6, align 8
  %128 = getelementptr inbounds %struct.skx_dev, %struct.skx_dev* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %139

129:                                              ; preds = %120
  %130 = load %struct.skx_dev*, %struct.skx_dev** %6, align 8
  %131 = getelementptr inbounds %struct.skx_dev, %struct.skx_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* @KERN_ERR, align 4
  %137 = call i32 (i32, i8*, ...) @skx_printk(i32 %136, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %147

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %125
  br label %140

140:                                              ; preds = %139, %115
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %81, %140, %109, %103, %85
  %144 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %144, %struct.pci_dev** %5, align 8
  br label %10

145:                                              ; preds = %19
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %2, align 4
  br label %152

147:                                              ; preds = %135, %74, %66, %54
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = call i32 @pci_dev_put(%struct.pci_dev* %148)
  %150 = load i32, i32* @ENODEV, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %147, %145
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local %struct.skx_dev* @get_skx_dev(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @skx_printk(i32, i8*, ...) #1

declare dso_local i32 @pci_dev_get(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
