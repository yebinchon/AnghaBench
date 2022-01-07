; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.hfi1_devdata = type { i32, %struct.hfi1_pportdata*, i32, i32 }
%struct.hfi1_pportdata = type { i32*, i32* }

@PCI_DEVICE_ID_INTEL0 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failing on unknown Intel deviceid 0x%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@NUM_IB_PORTS = common dso_local global i32 0, align 4
@rcvhdrcnt = common dso_local global i32 0, align 4
@hfi1_hdrq_entsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid HdrQ Entry size %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@eager_buffer_size = common dso_local global i64 0, align 8
@MIN_EAGER_BUFFER = common dso_local global i32 0, align 4
@MAX_EAGER_BUFFER_TOTAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Eager buffer size %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid Eager buffer size of 0\0A\00", align 1
@hfi1_rcvarr_split = common dso_local global i64 0, align 8
@HFI1_INITTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to create /dev devices: %d\0A\00", align 1
@ib_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hfi1_devdata*, align 8
  %11 = alloca %struct.hfi1_pportdata*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 (...) @HFI1_CAP_LOCK()
  %13 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %14 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PCI_DEVICE_ID_INTEL0, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %33, label %18

18:                                               ; preds = %2
  %19 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCI_DEVICE_ID_INTEL1, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %18
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 0
  %27 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %28 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %226

