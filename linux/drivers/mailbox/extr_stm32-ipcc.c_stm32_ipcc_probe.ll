; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_stm32-ipcc.c_stm32_ipcc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_stm32-ipcc.c_stm32_ipcc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stm32_ipcc = type { i32, i32*, i32, i32, i64, %struct.TYPE_3__, i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__*, i32*, %struct.device* }
%struct.TYPE_4__ = type { i8* }
%struct.resource = type { i32 }

@stm32_ipcc_probe.irq_name = internal constant [2 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@stm32_ipcc_rx_irq = common dso_local global i32 0, align 4
@stm32_ipcc_tx_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"No DT found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"st,proc-id\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Missing st,proc-id\0A\00", align 1
@STM32_MAX_PROCS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid proc_id (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IPCC_PROC_OFFST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"can not enable the clock\0A\00", align 1
@IPCC_IRQ_NUM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"no IRQ specified %s\0A\00", align 1
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to request irq %d (%d)\0A\00", align 1
@IPCC_XMR = common dso_local global i64 0, align 8
@RX_BIT_MASK = common dso_local global i32 0, align 4
@TX_BIT_MASK = common dso_local global i32 0, align 4
@IPCC_XCR = common dso_local global i64 0, align 8
@XCR_RXOIE = common dso_local global i32 0, align 4
@XCR_TXOIE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"could not get wakeup IRQ\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Failed to set wake up irq\0A\00", align 1
@IPCC_HWCFGR = common dso_local global i64 0, align 8
@IPCFGR_CHAN_MASK = common dso_local global i32 0, align 4
@stm32_ipcc_ops = common dso_local global i32 0, align 4
@IPCC_VER = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [45 x i8] c"ipcc rev:%ld.%ld enabled, %d chans, proc %d\0A\00", align 1
@VER_MAJREV_MASK = common dso_local global i32 0, align 4
@VER_MINREV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_ipcc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_ipcc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.stm32_ipcc*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i32], align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %18 = load i32, i32* @stm32_ipcc_rx_irq, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @stm32_ipcc_tx_irq, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %395

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.stm32_ipcc* @devm_kzalloc(%struct.device* %29, i32 88, i32 %30)
  store %struct.stm32_ipcc* %31, %struct.stm32_ipcc** %6, align 8
  %32 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %33 = icmp ne %struct.stm32_ipcc* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %395

37:                                               ; preds = %28
  %38 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %39 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %38, i32 0, i32 8
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %43 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %42, i32 0, i32 0
  %44 = call i64 @of_property_read_u32(%struct.device_node* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %395

51:                                               ; preds = %37
  %52 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %53 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @STM32_MAX_PROCS, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %60 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %395

65:                                               ; preds = %51
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load i32, i32* @IORESOURCE_MEM, align 4
  %68 = call %struct.resource* @platform_get_resource(%struct.platform_device* %66, i32 %67, i32 0)
  store %struct.resource* %68, %struct.resource** %7, align 8
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.resource*, %struct.resource** %7, align 8
  %71 = call i64 @devm_ioremap_resource(%struct.device* %69, %struct.resource* %70)
  %72 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %73 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %72, i32 0, i32 6
  store i64 %71, i64* %73, align 8
  %74 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %75 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @IS_ERR(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %65
  %80 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %81 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @PTR_ERR(i64 %82)
  store i32 %83, i32* %2, align 4
  br label %395

84:                                               ; preds = %65
  %85 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %86 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %89 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IPCC_PROC_OFFST, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %87, %93
  %95 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %96 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %95, i32 0, i32 7
  store i64 %94, i64* %96, align 8
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i64 @devm_clk_get(%struct.device* %97, i32* null)
  %99 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %100 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %99, i32 0, i32 4
  store i64 %98, i64* %100, align 8
  %101 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %102 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @IS_ERR(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %84
  %107 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %108 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @PTR_ERR(i64 %109)
  store i32 %110, i32* %2, align 4
  br label %395

111:                                              ; preds = %84
  %112 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %113 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @clk_prepare_enable(i64 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load %struct.device*, %struct.device** %4, align 8
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %2, align 4
  br label %395

122:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %201, %122
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @IPCC_IRQ_NUM, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %204

127:                                              ; preds = %123
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load i32, i32* %8, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [2 x i8*], [2 x i8*]* @stm32_ipcc_probe.irq_name, i64 0, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @platform_get_irq_byname(%struct.platform_device* %128, i8* %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %136 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  %141 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %142 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %127
  %150 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %151 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @EPROBE_DEFER, align 4
  %158 = sub nsw i32 0, %157
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %149
  %161 = load %struct.device*, %struct.device** %4, align 8
  %162 = load i32, i32* %8, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [2 x i8*], [2 x i8*]* @stm32_ipcc_probe.irq_name, i64 0, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %161, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %160, %149
  %168 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %169 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %9, align 4
  br label %389

175:                                              ; preds = %127
  %176 = load %struct.device*, %struct.device** %4, align 8
  %177 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %178 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %8, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @IRQF_ONESHOT, align 4
  %189 = load %struct.device*, %struct.device** %4, align 8
  %190 = call i32 @dev_name(%struct.device* %189)
  %191 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %192 = call i32 @devm_request_threaded_irq(%struct.device* %176, i32 %183, i32* null, i32 %187, i32 %188, i32 %190, %struct.stm32_ipcc* %191)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %175
  %196 = load %struct.device*, %struct.device** %4, align 8
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %9, align 4
  %199 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %196, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %197, i32 %198)
  br label %389

200:                                              ; preds = %175
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %123

204:                                              ; preds = %123
  %205 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %206 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %205, i32 0, i32 8
  %207 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %208 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @IPCC_XMR, align 8
  %211 = add nsw i64 %209, %210
  %212 = load i32, i32* @RX_BIT_MASK, align 4
  %213 = load i32, i32* @TX_BIT_MASK, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @stm32_ipcc_set_bits(i32* %206, i64 %211, i32 %214)
  %216 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %217 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %216, i32 0, i32 8
  %218 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %219 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @IPCC_XCR, align 8
  %222 = add nsw i64 %220, %221
  %223 = load i32, i32* @XCR_RXOIE, align 4
  %224 = load i32, i32* @XCR_TXOIE, align 4
  %225 = or i32 %223, %224
  %226 = call i32 @stm32_ipcc_set_bits(i32* %217, i64 %222, i32 %225)
  %227 = load %struct.device_node*, %struct.device_node** %5, align 8
  %228 = call i64 @of_property_read_bool(%struct.device_node* %227, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %268

230:                                              ; preds = %204
  %231 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %232 = call i8* @platform_get_irq_byname(%struct.platform_device* %231, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %233 = ptrtoint i8* %232 to i32
  %234 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %235 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 8
  %236 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %237 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %230
  %241 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %242 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @EPROBE_DEFER, align 4
  %245 = sub nsw i32 0, %244
  %246 = icmp ne i32 %243, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %240
  %248 = load %struct.device*, %struct.device** %4, align 8
  %249 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %248, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %250

250:                                              ; preds = %247, %240
  %251 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %252 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  store i32 %253, i32* %9, align 4
  br label %389

254:                                              ; preds = %230
  %255 = load %struct.device*, %struct.device** %4, align 8
  %256 = call i32 @device_set_wakeup_capable(%struct.device* %255, i32 1)
  %257 = load %struct.device*, %struct.device** %4, align 8
  %258 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %259 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @dev_pm_set_dedicated_wake_irq(%struct.device* %257, i32 %260)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %254
  %265 = load %struct.device*, %struct.device** %4, align 8
  %266 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %265, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %386

267:                                              ; preds = %254
  br label %268

268:                                              ; preds = %267, %204
  %269 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %270 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @IPCC_HWCFGR, align 8
  %273 = add nsw i64 %271, %272
  %274 = call i8* @readl_relaxed(i64 %273)
  %275 = ptrtoint i8* %274 to i32
  %276 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %277 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* @IPCFGR_CHAN_MASK, align 4
  %279 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %280 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, %278
  store i32 %282, i32* %280, align 4
  %283 = load %struct.device*, %struct.device** %4, align 8
  %284 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %285 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 4
  store %struct.device* %283, %struct.device** %286, align 8
  %287 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %288 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 0
  store i32 1, i32* %289, align 8
  %290 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %291 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 3
  store i32* @stm32_ipcc_ops, i32** %292, align 8
  %293 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %294 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %297 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %296, i32 0, i32 5
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 1
  store i32 %295, i32* %298, align 4
  %299 = load %struct.device*, %struct.device** %4, align 8
  %300 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %301 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @GFP_KERNEL, align 4
  %305 = call %struct.TYPE_4__* @devm_kcalloc(%struct.device* %299, i32 %303, i32 8, i32 %304)
  %306 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %307 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 2
  store %struct.TYPE_4__* %305, %struct.TYPE_4__** %308, align 8
  %309 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %310 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 2
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = icmp ne %struct.TYPE_4__* %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %268
  %315 = load i32, i32* @ENOMEM, align 4
  %316 = sub nsw i32 0, %315
  store i32 %316, i32* %9, align 4
  br label %377

317:                                              ; preds = %268
  store i32 0, i32* %8, align 4
  br label %318

318:                                              ; preds = %337, %317
  %319 = load i32, i32* %8, align 4
  %320 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %321 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = icmp ult i32 %319, %323
  br i1 %324, label %325, label %340

325:                                              ; preds = %318
  %326 = load i32, i32* %8, align 4
  %327 = zext i32 %326 to i64
  %328 = inttoptr i64 %327 to i8*
  %329 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %330 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 2
  %332 = load %struct.TYPE_4__*, %struct.TYPE_4__** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 0
  store i8* %328, i8** %336, align 8
  br label %337

337:                                              ; preds = %325
  %338 = load i32, i32* %8, align 4
  %339 = add i32 %338, 1
  store i32 %339, i32* %8, align 4
  br label %318

340:                                              ; preds = %318
  %341 = load %struct.device*, %struct.device** %4, align 8
  %342 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %343 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %342, i32 0, i32 5
  %344 = call i32 @devm_mbox_controller_register(%struct.device* %341, %struct.TYPE_3__* %343)
  store i32 %344, i32* %9, align 4
  %345 = load i32, i32* %9, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %340
  br label %377

348:                                              ; preds = %340
  %349 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %350 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %351 = call i32 @platform_set_drvdata(%struct.platform_device* %349, %struct.stm32_ipcc* %350)
  %352 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %353 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @IPCC_VER, align 8
  %356 = add nsw i64 %354, %355
  %357 = call i8* @readl_relaxed(i64 %356)
  store i8* %357, i8** %10, align 8
  %358 = load %struct.device*, %struct.device** %4, align 8
  %359 = load i32, i32* @VER_MAJREV_MASK, align 4
  %360 = load i8*, i8** %10, align 8
  %361 = call i32 @FIELD_GET(i32 %359, i8* %360)
  %362 = load i32, i32* @VER_MINREV_MASK, align 4
  %363 = load i8*, i8** %10, align 8
  %364 = call i32 @FIELD_GET(i32 %362, i8* %363)
  %365 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %366 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %365, i32 0, i32 5
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %370 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @dev_info(%struct.device* %358, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %361, i32 %364, i32 %368, i32 %371)
  %373 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %374 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %373, i32 0, i32 4
  %375 = load i64, i64* %374, align 8
  %376 = call i32 @clk_disable_unprepare(i64 %375)
  store i32 0, i32* %2, align 4
  br label %395

377:                                              ; preds = %347, %314
  %378 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %379 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %377
  %383 = load %struct.device*, %struct.device** %4, align 8
  %384 = call i32 @dev_pm_clear_wake_irq(%struct.device* %383)
  br label %385

385:                                              ; preds = %382, %377
  br label %386

386:                                              ; preds = %385, %264
  %387 = load %struct.device*, %struct.device** %4, align 8
  %388 = call i32 @device_init_wakeup(%struct.device* %387, i32 0)
  br label %389

389:                                              ; preds = %386, %250, %195, %167
  %390 = load %struct.stm32_ipcc*, %struct.stm32_ipcc** %6, align 8
  %391 = getelementptr inbounds %struct.stm32_ipcc, %struct.stm32_ipcc* %390, i32 0, i32 4
  %392 = load i64, i64* %391, align 8
  %393 = call i32 @clk_disable_unprepare(i64 %392)
  %394 = load i32, i32* %9, align 4
  store i32 %394, i32* %2, align 4
  br label %395

395:                                              ; preds = %389, %348, %118, %106, %79, %57, %46, %34, %23
  %396 = load i32, i32* %2, align 4
  ret i32 %396
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.stm32_ipcc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.stm32_ipcc*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @stm32_ipcc_set_bits(i32*, i64, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @device_set_wakeup_capable(%struct.device*, i32) #1

declare dso_local i32 @dev_pm_set_dedicated_wake_irq(%struct.device*, i32) #1

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local %struct.TYPE_4__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.TYPE_3__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_ipcc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @dev_pm_clear_wake_irq(%struct.device*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
