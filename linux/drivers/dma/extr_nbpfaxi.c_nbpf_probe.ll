; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_nbpfaxi.c_nbpf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_nbpfaxi.c_nbpf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.nbpf_device = type { i32, i32, %struct.nbpf_channel*, %struct.nbpf_config*, i32, i32, i32, %struct.dma_device }
%struct.nbpf_channel = type { i32 }
%struct.nbpf_config = type { i32 }
%struct.dma_device = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.resource = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@chan = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"max-burst-mem-read\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"max-burst-mem-write\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nbpf_err_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"dma error\00", align 1
@DMA_MEMCPY = common dso_local global i32 0, align 4
@DMA_SLAVE = common dso_local global i32 0, align 4
@DMA_PRIVATE = common dso_local global i32 0, align 4
@nbpf_alloc_chan_resources = common dso_local global i32 0, align 4
@nbpf_free_chan_resources = common dso_local global i32 0, align 4
@nbpf_prep_memcpy = common dso_local global i32 0, align 4
@nbpf_tx_status = common dso_local global i32 0, align 4
@nbpf_issue_pending = common dso_local global i32 0, align 4
@nbpf_prep_slave_sg = common dso_local global i32 0, align 4
@nbpf_config = common dso_local global i32 0, align 4
@nbpf_pause = common dso_local global i32 0, align 4
@nbpf_terminate_all = common dso_local global i32 0, align 4
@NBPF_DMA_BUSWIDTHS = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@nbpf_of_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nbpf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbpf_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.nbpf_device*, align 8
  %7 = alloca %struct.dma_device*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.nbpf_config*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [9 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca %struct.nbpf_channel*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %4, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 0
  %23 = load %struct.device_node*, %struct.device_node** %22, align 8
  store %struct.device_node* %23, %struct.device_node** %5, align 8
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 4, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUILD_BUG_ON(i32 %27)
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = icmp ne %struct.device_node* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %390

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call %struct.nbpf_config* @of_device_get_match_data(%struct.device* %35)
  store %struct.nbpf_config* %36, %struct.nbpf_config** %10, align 8
  %37 = load %struct.nbpf_config*, %struct.nbpf_config** %10, align 8
  %38 = getelementptr inbounds %struct.nbpf_config, %struct.nbpf_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %42 = load i32, i32* @chan, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @struct_size(%struct.nbpf_device* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.nbpf_device* @devm_kzalloc(%struct.device* %40, i32 %44, i32 %45)
  store %struct.nbpf_device* %46, %struct.nbpf_device** %6, align 8
  %47 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %48 = icmp ne %struct.nbpf_device* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %34
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %390

52:                                               ; preds = %34
  %53 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %54 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %53, i32 0, i32 7
  store %struct.dma_device* %54, %struct.dma_device** %7, align 8
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %57 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %56, i32 0, i32 14
  store %struct.device* %55, %struct.device** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 0)
  store %struct.resource* %60, %struct.resource** %8, align 8
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load %struct.resource*, %struct.resource** %8, align 8
  %63 = call i32 @devm_ioremap_resource(%struct.device* %61, %struct.resource* %62)
  %64 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %65 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %67 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %52
  %72 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %73 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %390

76:                                               ; preds = %52
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @devm_clk_get(%struct.device* %77, i32* null)
  %79 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %80 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %82 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %76
  %87 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %88 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %390

91:                                               ; preds = %76
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %94 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %93, i32 0, i32 5
  %95 = call i32 @of_property_read_u32(%struct.device_node* %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %94)
  %96 = load %struct.device_node*, %struct.device_node** %5, align 8
  %97 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %98 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %97, i32 0, i32 4
  %99 = call i32 @of_property_read_u32(%struct.device_node* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %98)
  %100 = load %struct.nbpf_config*, %struct.nbpf_config** %10, align 8
  %101 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %102 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %101, i32 0, i32 3
  store %struct.nbpf_config* %100, %struct.nbpf_config** %102, align 8
  store i32 0, i32* %15, align 4
  br label %103

103:                                              ; preds = %137, %91
  %104 = load i32, i32* %17, align 4
  %105 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 0
  %106 = call i32 @ARRAY_SIZE(i32* %105)
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %108, label %140

108:                                              ; preds = %103
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load i32, i32* @IORESOURCE_IRQ, align 4
  %111 = load i32, i32* %15, align 4
  %112 = call %struct.resource* @platform_get_resource(%struct.platform_device* %109, i32 %110, i32 %111)
  store %struct.resource* %112, %struct.resource** %9, align 8
  %113 = load %struct.resource*, %struct.resource** %9, align 8
  %114 = icmp ne %struct.resource* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %140

116:                                              ; preds = %108
  %117 = load %struct.resource*, %struct.resource** %9, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %131, %116
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.resource*, %struct.resource** %9, align 8
  %123 = getelementptr inbounds %struct.resource, %struct.resource* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sle i32 %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %17, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 %129
  store i32 %127, i32* %130, align 4
  br label %131

131:                                              ; preds = %126
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %17, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %17, align 4
  br label %120

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %103

140:                                              ; preds = %115, %103
  %141 = load i32, i32* %17, align 4
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 2
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  %150 = icmp ne i32 %147, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @ENXIO, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %390

154:                                              ; preds = %146, %143, %140
  %155 = load i32, i32* %17, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %178

157:                                              ; preds = %154
  %158 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 0
  %159 = load i32, i32* %158, align 16
  store i32 %159, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %174, %157
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 0
  %166 = load i32, i32* %165, align 16
  %167 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %168 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %167, i32 0, i32 2
  %169 = load %struct.nbpf_channel*, %struct.nbpf_channel** %168, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %169, i64 %171
  %173 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %172, i32 0, i32 0
  store i32 %166, i32* %173, align 4
  br label %174

174:                                              ; preds = %164
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %160

177:                                              ; preds = %160
  br label %263

178:                                              ; preds = %154
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = call i32 @platform_get_irq_byname(%struct.platform_device* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* %14, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, i32* %14, align 4
  store i32 %184, i32* %2, align 4
  br label %390

185:                                              ; preds = %178
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %233

190:                                              ; preds = %185
  store i32 0, i32* %15, align 4
  %191 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %192 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %191, i32 0, i32 2
  %193 = load %struct.nbpf_channel*, %struct.nbpf_channel** %192, align 8
  store %struct.nbpf_channel* %193, %struct.nbpf_channel** %18, align 8
  br label %194

194:                                              ; preds = %215, %190
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %11, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %220

198:                                              ; preds = %194
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %14, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %205, %198
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.nbpf_channel*, %struct.nbpf_channel** %18, align 8
  %214 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %208
  %216 = load i32, i32* %15, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %15, align 4
  %218 = load %struct.nbpf_channel*, %struct.nbpf_channel** %18, align 8
  %219 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %218, i32 1
  store %struct.nbpf_channel* %219, %struct.nbpf_channel** %18, align 8
  br label %194

220:                                              ; preds = %194
  %221 = load %struct.nbpf_channel*, %struct.nbpf_channel** %18, align 8
  %222 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %223 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %222, i32 0, i32 2
  %224 = load %struct.nbpf_channel*, %struct.nbpf_channel** %223, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %224, i64 %226
  %228 = icmp ne %struct.nbpf_channel* %221, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %220
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %2, align 4
  br label %390

232:                                              ; preds = %220
  br label %262

233:                                              ; preds = %185
  %234 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 0
  %235 = load i32, i32* %234, align 16
  %236 = load i32, i32* %14, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 1
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %13, align 4
  br label %244

241:                                              ; preds = %233
  %242 = getelementptr inbounds [9 x i32], [9 x i32]* %16, i64 0, i64 0
  %243 = load i32, i32* %242, align 16
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %241, %238
  store i32 0, i32* %15, align 4
  br label %245

245:                                              ; preds = %258, %244
  %246 = load i32, i32* %15, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp sle i32 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %245
  %250 = load i32, i32* %13, align 4
  %251 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %252 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %251, i32 0, i32 2
  %253 = load %struct.nbpf_channel*, %struct.nbpf_channel** %252, align 8
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %253, i64 %255
  %257 = getelementptr inbounds %struct.nbpf_channel, %struct.nbpf_channel* %256, i32 0, i32 0
  store i32 %250, i32* %257, align 4
  br label %258

258:                                              ; preds = %249
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %15, align 4
  br label %245

261:                                              ; preds = %245
  br label %262

262:                                              ; preds = %261, %232
  br label %263

263:                                              ; preds = %262, %177
  %264 = load %struct.device*, %struct.device** %4, align 8
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* @nbpf_err_irq, align 4
  %267 = load i32, i32* @IRQF_SHARED, align 4
  %268 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %269 = call i32 @devm_request_irq(%struct.device* %264, i32 %265, i32 %266, i32 %267, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.nbpf_device* %268)
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %263
  %273 = load i32, i32* %12, align 4
  store i32 %273, i32* %2, align 4
  br label %390

274:                                              ; preds = %263
  %275 = load i32, i32* %14, align 4
  %276 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %277 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 8
  %278 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %279 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %278, i32 0, i32 13
  %280 = call i32 @INIT_LIST_HEAD(i32* %279)
  store i32 0, i32* %15, align 4
  br label %281

281:                                              ; preds = %294, %274
  %282 = load i32, i32* %15, align 4
  %283 = load i32, i32* %11, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %297

285:                                              ; preds = %281
  %286 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %287 = load i32, i32* %15, align 4
  %288 = call i32 @nbpf_chan_probe(%struct.nbpf_device* %286, i32 %287)
  store i32 %288, i32* %12, align 4
  %289 = load i32, i32* %12, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  %292 = load i32, i32* %12, align 4
  store i32 %292, i32* %2, align 4
  br label %390

293:                                              ; preds = %285
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %15, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %15, align 4
  br label %281

297:                                              ; preds = %281
  %298 = load i32, i32* @DMA_MEMCPY, align 4
  %299 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %300 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %299, i32 0, i32 12
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @dma_cap_set(i32 %298, i32 %301)
  %303 = load i32, i32* @DMA_SLAVE, align 4
  %304 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %305 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %304, i32 0, i32 12
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @dma_cap_set(i32 %303, i32 %306)
  %308 = load i32, i32* @DMA_PRIVATE, align 4
  %309 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %310 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %309, i32 0, i32 12
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @dma_cap_set(i32 %308, i32 %311)
  %313 = load i32, i32* @nbpf_alloc_chan_resources, align 4
  %314 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %315 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %314, i32 0, i32 11
  store i32 %313, i32* %315, align 8
  %316 = load i32, i32* @nbpf_free_chan_resources, align 4
  %317 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %318 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %317, i32 0, i32 10
  store i32 %316, i32* %318, align 4
  %319 = load i32, i32* @nbpf_prep_memcpy, align 4
  %320 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %321 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %320, i32 0, i32 9
  store i32 %319, i32* %321, align 8
  %322 = load i32, i32* @nbpf_tx_status, align 4
  %323 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %324 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %323, i32 0, i32 8
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* @nbpf_issue_pending, align 4
  %326 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %327 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 8
  %328 = load i32, i32* @nbpf_prep_slave_sg, align 4
  %329 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %330 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %329, i32 0, i32 6
  store i32 %328, i32* %330, align 4
  %331 = load i32, i32* @nbpf_config, align 4
  %332 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %333 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %332, i32 0, i32 5
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* @nbpf_pause, align 4
  %335 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %336 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %335, i32 0, i32 4
  store i32 %334, i32* %336, align 4
  %337 = load i32, i32* @nbpf_terminate_all, align 4
  %338 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %339 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %338, i32 0, i32 3
  store i32 %337, i32* %339, align 8
  %340 = load i8*, i8** @NBPF_DMA_BUSWIDTHS, align 8
  %341 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %342 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %341, i32 0, i32 2
  store i8* %340, i8** %342, align 8
  %343 = load i8*, i8** @NBPF_DMA_BUSWIDTHS, align 8
  %344 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %345 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %344, i32 0, i32 1
  store i8* %343, i8** %345, align 8
  %346 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %347 = call i32 @BIT(i32 %346)
  %348 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %349 = call i32 @BIT(i32 %348)
  %350 = or i32 %347, %349
  %351 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %352 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %351, i32 0, i32 0
  store i32 %350, i32* %352, align 8
  %353 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %354 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %355 = call i32 @platform_set_drvdata(%struct.platform_device* %353, %struct.nbpf_device* %354)
  %356 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %357 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @clk_prepare_enable(i32 %358)
  store i32 %359, i32* %12, align 4
  %360 = load i32, i32* %12, align 4
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %297
  %363 = load i32, i32* %12, align 4
  store i32 %363, i32* %2, align 4
  br label %390

364:                                              ; preds = %297
  %365 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %366 = call i32 @nbpf_configure(%struct.nbpf_device* %365)
  %367 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %368 = call i32 @dma_async_device_register(%struct.dma_device* %367)
  store i32 %368, i32* %12, align 4
  %369 = load i32, i32* %12, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %364
  br label %384

372:                                              ; preds = %364
  %373 = load %struct.device_node*, %struct.device_node** %5, align 8
  %374 = load i32, i32* @nbpf_of_xlate, align 4
  %375 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %376 = call i32 @of_dma_controller_register(%struct.device_node* %373, i32 %374, %struct.nbpf_device* %375)
  store i32 %376, i32* %12, align 4
  %377 = load i32, i32* %12, align 4
  %378 = icmp slt i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %372
  br label %381

380:                                              ; preds = %372
  store i32 0, i32* %2, align 4
  br label %390

381:                                              ; preds = %379
  %382 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %383 = call i32 @dma_async_device_unregister(%struct.dma_device* %382)
  br label %384

384:                                              ; preds = %381, %371
  %385 = load %struct.nbpf_device*, %struct.nbpf_device** %6, align 8
  %386 = getelementptr inbounds %struct.nbpf_device, %struct.nbpf_device* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @clk_disable_unprepare(i32 %387)
  %389 = load i32, i32* %12, align 4
  store i32 %389, i32* %2, align 4
  br label %390

390:                                              ; preds = %384, %380, %362, %291, %272, %229, %183, %151, %86, %71, %49, %31
  %391 = load i32, i32* %2, align 4
  ret i32 %391
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.nbpf_config* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.nbpf_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.nbpf_device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.nbpf_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nbpf_chan_probe(%struct.nbpf_device*, i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nbpf_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @nbpf_configure(%struct.nbpf_device*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @of_dma_controller_register(%struct.device_node*, i32, %struct.nbpf_device*) #1

declare dso_local i32 @dma_async_device_unregister(%struct.dma_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
