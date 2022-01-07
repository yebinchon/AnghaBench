; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_cptvf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.cpt_vf = type { i32, i32, %struct.pci_dev*, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to enable PCI device\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PCI request regions failed 0x%x\0A\00", align 1
@CPT_FLAG_VF_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to get usable DMA configuration\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Unable to get 48-bit DMA for consistent allocations\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Cannot map config register space, aborting\0A\00", align 1
@CPT_VF_MSIX_VECTORS = common dso_local global i32 0, align 4
@PCI_IRQ_MSIX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"Request for #%d msix vectors failed\0A\00", align 1
@CPT_VF_INT_VEC_E_MISC = common dso_local global i32 0, align 4
@cptvf_misc_intr_handler = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"CPT VF misc intr\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Request misc irq failed\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"PF not responding to READY msg\00", align 1
@CPT_CMD_QCHUNK_SIZE = common dso_local global i32 0, align 4
@CPT_CMD_QLEN = common dso_local global i32 0, align 4
@CPT_NUM_QS_PER_VF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"cptvf_sw_init() failed\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"PF not responding to QLEN msg\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"PF not responding to VF_GRP msg\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"PF not responding to VF_PRIO msg\00", align 1
@CPT_VF_INT_VEC_E_DONE = common dso_local global i32 0, align 4
@cptvf_done_intr_handler = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"CPT VF done intr\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Request done irq failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"PF not responding to UP msg\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Algorithm register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cptvf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cptvf_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.cpt_vf*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cpt_vf* @devm_kzalloc(%struct.device* %11, i32 32, i32 %12)
  store %struct.cpt_vf* %13, %struct.cpt_vf** %7, align 8
  %14 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %15 = icmp ne %struct.cpt_vf* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %232

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %22 = call i32 @pci_set_drvdata(%struct.pci_dev* %20, %struct.cpt_vf* %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %25 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %24, i32 0, i32 2
  store %struct.pci_dev* %23, %struct.pci_dev** %25, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pci_enable_device(%struct.pci_dev* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_set_drvdata(%struct.pci_dev* %33, %struct.cpt_vf* null)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %232

36:                                               ; preds = %19
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* @DRV_NAME, align 4
  %39 = call i32 @pci_request_regions(%struct.pci_dev* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %226

46:                                               ; preds = %36
  %47 = load i32, i32* @CPT_FLAG_VF_DRIVER, align 4
  %48 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %49 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @DMA_BIT_MASK(i32 48)
  %54 = call i32 @pci_set_dma_mask(%struct.pci_dev* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %223

60:                                               ; preds = %46
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i32 @DMA_BIT_MASK(i32 48)
  %63 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %67, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %223

69:                                               ; preds = %60
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pcim_iomap(%struct.pci_dev* %70, i32 0, i32 0)
  %72 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %73 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %75 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %69
  %79 = load %struct.device*, %struct.device** %6, align 8
  %80 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %79, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %223

83:                                               ; preds = %69
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = call i32 @dev_to_node(%struct.device* %85)
  %87 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %88 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = load i32, i32* @CPT_VF_MSIX_VECTORS, align 4
  %91 = load i32, i32* @CPT_VF_MSIX_VECTORS, align 4
  %92 = load i32, i32* @PCI_IRQ_MSIX, align 4
  %93 = call i32 @pci_alloc_irq_vectors(%struct.pci_dev* %89, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %83
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = load i32, i32* @CPT_VF_MSIX_VECTORS, align 4
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  br label %223

100:                                              ; preds = %83
  %101 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %102 = load i32, i32* @CPT_VF_INT_VEC_E_MISC, align 4
  %103 = call i32 @pci_irq_vector(%struct.pci_dev* %101, i32 %102)
  %104 = load i32, i32* @cptvf_misc_intr_handler, align 4
  %105 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %106 = call i32 @request_irq(i32 %103, i32 %104, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), %struct.cpt_vf* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = load %struct.device*, %struct.device** %6, align 8
  %111 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %110, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %218

112:                                              ; preds = %100
  %113 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %114 = call i32 @cptvf_enable_mbox_interrupts(%struct.cpt_vf* %113)
  %115 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %116 = call i32 @cptvf_enable_swerr_interrupts(%struct.cpt_vf* %115)
  %117 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %118 = call i32 @cptvf_check_pf_ready(%struct.cpt_vf* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %112
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %212

124:                                              ; preds = %112
  %125 = load i32, i32* @CPT_CMD_QCHUNK_SIZE, align 4
  %126 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %127 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %130 = load i32, i32* @CPT_CMD_QLEN, align 4
  %131 = load i32, i32* @CPT_NUM_QS_PER_VF, align 4
  %132 = call i32 @cptvf_sw_init(%struct.cpt_vf* %129, i32 %130, i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %124
  %136 = load %struct.device*, %struct.device** %6, align 8
  %137 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %212

138:                                              ; preds = %124
  %139 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %140 = call i32 @cptvf_send_vq_size_msg(%struct.cpt_vf* %139)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load %struct.device*, %struct.device** %6, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %212

146:                                              ; preds = %138
  %147 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %148 = call i32 @cptvf_device_init(%struct.cpt_vf* %147)
  %149 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %150 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %152 = call i32 @cptvf_send_vf_to_grp_msg(%struct.cpt_vf* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load %struct.device*, %struct.device** %6, align 8
  %157 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %212

158:                                              ; preds = %146
  %159 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %160 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %159, i32 0, i32 1
  store i32 1, i32* %160, align 4
  %161 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %162 = call i32 @cptvf_send_vf_priority_msg(%struct.cpt_vf* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %158
  %166 = load %struct.device*, %struct.device** %6, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %212

168:                                              ; preds = %158
  %169 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %170 = load i32, i32* @CPT_VF_INT_VEC_E_DONE, align 4
  %171 = call i32 @pci_irq_vector(%struct.pci_dev* %169, i32 %170)
  %172 = load i32, i32* @cptvf_done_intr_handler, align 4
  %173 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %174 = call i32 @request_irq(i32 %171, i32 %172, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), %struct.cpt_vf* %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %168
  %178 = load %struct.device*, %struct.device** %6, align 8
  %179 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %178, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %212

180:                                              ; preds = %168
  %181 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %182 = call i32 @cptvf_enable_done_interrupts(%struct.cpt_vf* %181)
  %183 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %184 = load i32, i32* @CPT_VF_INT_VEC_E_MISC, align 4
  %185 = call i32 @cptvf_set_irq_affinity(%struct.cpt_vf* %183, i32 %184)
  %186 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %187 = load i32, i32* @CPT_VF_INT_VEC_E_DONE, align 4
  %188 = call i32 @cptvf_set_irq_affinity(%struct.cpt_vf* %186, i32 %187)
  %189 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %190 = call i32 @cptvf_send_vf_up(%struct.cpt_vf* %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %180
  %194 = load %struct.device*, %struct.device** %6, align 8
  %195 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %205

196:                                              ; preds = %180
  %197 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %198 = call i32 @cvm_crypto_init(%struct.cpt_vf* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load %struct.device*, %struct.device** %6, align 8
  %203 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  br label %205

204:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %232

205:                                              ; preds = %201, %193
  %206 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %207 = load i32, i32* @CPT_VF_INT_VEC_E_DONE, align 4
  %208 = call i32 @cptvf_free_irq_affinity(%struct.cpt_vf* %206, i32 %207)
  %209 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %210 = load i32, i32* @CPT_VF_INT_VEC_E_MISC, align 4
  %211 = call i32 @cptvf_free_irq_affinity(%struct.cpt_vf* %209, i32 %210)
  br label %212

212:                                              ; preds = %205, %177, %165, %155, %143, %135, %121
  %213 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %214 = load i32, i32* @CPT_VF_INT_VEC_E_MISC, align 4
  %215 = call i32 @pci_irq_vector(%struct.pci_dev* %213, i32 %214)
  %216 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %217 = call i32 @free_irq(i32 %215, %struct.cpt_vf* %216)
  br label %218

218:                                              ; preds = %212, %109
  %219 = load %struct.cpt_vf*, %struct.cpt_vf** %7, align 8
  %220 = getelementptr inbounds %struct.cpt_vf, %struct.cpt_vf* %219, i32 0, i32 2
  %221 = load %struct.pci_dev*, %struct.pci_dev** %220, align 8
  %222 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %221)
  br label %223

223:                                              ; preds = %218, %96, %78, %66, %57
  %224 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %225 = call i32 @pci_release_regions(%struct.pci_dev* %224)
  br label %226

226:                                              ; preds = %223, %42
  %227 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %228 = call i32 @pci_disable_device(%struct.pci_dev* %227)
  %229 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %230 = call i32 @pci_set_drvdata(%struct.pci_dev* %229, %struct.cpt_vf* null)
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %226, %204, %30, %16
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local %struct.cpt_vf* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.cpt_vf*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32 @pci_alloc_irq_vectors(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.cpt_vf*) #1

declare dso_local i32 @pci_irq_vector(%struct.pci_dev*, i32) #1

declare dso_local i32 @cptvf_enable_mbox_interrupts(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_enable_swerr_interrupts(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_check_pf_ready(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_sw_init(%struct.cpt_vf*, i32, i32) #1

declare dso_local i32 @cptvf_send_vq_size_msg(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_device_init(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_send_vf_to_grp_msg(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_send_vf_priority_msg(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_enable_done_interrupts(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_set_irq_affinity(%struct.cpt_vf*, i32) #1

declare dso_local i32 @cptvf_send_vf_up(%struct.cpt_vf*) #1

declare dso_local i32 @cvm_crypto_init(%struct.cpt_vf*) #1

declare dso_local i32 @cptvf_free_irq_affinity(%struct.cpt_vf*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.cpt_vf*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