33:                                               ; preds = %18, %2
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = load i32, i32* @NUM_IB_PORTS, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 16
  %38 = trunc i64 %37 to i32
  %39 = call %struct.hfi1_devdata* @hfi1_alloc_devdata(%struct.pci_dev* %34, i32 %38)
  store %struct.hfi1_devdata* %39, %struct.hfi1_devdata** %10, align 8
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %41 = call i64 @IS_ERR(%struct.hfi1_devdata* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %45 = call i32 @PTR_ERR(%struct.hfi1_devdata* %44)
  store i32 %45, i32* %6, align 4
  br label %226

46:                                               ; preds = %33
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %48 = load i32, i32* @rcvhdrcnt, align 4
  %49 = call i32 @init_validate_rcvhdrcnt(%struct.hfi1_devdata* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %226

53:                                               ; preds = %46
  %54 = load i32, i32* @hfi1_hdrq_entsize, align 4
  %55 = call i32 @encode_rcv_header_entry_size(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %59 = load i32, i32* @hfi1_hdrq_entsize, align 4
  %60 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %226

63:                                               ; preds = %53
  %64 = load i64, i64* @eager_buffer_size, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = load i64, i64* @eager_buffer_size, align 8
  %68 = call i32 @is_power_of_2(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* @eager_buffer_size, align 8
  %72 = call i64 @roundup_pow_of_two(i64 %71)
  store i64 %72, i64* @eager_buffer_size, align 8
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i64, i64* @eager_buffer_size, align 8
  %75 = load i32, i32* @MIN_EAGER_BUFFER, align 4
  %76 = mul nsw i32 %75, 8
  %77 = load i32, i32* @MAX_EAGER_BUFFER_TOTAL, align 4
  %78 = call i64 @clamp_val(i64 %74, i32 %76, i32 %77)
  store i64 %78, i64* @eager_buffer_size, align 8
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %80 = load i64, i64* @eager_buffer_size, align 8
  %81 = call i32 @dd_dev_info(%struct.hfi1_devdata* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  br label %87

82:                                               ; preds = %63
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %84 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %226

87:                                               ; preds = %73
  %88 = load i64, i64* @hfi1_rcvarr_split, align 8
  %89 = call i64 @clamp_val(i64 %88, i32 0, i32 100)
  store i64 %89, i64* @hfi1_rcvarr_split, align 8
  %90 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %91 = call i32 @hfi1_pcie_init(%struct.hfi1_devdata* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %226

95:                                               ; preds = %87
  %96 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %97 = call i32 @hfi1_init_dd(%struct.hfi1_devdata* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %223

101:                                              ; preds = %95
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %103 = call i32 @create_workqueues(%struct.hfi1_devdata* %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %223

107:                                              ; preds = %101
  %108 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %109 = call i32 @hfi1_init(%struct.hfi1_devdata* %108, i32 0)
  store i32 %109, i32* %9, align 4
  %110 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %111 = call i32 @hfi1_vnic_setup(%struct.hfi1_devdata* %110)
  %112 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %113 = call i32 @hfi1_register_ib_device(%struct.hfi1_devdata* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* @HFI1_INITTED, align 4
  %121 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %122 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %126 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %125, i32 0, i32 2
  %127 = call i32 @hfi1_dbg_ibdev_init(i32* %126)
  br label %128

128:                                              ; preds = %119, %116, %107
  %129 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %130 = call i32 @hfi1_device_create(%struct.hfi1_devdata* %129)
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 0, %135
  %137 = call i32 (%struct.hfi1_devdata*, i8*, ...) @dd_dev_err(%struct.hfi1_devdata* %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %6, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %220

144:                                              ; preds = %141, %138
  %145 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %146 = call i32 @msix_clean_up_interrupts(%struct.hfi1_devdata* %145)
  %147 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %148 = call i32 @stop_timers(%struct.hfi1_devdata* %147)
  %149 = load i32, i32* @ib_wq, align 4
  %150 = call i32 @flush_workqueue(i32 %149)
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %195, %144
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %154 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %198

157:                                              ; preds = %151
  %158 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %159 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %158, i32 0, i32 1
  %160 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %160, i64 %162
  %164 = call i32 @hfi1_quiet_serdes(%struct.hfi1_pportdata* %163)
  %165 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %166 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %165, i32 0, i32 1
  %167 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %166, align 8
  %168 = load i32, i32* %8, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %167, i64 %169
  store %struct.hfi1_pportdata* %170, %struct.hfi1_pportdata** %11, align 8
  %171 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %172 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %157
  %176 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %177 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @destroy_workqueue(i32* %178)
  %180 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %181 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %180, i32 0, i32 1
  store i32* null, i32** %181, align 8
  br label %182

182:                                              ; preds = %175, %157
  %183 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %184 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %189 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @destroy_workqueue(i32* %190)
  %192 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %193 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %192, i32 0, i32 0
  store i32* null, i32** %193, align 8
  br label %194

194:                                              ; preds = %187, %182
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %151

198:                                              ; preds = %151
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %198
  %202 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %203 = call i32 @hfi1_device_remove(%struct.hfi1_devdata* %202)
  br label %204

204:                                              ; preds = %201, %198
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %209 = call i32 @hfi1_unregister_ib_device(%struct.hfi1_devdata* %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %212 = call i32 @hfi1_vnic_cleanup(%struct.hfi1_devdata* %211)
  %213 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %214 = call i32 @postinit_cleanup(%struct.hfi1_devdata* %213)
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %217, %210
  br label %226

220:                                              ; preds = %141
  %221 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %10, align 8
  %222 = call i32 @sdma_start(%struct.hfi1_devdata* %221)
  store i32 0, i32* %3, align 4
  br label %228

223:                                              ; preds = %106, %100
  %224 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %225 = call i32 @hfi1_pcie_cleanup(%struct.pci_dev* %224)
  br label %226

226:                                              ; preds = %223, %219, %94, %82, %57, %52, %43, %24
  %227 = load i32, i32* %6, align 4
  store i32 %227, i32* %3, align 4
  br label %228

228:                                              ; preds = %226, %220
  %229 = load i32, i32* %3, align 4
  ret i32 %229
}

declare dso_local i32 @HFI1_CAP_LOCK(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.hfi1_devdata* @hfi1_alloc_devdata(%struct.pci_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hfi1_devdata*) #1

declare dso_local i32 @PTR_ERR(%struct.hfi1_devdata*) #1

declare dso_local i32 @init_validate_rcvhdrcnt(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @encode_rcv_header_entry_size(i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, ...) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i64) #1

declare dso_local i32 @hfi1_pcie_init(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_init_dd(%struct.hfi1_devdata*) #1

declare dso_local i32 @create_workqueues(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_init(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @hfi1_vnic_setup(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_register_ib_device(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_dbg_ibdev_init(i32*) #1

declare dso_local i32 @hfi1_device_create(%struct.hfi1_devdata*) #1

declare dso_local i32 @msix_clean_up_interrupts(%struct.hfi1_devdata*) #1

declare dso_local i32 @stop_timers(%struct.hfi1_devdata*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @hfi1_quiet_serdes(%struct.hfi1_pportdata*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @hfi1_device_remove(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_unregister_ib_device(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_vnic_cleanup(%struct.hfi1_devdata*) #1

declare dso_local i32 @postinit_cleanup(%struct.hfi1_devdata*) #1

declare dso_local i32 @sdma_start(%struct.hfi1_devdata*) #1

declare dso_local i32 @hfi1_pcie_cleanup(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
