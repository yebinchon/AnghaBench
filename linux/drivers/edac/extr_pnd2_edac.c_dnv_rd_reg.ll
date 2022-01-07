; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_dnv_rd_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_dnv_rd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DNV_MCHBAR_SIZE = common dso_local global i64 0, align 8
@DNV_SB_PORT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Read %s=%.8x_%.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i8*, i64, i8*)* @dnv_rd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnv_rd_reg(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.pci_dev*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %35

20:                                               ; preds = %6
  %21 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %22 = call %struct.pci_dev* @pci_get_device(i32 %21, i32 6528, i32* null)
  store %struct.pci_dev* %22, %struct.pci_dev** %14, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %24 = icmp ne %struct.pci_dev* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %115

28:                                               ; preds = %20
  %29 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @pci_read_config_dword(%struct.pci_dev* %29, i32 %30, i8* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  %34 = call i32 @pci_dev_put(%struct.pci_dev* %33)
  br label %99

35:                                               ; preds = %6
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 76
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = call i64 (...) @get_mem_ctrl_hub_base_addr()
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %16, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %115

48:                                               ; preds = %41
  %49 = load i64, i64* @DNV_MCHBAR_SIZE, align 8
  store i64 %49, i64* %17, align 8
  br label %64

50:                                               ; preds = %38, %35
  %51 = call i64 (...) @get_sideband_reg_base_addr()
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %115

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %58, 16
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %16, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %16, align 8
  %63 = load i64, i64* @DNV_SB_PORT_SIZE, align 8
  store i64 %63, i64* %17, align 8
  br label %64

64:                                               ; preds = %57, %48
  %65 = load i64, i64* %16, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i64, i64* %17, align 8
  %68 = call i8* @ioremap(i32 %66, i64 %67)
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %7, align 4
  br label %115

74:                                               ; preds = %64
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i8*, i8** %15, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = getelementptr inbounds i8, i8* %81, i64 4
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr i8, i8* %85, i64 4
  %87 = bitcast i8* %86 to i32*
  store i32 %84, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %74
  %89 = load i8*, i8** %15, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = bitcast i8* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %11, align 8
  %96 = bitcast i8* %95 to i32*
  store i32 %94, i32* %96, align 4
  %97 = load i8*, i8** %15, align 8
  %98 = call i32 @iounmap(i8* %97)
  br label %99

99:                                               ; preds = %88, %28
  %100 = load i8*, i8** %13, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp eq i64 %101, 8
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr i8, i8* %104, i64 4
  %106 = bitcast i8* %105 to i32*
  %107 = load i32, i32* %106, align 4
  br label %109

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %103
  %110 = phi i32 [ %107, %103 ], [ 0, %108 ]
  %111 = load i8*, i8** %11, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @edac_dbg(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %100, i32 %110, i32 %113)
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %109, %71, %54, %45, %25
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i64 @get_mem_ctrl_hub_base_addr(...) #1

declare dso_local i64 @get_sideband_reg_base_addr(...) #1

declare dso_local i8* @ioremap(i32, i64) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @edac_dbg(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
