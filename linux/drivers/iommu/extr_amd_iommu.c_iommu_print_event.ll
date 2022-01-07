; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_print_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu.c_iommu_print_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_iommu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@EVENT_TYPE_SHIFT = common dso_local global i32 0, align 4
@EVENT_TYPE_MASK = common dso_local global i32 0, align 4
@EVENT_DEVID_SHIFT = common dso_local global i32 0, align 4
@EVENT_DEVID_MASK = common dso_local global i32 0, align 4
@EVENT_DOMID_MASK_HI = common dso_local global i32 0, align 4
@EVENT_DOMID_MASK_LO = common dso_local global i32 0, align 4
@EVENT_FLAGS_SHIFT = common dso_local global i32 0, align 4
@EVENT_FLAGS_MASK = common dso_local global i32 0, align 4
@LOOP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No event written to event log\0A\00", align 1
@EVENT_TYPE_IO_FAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"Event logged [ILLEGAL_DEV_TABLE_ENTRY device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x]\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"Event logged [DEV_TAB_HARDWARE_ERROR device=%02x:%02x.%x address=0x%llx flags=0x%04x]\0A\00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"Event logged [PAGE_TAB_HARDWARE_ERROR device=%02x:%02x.%x pasid=0x%04x address=0x%llx flags=0x%04x]\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Event logged [ILLEGAL_COMMAND_ERROR address=0x%llx]\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Event logged [COMMAND_HARDWARE_ERROR address=0x%llx flags=0x%04x]\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"Event logged [IOTLB_INV_TIMEOUT device=%02x:%02x.%x address=0x%llx]\0A\00", align 1
@.str.7 = private unnamed_addr constant [100 x i8] c"Event logged [INVALID_DEVICE_REQUEST device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x]\0A\00", align 1
@.str.8 = private unnamed_addr constant [108 x i8] c"Event logged [INVALID_PPR_REQUEST device=%02x:%02x.%x pasid=0x%05x address=0x%llx flags=0x%04x tag=0x%03x]\0A\00", align 1
@.str.9 = private unnamed_addr constant [87 x i8] c"Event logged [UNKNOWN event[0]=0x%08x event[1]=0x%08x event[2]=0x%08x event[3]=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd_iommu*, i8*)* @iommu_print_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iommu_print_event(%struct.amd_iommu* %0, i8* %1) #0 {
  %3 = alloca %struct.amd_iommu*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amd_iommu* %0, %struct.amd_iommu** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.amd_iommu*, %struct.amd_iommu** %3, align 8
  %15 = getelementptr inbounds %struct.amd_iommu, %struct.amd_iommu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %70, %2
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load volatile i32, i32* %22, align 4
  %24 = load volatile i32, i32* @EVENT_TYPE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = load volatile i32, i32* @EVENT_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load volatile i32, i32* %29, align 4
  %31 = load volatile i32, i32* @EVENT_DEVID_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load volatile i32, i32* @EVENT_DEVID_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load volatile i32, i32* %36, align 4
  %38 = load volatile i32, i32* @EVENT_DOMID_MASK_HI, align 4
  %39 = and i32 %37, %38
  %40 = load i32*, i32** %11, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load volatile i32, i32* %41, align 4
  %43 = load volatile i32, i32* @EVENT_DOMID_MASK_LO, align 4
  %44 = and i32 %42, %43
  %45 = or i32 %39, %44
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load volatile i32, i32* %47, align 4
  %49 = load volatile i32, i32* @EVENT_FLAGS_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = load volatile i32, i32* @EVENT_FLAGS_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load volatile i32, i32* %54, align 4
  %56 = shl i32 %55, 32
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load volatile i32, i32* %58, align 4
  %60 = or i32 %56, %59
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %20
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* @LOOP_TIMEOUT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %200

70:                                               ; preds = %63
  %71 = call i32 @udelay(i32 1)
  br label %20

