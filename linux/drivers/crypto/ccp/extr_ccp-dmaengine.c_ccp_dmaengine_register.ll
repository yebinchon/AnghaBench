; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dmaengine.c_ccp_dmaengine_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-dmaengine.c_ccp_dmaengine_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_device = type { i32, i8*, i8*, %struct.ccp_dma_chan*, i32, i32, %struct.dma_device }
%struct.ccp_dma_chan = type { i32, i32, i32, i32, i32, i32, %struct.ccp_device*, %struct.dma_chan }
%struct.dma_chan = type { i32, %struct.dma_device* }
%struct.dma_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }

@dmaengine = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s-dmaengine-cmd-cache\00", align 1
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s-dmaengine-desc-cache\00", align 1
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@DMA_RESIDUE_GRANULARITY_DESCRIPTOR = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i64 0, align 8
@DMA_INTERRUPT = common dso_local global i64 0, align 8
@DMA_PRIVATE = common dso_local global i64 0, align 8
@ccp_do_cleanup = common dso_local global i32 0, align 4
@ccp_free_chan_resources = common dso_local global i32 0, align 4
@ccp_prep_dma_memcpy = common dso_local global i32 0, align 4
@ccp_prep_dma_interrupt = common dso_local global i32 0, align 4
@ccp_issue_pending = common dso_local global i32 0, align 4
@ccp_tx_status = common dso_local global i32 0, align 4
@ccp_pause = common dso_local global i32 0, align 4
@ccp_resume = common dso_local global i32 0, align 4
@ccp_terminate_all = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccp_dmaengine_register(%struct.ccp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccp_device*, align 8
  %4 = alloca %struct.ccp_dma_chan*, align 8
  %5 = alloca %struct.dma_device*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ccp_device* %0, %struct.ccp_device** %3, align 8
  %11 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %12 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %11, i32 0, i32 6
  store %struct.dma_device* %12, %struct.dma_device** %5, align 8
  %13 = load i32, i32* @dmaengine, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %232

16:                                               ; preds = %1
  %17 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %18 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %21 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ccp_dma_chan* @devm_kcalloc(i32 %19, i32 %22, i32 48, i32 %23)
  %25 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %26 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %25, i32 0, i32 3
  store %struct.ccp_dma_chan* %24, %struct.ccp_dma_chan** %26, align 8
  %27 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %28 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %27, i32 0, i32 3
  %29 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %28, align 8
  %30 = icmp ne %struct.ccp_dma_chan* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %16
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %232

34:                                               ; preds = %16
  %35 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %36 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %40 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @devm_kasprintf(i32 %37, i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %34
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %232

48:                                               ; preds = %34
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %51 = call i8* @kmem_cache_create(i8* %49, i32 4, i32 8, i32 %50, i32* null)
  %52 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %53 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %55 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %232

61:                                               ; preds = %48
  %62 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %63 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %67 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @devm_kasprintf(i32 %64, i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i8* %69, i8** %8, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %10, align 4
  br label %226

75:                                               ; preds = %61
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %78 = call i8* @kmem_cache_create(i8* %76, i32 4, i32 8, i32 %77, i32* null)
  %79 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %80 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %82 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %226

88:                                               ; preds = %75
  %89 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %90 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %93 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %92, i32 0, i32 14
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %95 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dma_get_mask(i32 %96)
  %98 = call i8* @CCP_DMA_WIDTH(i32 %97)
  %99 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %100 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %99, i32 0, i32 13
  store i8* %98, i8** %100, align 8
  %101 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %102 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @dma_get_mask(i32 %103)
  %105 = call i8* @CCP_DMA_WIDTH(i32 %104)
  %106 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %107 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %106, i32 0, i32 12
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %109 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %110 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %109, i32 0, i32 11
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @DMA_RESIDUE_GRANULARITY_DESCRIPTOR, align 4
  %112 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %113 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* @DMA_MEMCPY, align 8
  %115 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %116 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dma_cap_set(i64 %114, i32 %117)
  %119 = load i64, i64* @DMA_INTERRUPT, align 8
  %120 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %121 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dma_cap_set(i64 %119, i32 %122)
  %124 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %125 = call i64 @ccp_get_dma_chan_attr(%struct.ccp_device* %124)
  %126 = load i64, i64* @DMA_PRIVATE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %88
  %129 = load i64, i64* @DMA_PRIVATE, align 8
  %130 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %131 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dma_cap_set(i64 %129, i32 %132)
  br label %134

134:                                              ; preds = %128, %88
  %135 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %136 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %135, i32 0, i32 8
  %137 = call i32 @INIT_LIST_HEAD(i32* %136)
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %187, %134
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %141 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ult i32 %139, %142
  br i1 %143, label %144, label %190

144:                                              ; preds = %138
  %145 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %146 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %145, i32 0, i32 3
  %147 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %147, i64 %149
  store %struct.ccp_dma_chan* %150, %struct.ccp_dma_chan** %4, align 8
  %151 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %152 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %151, i32 0, i32 7
  store %struct.dma_chan* %152, %struct.dma_chan** %6, align 8
  %153 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %154 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %155 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %154, i32 0, i32 6
  store %struct.ccp_device* %153, %struct.ccp_device** %155, align 8
  %156 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %157 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %156, i32 0, i32 5
  %158 = call i32 @spin_lock_init(i32* %157)
  %159 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %160 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %159, i32 0, i32 4
  %161 = call i32 @INIT_LIST_HEAD(i32* %160)
  %162 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %163 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %162, i32 0, i32 3
  %164 = call i32 @INIT_LIST_HEAD(i32* %163)
  %165 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %166 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %165, i32 0, i32 2
  %167 = call i32 @INIT_LIST_HEAD(i32* %166)
  %168 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %169 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %168, i32 0, i32 1
  %170 = call i32 @INIT_LIST_HEAD(i32* %169)
  %171 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %172 = getelementptr inbounds %struct.ccp_dma_chan, %struct.ccp_dma_chan* %171, i32 0, i32 0
  %173 = load i32, i32* @ccp_do_cleanup, align 4
  %174 = load %struct.ccp_dma_chan*, %struct.ccp_dma_chan** %4, align 8
  %175 = ptrtoint %struct.ccp_dma_chan* %174 to i64
  %176 = call i32 @tasklet_init(i32* %172, i32 %173, i64 %175)
  %177 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %178 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %179 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %178, i32 0, i32 1
  store %struct.dma_device* %177, %struct.dma_device** %179, align 8
  %180 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %181 = call i32 @dma_cookie_init(%struct.dma_chan* %180)
  %182 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %183 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %182, i32 0, i32 0
  %184 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %185 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %184, i32 0, i32 8
  %186 = call i32 @list_add_tail(i32* %183, i32* %185)
  br label %187

187:                                              ; preds = %144
  %188 = load i32, i32* %9, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %138

190:                                              ; preds = %138
  %191 = load i32, i32* @ccp_free_chan_resources, align 4
  %192 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %193 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %192, i32 0, i32 7
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* @ccp_prep_dma_memcpy, align 4
  %195 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %196 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* @ccp_prep_dma_interrupt, align 4
  %198 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %199 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* @ccp_issue_pending, align 4
  %201 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %202 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @ccp_tx_status, align 4
  %204 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %205 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* @ccp_pause, align 4
  %207 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %208 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* @ccp_resume, align 4
  %210 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %211 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @ccp_terminate_all, align 4
  %213 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %214 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.dma_device*, %struct.dma_device** %5, align 8
  %216 = call i32 @dma_async_device_register(%struct.dma_device* %215)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %190
  br label %221

220:                                              ; preds = %190
  store i32 0, i32* %2, align 4
  br label %232

221:                                              ; preds = %219
  %222 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %223 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @kmem_cache_destroy(i8* %224)
  br label %226

226:                                              ; preds = %221, %85, %72
  %227 = load %struct.ccp_device*, %struct.ccp_device** %3, align 8
  %228 = getelementptr inbounds %struct.ccp_device, %struct.ccp_device* %227, i32 0, i32 1
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @kmem_cache_destroy(i8* %229)
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %226, %220, %58, %45, %31, %15
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.ccp_dma_chan* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i8* @devm_kasprintf(i32, i32, i8*, i32) #1

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i8* @CCP_DMA_WIDTH(i32) #1

declare dso_local i32 @dma_get_mask(i32) #1

declare dso_local i32 @dma_cap_set(i64, i32) #1

declare dso_local i64 @ccp_get_dma_chan_attr(%struct.ccp_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_async_device_register(%struct.dma_device*) #1

declare dso_local i32 @kmem_cache_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
