; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_saa7146_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_core.c_saa7146_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, i32, i32 }
%struct.pci_device_id = type { i64 }
%struct.saa7146_pci_extension_data = type { %struct.saa7146_extension* }
%struct.saa7146_extension = type { i64 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)*, i64 (%struct.saa7146_dev.0*)* }
%struct.saa7146_dev = type opaque
%struct.saa7146_dev.0 = type opaque
%struct.saa7146_dev.1 = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, %struct.saa7146_extension*, i32, i32, %struct.pci_dev* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"saa7146 (%d)\00", align 1
@saa7146_num = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"pci:%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"pci_enable_device() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"saa7146\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ioremap() failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@interrupt_hw = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"request_irq() failed\0A\00", align 1
@SAA7146_RPS_MEM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [62 x i8] c"found saa7146 @ mem %p (revision %d, irq %d) (0x%04x,0x%04x)\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@PCI_BT_V1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"ext->probe() failed for %p. skipping device.\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"ext->attach() failed for %p. skipping device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @saa7146_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7146_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca %struct.saa7146_pci_extension_data*, align 8
  %6 = alloca %struct.saa7146_extension*, align 8
  %7 = alloca %struct.saa7146_dev.1*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %9 = load %struct.pci_device_id*, %struct.pci_device_id** %4, align 8
  %10 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.saa7146_pci_extension_data*
  store %struct.saa7146_pci_extension_data* %12, %struct.saa7146_pci_extension_data** %5, align 8
  %13 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %5, align 8
  %14 = getelementptr inbounds %struct.saa7146_pci_extension_data, %struct.saa7146_pci_extension_data* %13, i32 0, i32 0
  %15 = load %struct.saa7146_extension*, %struct.saa7146_extension** %14, align 8
  store %struct.saa7146_extension* %15, %struct.saa7146_extension** %6, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.saa7146_dev.1* @kzalloc(i32 112, i32 %18)
  store %struct.saa7146_dev.1* %19, %struct.saa7146_dev.1** %7, align 8
  %20 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %21 = icmp ne %struct.saa7146_dev.1* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %221