72:                                               ; preds = %20
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @EVENT_TYPE_IO_FAULT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @amd_iommu_report_page_fault(i32 %77, i32 %78, i32 %79, i32 %80)
  br label %200

82:                                               ; preds = %72
  %83 = load i32, i32* %6, align 4
  switch i32 %83, label %182 [
    i32 132, label %84
    i32 134, label %98
    i32 128, label %109
    i32 133, label %121
    i32 135, label %127
    i32 129, label %132
    i32 131, label %142
    i32 130, label %154
  ]

84:                                               ; preds = %82
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @PCI_BUS_NUM(i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @PCI_SLOT(i32 %88)
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @PCI_FUNC(i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %89, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dump_dte_entry(i32 %96)
  br label %197

98:                                               ; preds = %82
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @PCI_BUS_NUM(i32 %100)
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @PCI_SLOT(i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @PCI_FUNC(i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %103, i32 %105, i32 %106, i32 %107)
  br label %197

109:                                              ; preds = %82
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @PCI_BUS_NUM(i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @PCI_SLOT(i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @PCI_FUNC(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %114, i32 %116, i32 %117, i32 %118, i32 %119)
  br label %197

121:                                              ; preds = %82
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = load i32, i32* %13, align 4
  %124 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @dump_command(i32 %125)
  br label %197

127:                                              ; preds = %82
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %128, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i32 %129, i32 %130)
  br label %197

132:                                              ; preds = %82
  %133 = load %struct.device*, %struct.device** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @PCI_BUS_NUM(i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @PCI_SLOT(i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @PCI_FUNC(i32 %138)
  %140 = load i32, i32* %13, align 4
  %141 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %133, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %135, i32 %137, i32 %139, i32 %140)
  br label %197

142:                                              ; preds = %82
  %143 = load %struct.device*, %struct.device** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @PCI_BUS_NUM(i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @PCI_SLOT(i32 %146)
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @PCI_FUNC(i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %143, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.7, i64 0, i64 0), i32 %145, i32 %147, i32 %149, i32 %150, i32 %151, i32 %152)
  br label %197

154:                                              ; preds = %82
  %155 = load i32*, i32** %11, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load volatile i32, i32* %156, align 4
  %158 = ashr i32 %157, 16
  %159 = and i32 %158, 65535
  %160 = load i32*, i32** %11, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load volatile i32, i32* %161, align 4
  %163 = shl i32 %162, 6
  %164 = and i32 %163, 983040
  %165 = or i32 %159, %164
  store i32 %165, i32* %8, align 4
  %166 = load i32*, i32** %11, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load volatile i32, i32* %167, align 4
  %169 = and i32 %168, 1023
  store i32 %169, i32* %10, align 4
  %170 = load %struct.device*, %struct.device** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @PCI_BUS_NUM(i32 %171)
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @PCI_SLOT(i32 %173)
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @PCI_FUNC(i32 %175)
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %170, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0), i32 %172, i32 %174, i32 %176, i32 %177, i32 %178, i32 %179, i32 %180)
  br label %197

182:                                              ; preds = %82
  %183 = load %struct.device*, %struct.device** %5, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load volatile i32, i32* %185, align 4
  %187 = load i32*, i32** %11, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load volatile i32, i32* %188, align 4
  %190 = load i32*, i32** %11, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load volatile i32, i32* %191, align 4
  %193 = load i32*, i32** %11, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load volatile i32, i32* %194, align 4
  %196 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %183, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.9, i64 0, i64 0), i32 %186, i32 %189, i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %182, %154, %142, %132, %127, %121, %109, %98, %84
  %198 = load i8*, i8** %4, align 8
  %199 = call i32 @memset(i8* %198, i32 0, i32 16)
  br label %200

200:                                              ; preds = %197, %76, %68
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @amd_iommu_report_page_fault(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @PCI_BUS_NUM(i32) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @dump_dte_entry(i32) #1

declare dso_local i32 @dump_command(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
