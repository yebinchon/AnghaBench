; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i16, i16, i32 }
%struct.pci_dev = type { i64, i16, i16, i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.fw_ohci = type { i32, i64, i32, i32, i32, i32, i32, i32, i32*, i64, i64, %struct.TYPE_6__, i32, i32, i32, i32, %struct.fw_ohci*, %struct.fw_ohci*, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@PCI_VENDOR_ID_PINNACLE_SYSTEMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Pinnacle MovieBoard is not yet supported\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ohci_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to enable OHCI hardware\0A\00", align 1
@OHCI1394_PCI_HCI_Control = common dso_local global i32 0, align 4
@bus_reset_work = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@OHCI1394_REGISTER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid MMIO resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ohci_driver_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"MMIO resource unavailable\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to remap registers\0A\00", align 1
@ohci_quirks = common dso_local global %struct.TYPE_5__* null, align 8
@PCI_ANY_ID = common dso_local global i64 0, align 8
@param_quirks = common dso_local global i32 0, align 4
@AR_BUFFERS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SELF_ID_BUF_SIZE = common dso_local global i32 0, align 4
@OHCI1394_AsReqRcvContextControlSet = common dso_local global i32 0, align 4
@OHCI1394_AsRspRcvContextControlSet = common dso_local global i32 0, align 4
@OHCI1394_AsReqTrContextControlSet = common dso_local global i32 0, align 4
@handle_at_packet = common dso_local global i32 0, align 4
@OHCI1394_AsRspTrContextControlSet = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntMaskSet = common dso_local global i32 0, align 4
@OHCI1394_IsoRecvIntMaskClear = common dso_local global i32 0, align 4
@OHCI1394_IsoXmitIntMaskSet = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"overriding IsoXmitIntMask\0A\00", align 1
@OHCI1394_IsoXmitIntMaskClear = common dso_local global i32 0, align 4
@OHCI1394_BusOptions = common dso_local global i32 0, align 4
@OHCI1394_GUIDHi = common dso_local global i32 0, align 4
@OHCI1394_GUIDLo = common dso_local global i32 0, align 4
@QUIRK_NO_MSI = common dso_local global i32 0, align 4
@irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to allocate interrupt %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@OHCI1394_Version = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [76 x i8] c"added OHCI v%x.%x device as card %d, %d IR + %d IT contexts, quirks 0x%x%s\0A\00", align 1
@OHCI1394_PhyUpperBound = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c", physUB\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.fw_ohci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PCI_VENDOR_ID_PINNACLE_SYSTEMS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 4
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %537

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i64 136, i32 %27)
  %29 = bitcast i8* %28 to %struct.fw_ohci*
  store %struct.fw_ohci* %29, %struct.fw_ohci** %6, align 8
  %30 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %31 = icmp eq %struct.fw_ohci* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %535

35:                                               ; preds = %26
  %36 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %37 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %36, i32 0, i32 11
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 4
  %40 = call i32 @fw_card_initialize(%struct.TYPE_6__* %37, i32* @ohci_driver, i32* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i32 @pmac_ohci_on(%struct.pci_dev* %41)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_enable_device(%struct.pci_dev* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 4
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %530

51:                                               ; preds = %35
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_set_master(%struct.pci_dev* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load i32, i32* @OHCI1394_PCI_HCI_Control, align 4
  %56 = call i32 @pci_write_config_dword(%struct.pci_dev* %54, i32 %55, i32 0)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %59 = call i32 @pci_set_drvdata(%struct.pci_dev* %57, %struct.fw_ohci* %58)
  %60 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %61 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %60, i32 0, i32 22
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %64 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %63, i32 0, i32 21
  %65 = call i32 @mutex_init(i32* %64)
  %66 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %67 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %66, i32 0, i32 20
  %68 = load i32, i32* @bus_reset_work, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_resource_flags(%struct.pci_dev* %70, i32 0)
  %72 = load i32, i32* @IORESOURCE_MEM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %51
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = call i64 @pci_resource_len(%struct.pci_dev* %76, i32 0)
  %78 = load i64, i64* @OHCI1394_REGISTER_SIZE, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75, %51
  %81 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %82 = call i32 (%struct.fw_ohci*, i8*, ...) @ohci_err(%struct.fw_ohci* %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @ENXIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %13, align 4
  br label %527

85:                                               ; preds = %75
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = load i32, i32* @ohci_driver_name, align 4
  %88 = call i32 @pci_request_region(%struct.pci_dev* %86, i32 0, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %93 = call i32 (%struct.fw_ohci*, i8*, ...) @ohci_err(%struct.fw_ohci* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %527

94:                                               ; preds = %85
  %95 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %96 = load i64, i64* @OHCI1394_REGISTER_SIZE, align 8
  %97 = call i32* @pci_iomap(%struct.pci_dev* %95, i32 0, i64 %96)
  %98 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %99 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %98, i32 0, i32 8
  store i32* %97, i32** %99, align 8
  %100 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %101 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %100, i32 0, i32 8
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %94
  %105 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %106 = call i32 (%struct.fw_ohci*, i8*, ...) @ohci_err(%struct.fw_ohci* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @ENXIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %13, align 4
  br label %524

109:                                              ; preds = %94
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %186, %109
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ohci_quirks, align 8
  %113 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %112)
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %189

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ohci_quirks, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %121, %124
  br i1 %125, label %126, label %185

126:                                              ; preds = %115
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ohci_quirks, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i16, i16* %131, align 8
  %133 = zext i16 %132 to i32
  %134 = load i64, i64* @PCI_ANY_ID, align 8
  %135 = trunc i64 %134 to i16
  %136 = zext i16 %135 to i32
  %137 = icmp eq i32 %133, %136
  br i1 %137, label %151, label %138

138:                                              ; preds = %126
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ohci_quirks, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i16, i16* %143, align 8
  %145 = zext i16 %144 to i32
  %146 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %147 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %146, i32 0, i32 1
  %148 = load i16, i16* %147, align 8
  %149 = zext i16 %148 to i32
  %150 = icmp eq i32 %145, %149
  br i1 %150, label %151, label %185

151:                                              ; preds = %138, %126
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ohci_quirks, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 2
  %157 = load i16, i16* %156, align 2
  %158 = zext i16 %157 to i32
  %159 = load i64, i64* @PCI_ANY_ID, align 8
  %160 = trunc i64 %159 to i16
  %161 = zext i16 %160 to i32
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %176, label %163

163:                                              ; preds = %151
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ohci_quirks, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i16, i16* %168, align 2
  %170 = zext i16 %169 to i32
  %171 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %172 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %171, i32 0, i32 2
  %173 = load i16, i16* %172, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp sge i32 %170, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %163, %151
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ohci_quirks, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %184 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %189

185:                                              ; preds = %163, %138, %115
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %110

189:                                              ; preds = %176, %110
  %190 = load i32, i32* @param_quirks, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = load i32, i32* @param_quirks, align 4
  %194 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %195 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %192, %189
  %197 = load i32, i32* @AR_BUFFERS, align 4
  %198 = sext i32 %197 to i64
  %199 = mul i64 %198, 4
  %200 = load i32, i32* @PAGE_SIZE, align 4
  %201 = sdiv i32 %200, 4
  %202 = sext i32 %201 to i64
  %203 = icmp ugt i64 %199, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @BUILD_BUG_ON(i32 %204)
  %206 = load i32, i32* @SELF_ID_BUF_SIZE, align 4
  %207 = load i32, i32* @PAGE_SIZE, align 4
  %208 = sdiv i32 %207, 2
  %209 = icmp sgt i32 %206, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @BUILD_BUG_ON(i32 %210)
  %212 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %213 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %212, i32 0, i32 11
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @PAGE_SIZE, align 4
  %217 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %218 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %217, i32 0, i32 9
  %219 = load i32, i32* @GFP_KERNEL, align 4
  %220 = call i64 @dma_alloc_coherent(i32 %215, i32 %216, i64* %218, i32 %219)
  %221 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %222 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %221, i32 0, i32 10
  store i64 %220, i64* %222, align 8
  %223 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %224 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %223, i32 0, i32 10
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %196
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %13, align 4
  br label %518

230:                                              ; preds = %196
  %231 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %232 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %231, i32 0, i32 12
  %233 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %234 = load i32, i32* @OHCI1394_AsReqRcvContextControlSet, align 4
  %235 = call i32 @ar_context_init(i32* %232, %struct.fw_ohci* %233, i32 0, i32 %234)
  store i32 %235, i32* %13, align 4
  %236 = load i32, i32* %13, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %230
  br label %505

239:                                              ; preds = %230
  %240 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %241 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %240, i32 0, i32 13
  %242 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %243 = load i32, i32* @PAGE_SIZE, align 4
  %244 = sdiv i32 %243, 4
  %245 = load i32, i32* @OHCI1394_AsRspRcvContextControlSet, align 4
  %246 = call i32 @ar_context_init(i32* %241, %struct.fw_ohci* %242, i32 %244, i32 %245)
  store i32 %246, i32* %13, align 4
  %247 = load i32, i32* %13, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %239
  br label %501

250:                                              ; preds = %239
  %251 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %252 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %251, i32 0, i32 14
  %253 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %254 = load i32, i32* @OHCI1394_AsReqTrContextControlSet, align 4
  %255 = load i32, i32* @handle_at_packet, align 4
  %256 = call i32 @context_init(i32* %252, %struct.fw_ohci* %253, i32 %254, i32 %255)
  store i32 %256, i32* %13, align 4
  %257 = load i32, i32* %13, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %250
  br label %497

260:                                              ; preds = %250
  %261 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %262 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %261, i32 0, i32 15
  %263 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %264 = load i32, i32* @OHCI1394_AsRspTrContextControlSet, align 4
  %265 = load i32, i32* @handle_at_packet, align 4
  %266 = call i32 @context_init(i32* %262, %struct.fw_ohci* %263, i32 %264, i32 %265)
  store i32 %266, i32* %13, align 4
  %267 = load i32, i32* %13, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %260
  br label %493

270:                                              ; preds = %260
  %271 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %272 = load i32, i32* @OHCI1394_IsoRecvIntMaskSet, align 4
  %273 = call i32 @reg_write(%struct.fw_ohci* %271, i32 %272, i32 -1)
  %274 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %275 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %274, i32 0, i32 1
  store i64 -1, i64* %275, align 8
  %276 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %277 = load i32, i32* @OHCI1394_IsoRecvIntMaskSet, align 4
  %278 = call i32 @reg_read(%struct.fw_ohci* %276, i32 %277)
  %279 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %280 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  %281 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %282 = load i32, i32* @OHCI1394_IsoRecvIntMaskClear, align 4
  %283 = call i32 @reg_write(%struct.fw_ohci* %281, i32 %282, i32 -1)
  %284 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %285 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %288 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 4
  %289 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %290 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = call i8* @hweight32(i32 %291)
  %293 = ptrtoint i8* %292 to i32
  %294 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %295 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %294, i32 0, i32 4
  store i32 %293, i32* %295, align 8
  %296 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %297 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %296, i32 0, i32 4
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = mul i64 4, %299
  store i64 %300, i64* %14, align 8
  %301 = load i64, i64* %14, align 8
  %302 = load i32, i32* @GFP_KERNEL, align 4
  %303 = call i8* @kzalloc(i64 %301, i32 %302)
  %304 = bitcast i8* %303 to %struct.fw_ohci*
  %305 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %306 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %305, i32 0, i32 17
  store %struct.fw_ohci* %304, %struct.fw_ohci** %306, align 8
  %307 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %308 = load i32, i32* @OHCI1394_IsoXmitIntMaskSet, align 4
  %309 = call i32 @reg_write(%struct.fw_ohci* %307, i32 %308, i32 -1)
  %310 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %311 = load i32, i32* @OHCI1394_IsoXmitIntMaskSet, align 4
  %312 = call i32 @reg_read(%struct.fw_ohci* %310, i32 %311)
  %313 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %314 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %313, i32 0, i32 5
  store i32 %312, i32* %314, align 4
  %315 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %316 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %270
  %320 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %321 = call i32 (%struct.fw_ohci*, i8*, ...) @ohci_notice(%struct.fw_ohci* %320, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %322 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %323 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %322, i32 0, i32 5
  store i32 15, i32* %323, align 4
  br label %324

324:                                              ; preds = %319, %270
  %325 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %326 = load i32, i32* @OHCI1394_IsoXmitIntMaskClear, align 4
  %327 = call i32 @reg_write(%struct.fw_ohci* %325, i32 %326, i32 -1)
  %328 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %329 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %328, i32 0, i32 5
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %332 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %331, i32 0, i32 6
  store i32 %330, i32* %332, align 8
  %333 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %334 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = call i8* @hweight32(i32 %335)
  %337 = ptrtoint i8* %336 to i32
  %338 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %339 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %338, i32 0, i32 7
  store i32 %337, i32* %339, align 4
  %340 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %341 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = mul i64 4, %343
  store i64 %344, i64* %14, align 8
  %345 = load i64, i64* %14, align 8
  %346 = load i32, i32* @GFP_KERNEL, align 4
  %347 = call i8* @kzalloc(i64 %345, i32 %346)
  %348 = bitcast i8* %347 to %struct.fw_ohci*
  %349 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %350 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %349, i32 0, i32 16
  store %struct.fw_ohci* %348, %struct.fw_ohci** %350, align 8
  %351 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %352 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %351, i32 0, i32 16
  %353 = load %struct.fw_ohci*, %struct.fw_ohci** %352, align 8
  %354 = icmp eq %struct.fw_ohci* %353, null
  br i1 %354, label %360, label %355

355:                                              ; preds = %324
  %356 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %357 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %356, i32 0, i32 17
  %358 = load %struct.fw_ohci*, %struct.fw_ohci** %357, align 8
  %359 = icmp eq %struct.fw_ohci* %358, null
  br i1 %359, label %360, label %363

360:                                              ; preds = %355, %324
  %361 = load i32, i32* @ENOMEM, align 4
  %362 = sub nsw i32 0, %361
  store i32 %362, i32* %13, align 4
  br label %481

363:                                              ; preds = %355
  %364 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %365 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %364, i32 0, i32 10
  %366 = load i64, i64* %365, align 8
  %367 = load i32, i32* @PAGE_SIZE, align 4
  %368 = sdiv i32 %367, 2
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %366, %369
  %371 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %372 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %371, i32 0, i32 19
  store i64 %370, i64* %372, align 8
  %373 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %374 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %373, i32 0, i32 9
  %375 = load i64, i64* %374, align 8
  %376 = load i32, i32* @PAGE_SIZE, align 4
  %377 = sdiv i32 %376, 2
  %378 = sext i32 %377 to i64
  %379 = add nsw i64 %375, %378
  %380 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %381 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %380, i32 0, i32 18
  store i64 %379, i64* %381, align 8
  %382 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %383 = load i32, i32* @OHCI1394_BusOptions, align 4
  %384 = call i32 @reg_read(%struct.fw_ohci* %382, i32 %383)
  store i32 %384, i32* %7, align 4
  %385 = load i32, i32* %7, align 4
  %386 = ashr i32 %385, 12
  %387 = and i32 %386, 15
  store i32 %387, i32* %8, align 4
  %388 = load i32, i32* %7, align 4
  %389 = and i32 %388, 7
  store i32 %389, i32* %9, align 4
  %390 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %391 = load i32, i32* @OHCI1394_GUIDHi, align 4
  %392 = call i32 @reg_read(%struct.fw_ohci* %390, i32 %391)
  %393 = shl i32 %392, 32
  %394 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %395 = load i32, i32* @OHCI1394_GUIDLo, align 4
  %396 = call i32 @reg_read(%struct.fw_ohci* %394, i32 %395)
  %397 = or i32 %393, %396
  store i32 %397, i32* %11, align 4
  %398 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %399 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @QUIRK_NO_MSI, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %407, label %404

404:                                              ; preds = %363
  %405 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %406 = call i32 @pci_enable_msi(%struct.pci_dev* %405)
  br label %407

407:                                              ; preds = %404, %363
  %408 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %409 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @irq_handler, align 4
  %412 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %413 = call i64 @pci_dev_msi_enabled(%struct.pci_dev* %412)
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %407
  br label %418

416:                                              ; preds = %407
  %417 = load i32, i32* @IRQF_SHARED, align 4
  br label %418

418:                                              ; preds = %416, %415
  %419 = phi i32 [ 0, %415 ], [ %417, %416 ]
  %420 = load i32, i32* @ohci_driver_name, align 4
  %421 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %422 = call i64 @request_irq(i32 %410, i32 %411, i32 %419, i32 %420, %struct.fw_ohci* %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %418
  %425 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %426 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %427 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (%struct.fw_ohci*, i8*, ...) @ohci_err(%struct.fw_ohci* %425, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %428)
  %430 = load i32, i32* @EIO, align 4
  %431 = sub nsw i32 0, %430
  store i32 %431, i32* %13, align 4
  br label %478

432:                                              ; preds = %418
  %433 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %434 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %433, i32 0, i32 11
  %435 = load i32, i32* %8, align 4
  %436 = load i32, i32* %9, align 4
  %437 = load i32, i32* %11, align 4
  %438 = call i32 @fw_card_add(%struct.TYPE_6__* %434, i32 %435, i32 %436, i32 %437)
  store i32 %438, i32* %13, align 4
  %439 = load i32, i32* %13, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %432
  br label %472

442:                                              ; preds = %432
  %443 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %444 = load i32, i32* @OHCI1394_Version, align 4
  %445 = call i32 @reg_read(%struct.fw_ohci* %443, i32 %444)
  %446 = and i32 %445, 16711935
  store i32 %446, i32* %10, align 4
  %447 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %448 = load i32, i32* %10, align 4
  %449 = ashr i32 %448, 16
  %450 = load i32, i32* %10, align 4
  %451 = and i32 %450, 255
  %452 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %453 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %452, i32 0, i32 11
  %454 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %457 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %460 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %459, i32 0, i32 7
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %463 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %466 = load i32, i32* @OHCI1394_PhyUpperBound, align 4
  %467 = call i32 @reg_read(%struct.fw_ohci* %465, i32 %466)
  %468 = icmp ne i32 %467, 0
  %469 = zext i1 %468 to i64
  %470 = select i1 %468, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
  %471 = call i32 (%struct.fw_ohci*, i8*, ...) @ohci_notice(%struct.fw_ohci* %447, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.7, i64 0, i64 0), i32 %449, i32 %451, i32 %455, i32 %458, i32 %461, i32 %464, i8* %470)
  store i32 0, i32* %3, align 4
  br label %537

472:                                              ; preds = %441
  %473 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %474 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %477 = call i32 @free_irq(i32 %475, %struct.fw_ohci* %476)
  br label %478

478:                                              ; preds = %472, %424
  %479 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %480 = call i32 @pci_disable_msi(%struct.pci_dev* %479)
  br label %481

481:                                              ; preds = %478, %360
  %482 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %483 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %482, i32 0, i32 17
  %484 = load %struct.fw_ohci*, %struct.fw_ohci** %483, align 8
  %485 = call i32 @kfree(%struct.fw_ohci* %484)
  %486 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %487 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %486, i32 0, i32 16
  %488 = load %struct.fw_ohci*, %struct.fw_ohci** %487, align 8
  %489 = call i32 @kfree(%struct.fw_ohci* %488)
  %490 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %491 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %490, i32 0, i32 15
  %492 = call i32 @context_release(i32* %491)
  br label %493

493:                                              ; preds = %481, %269
  %494 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %495 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %494, i32 0, i32 14
  %496 = call i32 @context_release(i32* %495)
  br label %497

497:                                              ; preds = %493, %259
  %498 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %499 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %498, i32 0, i32 13
  %500 = call i32 @ar_context_release(i32* %499)
  br label %501

501:                                              ; preds = %497, %249
  %502 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %503 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %502, i32 0, i32 12
  %504 = call i32 @ar_context_release(i32* %503)
  br label %505

505:                                              ; preds = %501, %238
  %506 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %507 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %506, i32 0, i32 11
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* @PAGE_SIZE, align 4
  %511 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %512 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %511, i32 0, i32 10
  %513 = load i64, i64* %512, align 8
  %514 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %515 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %514, i32 0, i32 9
  %516 = load i64, i64* %515, align 8
  %517 = call i32 @dma_free_coherent(i32 %509, i32 %510, i64 %513, i64 %516)
  br label %518

518:                                              ; preds = %505, %227
  %519 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %520 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %521 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %520, i32 0, i32 8
  %522 = load i32*, i32** %521, align 8
  %523 = call i32 @pci_iounmap(%struct.pci_dev* %519, i32* %522)
  br label %524

524:                                              ; preds = %518, %104
  %525 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %526 = call i32 @pci_release_region(%struct.pci_dev* %525, i32 0)
  br label %527

527:                                              ; preds = %524, %91, %80
  %528 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %529 = call i32 @pci_disable_device(%struct.pci_dev* %528)
  br label %530

530:                                              ; preds = %527, %47
  %531 = load %struct.fw_ohci*, %struct.fw_ohci** %6, align 8
  %532 = call i32 @kfree(%struct.fw_ohci* %531)
  %533 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %534 = call i32 @pmac_ohci_off(%struct.pci_dev* %533)
  br label %535

535:                                              ; preds = %530, %32
  %536 = load i32, i32* %13, align 4
  store i32 %536, i32* %3, align 4
  br label %537

537:                                              ; preds = %535, %442, %20
  %538 = load i32, i32* %3, align 4
  ret i32 %538
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @fw_card_initialize(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @pmac_ohci_on(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.fw_ohci*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ohci_err(%struct.fw_ohci*, i8*, ...) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i32) #1

declare dso_local i32* @pci_iomap(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @ar_context_init(i32*, %struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @context_init(i32*, %struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @reg_write(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i8* @hweight32(i32) #1

declare dso_local i32 @ohci_notice(%struct.fw_ohci*, i8*, ...) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.fw_ohci*) #1

declare dso_local i64 @pci_dev_msi_enabled(%struct.pci_dev*) #1

declare dso_local i32 @fw_card_add(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.fw_ohci*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.fw_ohci*) #1

declare dso_local i32 @context_release(i32*) #1

declare dso_local i32 @ar_context_release(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i64) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pmac_ohci_off(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
