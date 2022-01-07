; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_img-hash.c_img_hash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.img_hash_dev = type { i32, i32, i8*, i8*, i32, i32, i32, i8*, i8*, i32, %struct.device*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@img_hash_done_task = common dso_local global i32 0, align 4
@img_hash_dma_task = common dso_local global i32 0, align 4
@IMG_HASH_QUEUE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't ioremap, returned %d\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't ioremap write port\0A\00", align 1
@img_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unable to request irq\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"using IRQ channel %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"clock initialization failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"using %s for DMA transfers\0A\00", align 1
@img_hash = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [61 x i8] c"Img MD5/SHA1/SHA224/SHA256 Hardware accelerator initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @img_hash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_hash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.img_hash_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.img_hash_dev* @devm_kzalloc(%struct.device* %11, i32 80, i32 %12)
  store %struct.img_hash_dev* %13, %struct.img_hash_dev** %4, align 8
  %14 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %15 = icmp eq %struct.img_hash_dev* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %220

19:                                               ; preds = %1
  %20 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %21 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %20, i32 0, i32 11
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %25 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %24, i32 0, i32 10
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.img_hash_dev* %27)
  %29 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %30 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %29, i32 0, i32 5
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %33 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %32, i32 0, i32 1
  %34 = load i32, i32* @img_hash_done_task, align 4
  %35 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %36 = ptrtoint %struct.img_hash_dev* %35 to i64
  %37 = call i32 @tasklet_init(i32* %33, i32 %34, i64 %36)
  %38 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %39 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %38, i32 0, i32 0
  %40 = load i32, i32* @img_hash_dma_task, align 4
  %41 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %42 = ptrtoint %struct.img_hash_dev* %41 to i64
  %43 = call i32 @tasklet_init(i32* %39, i32 %40, i64 %42)
  %44 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %45 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %44, i32 0, i32 9
  %46 = load i32, i32* @IMG_HASH_QUEUE_LENGTH, align 4
  %47 = call i32 @crypto_init_queue(i32* %45, i32 %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %48, i32 0)
  %50 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %51 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %50, i32 0, i32 8
  store i8* %49, i8** %51, align 8
  %52 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %53 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %52, i32 0, i32 8
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %19
  %58 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %59 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %58, i32 0, i32 8
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %212

65:                                               ; preds = %19
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = load i32, i32* @IORESOURCE_MEM, align 4
  %68 = call %struct.resource* @platform_get_resource(%struct.platform_device* %66, i32 %67, i32 1)
  store %struct.resource* %68, %struct.resource** %6, align 8
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = call i8* @devm_ioremap_resource(%struct.device* %69, %struct.resource* %70)
  %72 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %73 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  %74 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %75 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %74, i32 0, i32 7
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %65
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %83 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %82, i32 0, i32 7
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @PTR_ERR(i8* %84)
  store i32 %85, i32* %8, align 4
  br label %212

86:                                               ; preds = %65
  %87 = load %struct.resource*, %struct.resource** %6, align 8
  %88 = getelementptr inbounds %struct.resource, %struct.resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %91 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = call i32 @platform_get_irq(%struct.platform_device* %92, i32 0)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %8, align 4
  br label %212

98:                                               ; preds = %86
  %99 = load %struct.device*, %struct.device** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @img_irq_handler, align 4
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @dev_name(%struct.device* %102)
  %104 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %105 = call i32 @devm_request_irq(%struct.device* %99, i32 %100, i32 %101, i32 0, i32 %103, %struct.img_hash_dev* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %98
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %212

111:                                              ; preds = %98
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @dev_dbg(%struct.device* %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i8* @devm_clk_get(%struct.device* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %118 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %119 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  %120 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %121 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @IS_ERR(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %111
  %126 = load %struct.device*, %struct.device** %5, align 8
  %127 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %128 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %129 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @PTR_ERR(i8* %130)
  store i32 %131, i32* %8, align 4
  br label %212

132:                                              ; preds = %111
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i8* @devm_clk_get(%struct.device* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %137 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %139 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @IS_ERR(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %132
  %144 = load %struct.device*, %struct.device** %5, align 8
  %145 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %147 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %146, i32 0, i32 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @PTR_ERR(i8* %148)
  store i32 %149, i32* %8, align 4
  br label %212

150:                                              ; preds = %132
  %151 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %152 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @clk_prepare_enable(i8* %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %212

158:                                              ; preds = %150
  %159 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %160 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %159, i32 0, i32 3
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @clk_prepare_enable(i8* %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %207

166:                                              ; preds = %158
  %167 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %168 = call i32 @img_hash_dma_init(%struct.img_hash_dev* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  br label %202

172:                                              ; preds = %166
  %173 = load %struct.device*, %struct.device** %5, align 8
  %174 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %175 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @dma_chan_name(i32 %176)
  %178 = call i32 @dev_dbg(%struct.device* %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %177)
  %179 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_hash, i32 0, i32 0))
  %180 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %181 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %180, i32 0, i32 5
  %182 = call i32 @list_add_tail(i32* %181, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_hash, i32 0, i32 1))
  %183 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_hash, i32 0, i32 0))
  %184 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %185 = call i32 @img_register_algs(%struct.img_hash_dev* %184)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %172
  br label %192

189:                                              ; preds = %172
  %190 = load %struct.device*, %struct.device** %5, align 8
  %191 = call i32 @dev_info(%struct.device* %190, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %220

192:                                              ; preds = %188
  %193 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_hash, i32 0, i32 0))
  %194 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %195 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %194, i32 0, i32 5
  %196 = call i32 @list_del(i32* %195)
  %197 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @img_hash, i32 0, i32 0))
  %198 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %199 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @dma_release_channel(i32 %200)
  br label %202

202:                                              ; preds = %192, %171
  %203 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %204 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %203, i32 0, i32 3
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @clk_disable_unprepare(i8* %205)
  br label %207

207:                                              ; preds = %202, %165
  %208 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %209 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %208, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @clk_disable_unprepare(i8* %210)
  br label %212

212:                                              ; preds = %207, %157, %143, %125, %108, %96, %79, %57
  %213 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %214 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %213, i32 0, i32 1
  %215 = call i32 @tasklet_kill(i32* %214)
  %216 = load %struct.img_hash_dev*, %struct.img_hash_dev** %4, align 8
  %217 = getelementptr inbounds %struct.img_hash_dev, %struct.img_hash_dev* %216, i32 0, i32 0
  %218 = call i32 @tasklet_kill(i32* %217)
  %219 = load i32, i32* %8, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %212, %189, %16
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local %struct.img_hash_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.img_hash_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @crypto_init_queue(i32*, i32) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.img_hash_dev*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @img_hash_dma_init(%struct.img_hash_dev*) #1

declare dso_local i32 @dma_chan_name(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @img_register_algs(%struct.img_hash_dev*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dma_release_channel(i32) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