24:                                               ; preds = %2
  %25 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %26 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @saa7146_num, align 4
  %29 = call i32 @sprintf(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %31 = call i32 @DEB_EE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = call i32 @pci_enable_device(%struct.pci_dev* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %277

38:                                               ; preds = %24
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = call i32 @pci_set_master(%struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %43 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %42, i32 0, i32 14
  store %struct.pci_dev* %41, %struct.pci_dev** %43, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %48 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = call i32 @pci_request_region(%struct.pci_dev* %49, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %38
  br label %274

54:                                               ; preds = %38
  %55 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %56 = call i32 @pci_resource_start(%struct.pci_dev* %55, i32 0)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = call i32 @pci_resource_len(%struct.pci_dev* %57, i32 0)
  %59 = call i32 @ioremap(i32 %56, i32 %58)
  %60 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %61 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %63 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %54
  %67 = call i32 @ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %271

70:                                               ; preds = %54
  %71 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %72 = load i32, i32* @IER, align 4
  %73 = call i32 @saa7146_write(%struct.saa7146_dev.1* %71, i32 %72, i32 0)
  %74 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %75 = load i32, i32* @MC1, align 4
  %76 = call i32 @saa7146_write(%struct.saa7146_dev.1* %74, i32 %75, i32 822018048)
  %77 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %78 = load i32, i32* @MC2, align 4
  %79 = call i32 @saa7146_write(%struct.saa7146_dev.1* %77, i32 %78, i32 -134217728)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @interrupt_hw, align 4
  %84 = load i32, i32* @IRQF_SHARED, align 4
  %85 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %86 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %89 = call i32 @request_irq(i32 %82, i32 %83, i32 %84, i32 %87, %struct.saa7146_dev.1* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %70
  %93 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %266

94:                                               ; preds = %70
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  %97 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %98 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %99 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %100 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = call i8* @pci_zalloc_consistent(%struct.pci_dev* %97, i32 %98, i32* %101)
  %103 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %104 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %107 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %94
  br label %259

112:                                              ; preds = %94
  %113 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %114 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %115 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %116 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = call i8* @pci_zalloc_consistent(%struct.pci_dev* %113, i32 %114, i32* %117)
  %119 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %120 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %123 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %112
  br label %247

128:                                              ; preds = %112
  %129 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %130 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %131 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %132 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = call i8* @pci_zalloc_consistent(%struct.pci_dev* %129, i32 %130, i32* %133)
  %135 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %136 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  store i8* %134, i8** %137, align 8
  %138 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %139 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %128
  br label %235

144:                                              ; preds = %128
  %145 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %146 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %149 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %148, i32 0, i32 12
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %152 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %155 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %158 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 %147, i32 %150, i32 %153, i32 %156, i32 %159)
  %161 = load %struct.saa7146_extension*, %struct.saa7146_extension** %6, align 8
  %162 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %163 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %162, i32 0, i32 11
  store %struct.saa7146_extension* %161, %struct.saa7146_extension** %163, align 8
  %164 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %165 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %164, i32 0, i32 10
  %166 = call i32 @mutex_init(i32* %165)
  %167 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %168 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %167, i32 0, i32 9
  %169 = call i32 @spin_lock_init(i32* %168)
  %170 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %171 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %170, i32 0, i32 8
  %172 = call i32 @spin_lock_init(i32* %171)
  %173 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %174 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %173, i32 0, i32 7
  %175 = call i32 @mutex_init(i32* %174)
  %176 = load i32, i32* @THIS_MODULE, align 4
  %177 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %178 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %177, i32 0, i32 6
  store i32 %176, i32* %178, align 8
  %179 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %180 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %179, i32 0, i32 5
  %181 = call i32 @init_waitqueue_head(i32* %180)
  %182 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %183 = load i32, i32* @PCI_BT_V1, align 4
  %184 = call i32 @saa7146_write(%struct.saa7146_dev.1* %182, i32 %183, i32 469766175)
  %185 = load i32, i32* @ENODEV, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %8, align 4
  %187 = load %struct.saa7146_extension*, %struct.saa7146_extension** %6, align 8
  %188 = getelementptr inbounds %struct.saa7146_extension, %struct.saa7146_extension* %187, i32 0, i32 1
  %189 = load i64 (%struct.saa7146_dev.0*)*, i64 (%struct.saa7146_dev.0*)** %188, align 8
  %190 = icmp ne i64 (%struct.saa7146_dev.0*)* %189, null
  br i1 %190, label %191, label %202

191:                                              ; preds = %144
  %192 = load %struct.saa7146_extension*, %struct.saa7146_extension** %6, align 8
  %193 = getelementptr inbounds %struct.saa7146_extension, %struct.saa7146_extension* %192, i32 0, i32 1
  %194 = load i64 (%struct.saa7146_dev.0*)*, i64 (%struct.saa7146_dev.0*)** %193, align 8
  %195 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %196 = bitcast %struct.saa7146_dev.1* %195 to %struct.saa7146_dev.0*
  %197 = call i64 %194(%struct.saa7146_dev.0* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %201 = call i32 @DEB_D(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), %struct.saa7146_dev.1* %200)
  br label %223

202:                                              ; preds = %191, %144
  %203 = load %struct.saa7146_extension*, %struct.saa7146_extension** %6, align 8
  %204 = getelementptr inbounds %struct.saa7146_extension, %struct.saa7146_extension* %203, i32 0, i32 0
  %205 = load i64 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)*, i64 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)** %204, align 8
  %206 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %207 = bitcast %struct.saa7146_dev.1* %206 to %struct.saa7146_dev*
  %208 = load %struct.saa7146_pci_extension_data*, %struct.saa7146_pci_extension_data** %5, align 8
  %209 = call i64 %205(%struct.saa7146_dev* %207, %struct.saa7146_pci_extension_data* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %213 = call i32 @DEB_D(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), %struct.saa7146_dev.1* %212)
  br label %223

214:                                              ; preds = %202
  %215 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %216 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %217 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %216, i32 0, i32 4
  %218 = call i32 @pci_set_drvdata(%struct.pci_dev* %215, i32* %217)
  %219 = load i32, i32* @saa7146_num, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* @saa7146_num, align 4
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %277, %214, %22
  %222 = load i32, i32* %8, align 4
  ret i32 %222

223:                                              ; preds = %211, %199
  %224 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %225 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %226 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %227 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %231 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @pci_free_consistent(%struct.pci_dev* %224, i32 %225, i8* %229, i32 %233)
  br label %235

235:                                              ; preds = %223, %143
  %236 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %237 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %238 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %239 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %243 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @pci_free_consistent(%struct.pci_dev* %236, i32 %237, i8* %241, i32 %245)
  br label %247

247:                                              ; preds = %235, %127
  %248 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %249 = load i32, i32* @SAA7146_RPS_MEM, align 4
  %250 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %251 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %255 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @pci_free_consistent(%struct.pci_dev* %248, i32 %249, i8* %253, i32 %257)
  br label %259

259:                                              ; preds = %247, %111
  %260 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %261 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %264 = bitcast %struct.saa7146_dev.1* %263 to i8*
  %265 = call i32 @free_irq(i32 %262, i8* %264)
  br label %266

266:                                              ; preds = %259, %92
  %267 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %268 = getelementptr inbounds %struct.saa7146_dev.1, %struct.saa7146_dev.1* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @iounmap(i32 %269)
  br label %271

271:                                              ; preds = %266, %66
  %272 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %273 = call i32 @pci_release_region(%struct.pci_dev* %272, i32 0)
  br label %274

274:                                              ; preds = %271, %53
  %275 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %276 = call i32 @pci_disable_device(%struct.pci_dev* %275)
  br label %277

277:                                              ; preds = %274, %36
  %278 = load %struct.saa7146_dev.1*, %struct.saa7146_dev.1** %7, align 8
  %279 = call i32 @kfree(%struct.saa7146_dev.1* %278)
  br label %221
}

declare dso_local %struct.saa7146_dev.1* @kzalloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @DEB_EE(i8*, %struct.pci_dev*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev.1*, i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.saa7146_dev.1*) #1

declare dso_local i8* @pci_zalloc_consistent(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @DEB_D(i8*, %struct.saa7146_dev.1*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i8*, i32) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.saa7146_dev.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
