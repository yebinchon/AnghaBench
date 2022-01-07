; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i64, %struct.rhashtable*, i32, i64, i8*, %struct.sdma_engine*, i8*, i64, %struct.TYPE_3__*, i32, i32, i32, i32, %struct.hfi1_pportdata* }
%struct.rhashtable = type { i32 }
%struct.sdma_engine = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i8*, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.hfi1_pportdata*, %struct.hfi1_devdata* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hfi1_pportdata = type { i32 }

@sdma_idle_cnt = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@SDMA = common dso_local global i32 0, align 4
@SDMA_AHG = common dso_local global i32 0, align 4
@mod_num_sdma = common dso_local global i64 0, align 8
@num_vls = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"SDMA mod_num_sdma: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SDMA chip_sdma_engines: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SDMA chip_sdma_mem_size: %u\0A\00", align 1
@SDMA_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"SDMA engines %zu descq_cnt %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@SDMA_DESC1_HEAD_TO_HOST_FLAG = common dso_local global i32 0, align 4
@SDMA_DESC1_INT_REQ_FLAG = common dso_local global i32 0, align 4
@sdma_desct_intr = common dso_local global i64 0, align 8
@SDMA_DESC_INTR = common dso_local global i64 0, align 8
@TXE_NUM_SDMA_ENGINES = common dso_local global i32 0, align 4
@sdma_state_s00_hw_down = common dso_local global i32 0, align 4
@TAIL = common dso_local global i32 0, align 4
@sdma_hw_clean_up_task = common dso_local global i32 0, align 4
@sdma_sw_clean_up_task = common dso_local global i32 0, align 4
@sdma_err_halt_wait = common dso_local global i32 0, align 4
@sdma_field_flush = common dso_local global i32 0, align 4
@sdma_err_progress_check = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to allocate SendDMA head memory\0A\00", align 1
@SDMA_PAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to allocate SendDMA pad memory\0A\00", align 1
@HFI1_HAS_SEND_DMA = common dso_local global i32 0, align 4
@HFI1_HAS_SDMA_TIMEOUT = common dso_local global i32 0, align 4
@sdma_rht_params = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"SDMA num_sdma: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdma_init(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdma_engine*, align 8
  %8 = alloca %struct.rhashtable*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.hfi1_pportdata*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %18 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %17, i32 0, i32 14
  %19 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %19, i64 %21
  store %struct.hfi1_pportdata* %22, %struct.hfi1_pportdata** %11, align 8
  %23 = load i64, i64* @sdma_idle_cnt, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %25 = call i64 @chip_sdma_engines(%struct.hfi1_devdata* %24)
  store i64 %25, i64* %14, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* @SDMA, align 4
  %29 = call i32 @HFI1_CAP_IS_KSET(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @SDMA_AHG, align 4
  %33 = call i32 @HFI1_CAP_CLEAR(i32 %32)
  store i32 0, i32* %3, align 4
  br label %439

34:                                               ; preds = %2
  %35 = load i64, i64* @mod_num_sdma, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i64, i64* @mod_num_sdma, align 8
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %40 = call i64 @chip_sdma_engines(%struct.hfi1_devdata* %39)
  %41 = icmp ule i64 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i64, i64* @mod_num_sdma, align 8
  %44 = load i64, i64* @num_vls, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @mod_num_sdma, align 8
  store i64 %47, i64* %14, align 8
  br label %48

48:                                               ; preds = %46, %42, %37, %34
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %50 = load i64, i64* @mod_num_sdma, align 8
  %51 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %54 = call i64 @chip_sdma_engines(%struct.hfi1_devdata* %53)
  %55 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %58 = call i64 @chip_sdma_mem_size(%struct.hfi1_devdata* %57)
  %59 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  %60 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %61 = call i64 @chip_sdma_mem_size(%struct.hfi1_devdata* %60)
  %62 = load i64, i64* %14, align 8
  %63 = load i64, i64* @SDMA_BLOCK_SIZE, align 8
  %64 = mul i64 %62, %63
  %65 = udiv i64 %61, %64
  store i64 %65, i64* %12, align 8
  %66 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %67 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %66, i32 0, i32 13
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %70 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %69, i32 0, i32 12
  %71 = call i32 @atomic_set(i32* %70, i32 0)
  %72 = call i32 (...) @sdma_get_descq_cnt()
  store i32 %72, i32* %9, align 4
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %74, i32 %75)
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %80 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.sdma_engine* @kcalloc_node(i64 %77, i32 176, i32 %78, i32 %81)
  %83 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %84 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %83, i32 0, i32 6
  store %struct.sdma_engine* %82, %struct.sdma_engine** %84, align 8
  %85 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %86 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %85, i32 0, i32 6
  %87 = load %struct.sdma_engine*, %struct.sdma_engine** %86, align 8
  %88 = icmp ne %struct.sdma_engine* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %48
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %3, align 4
  br label %439

91:                                               ; preds = %48
  %92 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i64 @ns_to_cclock(%struct.hfi1_devdata* %92, i64 %93)
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %13, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @SDMA_DESC1_HEAD_TO_HOST_FLAG, align 4
  %99 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %100 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %99, i32 0, i32 11
  store i32 %98, i32* %100, align 4
  br label %105

101:                                              ; preds = %91
  %102 = load i32, i32* @SDMA_DESC1_INT_REQ_FLAG, align 4
  %103 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %104 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %103, i32 0, i32 11
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i64, i64* @sdma_desct_intr, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @SDMA_DESC_INTR, align 8
  store i64 %109, i64* @sdma_desct_intr, align 8
  br label %110

110:                                              ; preds = %108, %105
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %286, %110
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %14, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %289

116:                                              ; preds = %111
  %117 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %118 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %117, i32 0, i32 6
  %119 = load %struct.sdma_engine*, %struct.sdma_engine** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %119, i64 %121
  store %struct.sdma_engine* %122, %struct.sdma_engine** %7, align 8
  %123 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %124 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %125 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %124, i32 0, i32 31
  store %struct.hfi1_devdata* %123, %struct.hfi1_devdata** %125, align 8
  %126 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %127 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %128 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %127, i32 0, i32 30
  store %struct.hfi1_pportdata* %126, %struct.hfi1_pportdata** %128, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %131 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %134 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %136 = call i32 @sdma_descq_freecnt(%struct.sdma_engine* %135)
  %137 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %138 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %137, i32 0, i32 29
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @ilog2(i32 %139)
  %141 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %142 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %144 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 1, %145
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %149 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @TXE_NUM_SDMA_ENGINES, align 4
  %151 = mul i32 0, %150
  %152 = load i32, i32* %6, align 4
  %153 = add i32 %151, %152
  %154 = shl i32 1, %153
  %155 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %156 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @TXE_NUM_SDMA_ENGINES, align 4
  %158 = mul i32 1, %157
  %159 = load i32, i32* %6, align 4
  %160 = add i32 %158, %159
  %161 = shl i32 1, %160
  %162 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %163 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @TXE_NUM_SDMA_ENGINES, align 4
  %165 = mul i32 2, %164
  %166 = load i32, i32* %6, align 4
  %167 = add i32 %165, %166
  %168 = shl i32 1, %167
  %169 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %170 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 8
  %171 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %172 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %175 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %173, %176
  %178 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %179 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %177, %180
  %182 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %183 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %182, i32 0, i32 7
  store i32 %181, i32* %183, align 4
  %184 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %185 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %184, i32 0, i32 28
  %186 = call i32 @spin_lock_init(i32* %185)
  %187 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %188 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %187, i32 0, i32 27
  %189 = call i32 @seqlock_init(i32* %188)
  %190 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %191 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %190, i32 0, i32 26
  %192 = call i32 @spin_lock_init(i32* %191)
  %193 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %194 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %193, i32 0, i32 25
  %195 = call i32 @spin_lock_init(i32* %194)
  %196 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %197 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %196, i32 0, i32 24
  %198 = call i32 @seqlock_init(i32* %197)
  %199 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %200 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %199, i32 0, i32 8
  store i32 0, i32* %200, align 8
  %201 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %202 = load i32, i32* @sdma_state_s00_hw_down, align 4
  %203 = call i32 @sdma_set_state(%struct.sdma_engine* %201, i32 %202)
  %204 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %205 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %204, i32 0, i32 23
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = call i32 @kref_init(i32* %206)
  %208 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %209 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %208, i32 0, i32 23
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = call i32 @init_completion(i32* %210)
  %212 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %213 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %212, i32 0, i32 22
  %214 = call i32 @INIT_LIST_HEAD(i32* %213)
  %215 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %216 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %215, i32 0, i32 21
  %217 = call i32 @INIT_LIST_HEAD(i32* %216)
  %218 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @TAIL, align 4
  %221 = call i32 @SD(i32 %220)
  %222 = call i32 @get_kctxt_csr_addr(%struct.hfi1_devdata* %218, i32 %219, i32 %221)
  %223 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %224 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %223, i32 0, i32 20
  store i32 %222, i32* %224, align 8
  %225 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %226 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %225, i32 0, i32 19
  %227 = load i32, i32* @sdma_hw_clean_up_task, align 4
  %228 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %229 = ptrtoint %struct.sdma_engine* %228 to i64
  %230 = call i32 @tasklet_init(i32* %226, i32 %227, i64 %229)
  %231 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %232 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %231, i32 0, i32 18
  %233 = load i32, i32* @sdma_sw_clean_up_task, align 4
  %234 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %235 = ptrtoint %struct.sdma_engine* %234 to i64
  %236 = call i32 @tasklet_init(i32* %232, i32 %233, i64 %235)
  %237 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %238 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %237, i32 0, i32 17
  %239 = load i32, i32* @sdma_err_halt_wait, align 4
  %240 = call i32 @INIT_WORK(i32* %238, i32 %239)
  %241 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %242 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %241, i32 0, i32 16
  %243 = load i32, i32* @sdma_field_flush, align 4
  %244 = call i32 @INIT_WORK(i32* %242, i32 %243)
  %245 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %246 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %245, i32 0, i32 15
  store i64 0, i64* %246, align 8
  %247 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %248 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %247, i32 0, i32 14
  %249 = load i32, i32* @sdma_err_progress_check, align 4
  %250 = call i32 @timer_setup(i32* %248, i32 %249, i32 0)
  %251 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %252 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %251, i32 0, i32 9
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 0
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = mul i64 %256, 8
  %258 = trunc i64 %257 to i32
  %259 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %260 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %259, i32 0, i32 13
  %261 = load i32, i32* @GFP_KERNEL, align 4
  %262 = call i8* @dma_alloc_coherent(i32* %254, i32 %258, i64* %260, i32 %261)
  %263 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %264 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %263, i32 0, i32 12
  store i8* %262, i8** %264, align 8
  %265 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %266 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %265, i32 0, i32 12
  %267 = load i8*, i8** %266, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %270, label %269

269:                                              ; preds = %116
  br label %434

270:                                              ; preds = %116
  %271 = load i32, i32* %9, align 4
  %272 = call i32 @array_size(i32 %271, i32 8)
  %273 = load i32, i32* @GFP_KERNEL, align 4
  %274 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %275 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %274, i32 0, i32 10
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @kvzalloc_node(i32 %272, i32 %273, i32 %276)
  %278 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %279 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %278, i32 0, i32 11
  store i32 %277, i32* %279, align 8
  %280 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %281 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %280, i32 0, i32 11
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %270
  br label %434

285:                                              ; preds = %270
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %6, align 4
  %288 = add i32 %287, 1
  store i32 %288, i32* %6, align 4
  br label %111

289:                                              ; preds = %111
  %290 = load i64, i64* @L1_CACHE_BYTES, align 8
  %291 = load i64, i64* %14, align 8
  %292 = mul i64 %290, %291
  %293 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %294 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  %295 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %296 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %295, i32 0, i32 9
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 0
  %299 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %300 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = trunc i64 %301 to i32
  %303 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %304 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %303, i32 0, i32 4
  %305 = load i32, i32* @GFP_KERNEL, align 4
  %306 = call i8* @dma_alloc_coherent(i32* %298, i32 %302, i64* %304, i32 %305)
  %307 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %308 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %307, i32 0, i32 5
  store i8* %306, i8** %308, align 8
  %309 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %310 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %309, i32 0, i32 5
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %289
  %314 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %315 = call i32 @dd_dev_err(%struct.hfi1_devdata* %314, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %434

316:                                              ; preds = %289
  %317 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %318 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %317, i32 0, i32 9
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 0
  %321 = load i32, i32* @SDMA_PAD, align 4
  %322 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %323 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %322, i32 0, i32 8
  %324 = load i32, i32* @GFP_KERNEL, align 4
  %325 = call i8* @dma_alloc_coherent(i32* %320, i32 %321, i64* %323, i32 %324)
  %326 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %327 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %326, i32 0, i32 7
  store i8* %325, i8** %327, align 8
  %328 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %329 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %328, i32 0, i32 7
  %330 = load i8*, i8** %329, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %335, label %332

332:                                              ; preds = %316
  %333 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %334 = call i32 @dd_dev_err(%struct.hfi1_devdata* %333, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %434

335:                                              ; preds = %316
  %336 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %337 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %336, i32 0, i32 5
  %338 = load i8*, i8** %337, align 8
  store i8* %338, i8** %10, align 8
  store i32 0, i32* %6, align 4
  br label %339

339:                                              ; preds = %377, %335
  %340 = load i32, i32* %6, align 4
  %341 = zext i32 %340 to i64
  %342 = load i64, i64* %14, align 8
  %343 = icmp ult i64 %341, %342
  br i1 %343, label %344, label %380

344:                                              ; preds = %339
  %345 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %346 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %345, i32 0, i32 6
  %347 = load %struct.sdma_engine*, %struct.sdma_engine** %346, align 8
  %348 = load i32, i32* %6, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %347, i64 %349
  store %struct.sdma_engine* %350, %struct.sdma_engine** %7, align 8
  %351 = load i8*, i8** %10, align 8
  %352 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %353 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %352, i32 0, i32 10
  store i8* %351, i8** %353, align 8
  %354 = load i64, i64* @L1_CACHE_BYTES, align 8
  %355 = load i8*, i8** %10, align 8
  %356 = getelementptr i8, i8* %355, i64 %354
  store i8* %356, i8** %10, align 8
  %357 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %358 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %357, i32 0, i32 10
  %359 = load i8*, i8** %358, align 8
  %360 = ptrtoint i8* %359 to i64
  %361 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %362 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %361, i32 0, i32 5
  %363 = load i8*, i8** %362, align 8
  %364 = ptrtoint i8* %363 to i64
  %365 = sub i64 %360, %364
  store i64 %365, i64* %16, align 8
  %366 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %367 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %366, i32 0, i32 4
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* %16, align 8
  %370 = add i64 %368, %369
  %371 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %372 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %371, i32 0, i32 9
  store i64 %370, i64* %372, align 8
  %373 = load %struct.sdma_engine*, %struct.sdma_engine** %7, align 8
  %374 = load i64, i64* %12, align 8
  %375 = load i64, i64* %13, align 8
  %376 = call i32 @init_sdma_regs(%struct.sdma_engine* %373, i64 %374, i64 %375)
  br label %377

377:                                              ; preds = %344
  %378 = load i32, i32* %6, align 4
  %379 = add i32 %378, 1
  store i32 %379, i32* %6, align 4
  br label %339

380:                                              ; preds = %339
  %381 = load i32, i32* @HFI1_HAS_SEND_DMA, align 4
  %382 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %383 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = or i32 %384, %381
  store i32 %385, i32* %383, align 8
  %386 = load i64, i64* %13, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %380
  %389 = load i32, i32* @HFI1_HAS_SDMA_TIMEOUT, align 4
  br label %391

390:                                              ; preds = %380
  br label %391

391:                                              ; preds = %390, %388
  %392 = phi i32 [ %389, %388 ], [ 0, %390 ]
  %393 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %394 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 8
  %396 = or i32 %395, %392
  store i32 %396, i32* %394, align 8
  %397 = load i64, i64* %14, align 8
  %398 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %399 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %398, i32 0, i32 1
  store i64 %397, i64* %399, align 8
  %400 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %401 = load i32, i32* %5, align 4
  %402 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %11, align 8
  %403 = getelementptr inbounds %struct.hfi1_pportdata, %struct.hfi1_pportdata* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = call i32 @sdma_map_init(%struct.hfi1_devdata* %400, i32 %401, i32 %404, i32* null)
  store i32 %405, i32* %15, align 4
  %406 = load i32, i32* %15, align 4
  %407 = icmp slt i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %391
  br label %434

409:                                              ; preds = %391
  %410 = load i32, i32* @GFP_KERNEL, align 4
  %411 = call %struct.rhashtable* @kzalloc(i32 4, i32 %410)
  store %struct.rhashtable* %411, %struct.rhashtable** %8, align 8
  %412 = load %struct.rhashtable*, %struct.rhashtable** %8, align 8
  %413 = icmp ne %struct.rhashtable* %412, null
  br i1 %413, label %417, label %414

414:                                              ; preds = %409
  %415 = load i32, i32* @ENOMEM, align 4
  %416 = sub nsw i32 0, %415
  store i32 %416, i32* %15, align 4
  br label %434

417:                                              ; preds = %409
  %418 = load %struct.rhashtable*, %struct.rhashtable** %8, align 8
  %419 = call i32 @rhashtable_init(%struct.rhashtable* %418, i32* @sdma_rht_params)
  store i32 %419, i32* %15, align 4
  %420 = load i32, i32* %15, align 4
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = load %struct.rhashtable*, %struct.rhashtable** %8, align 8
  %424 = call i32 @kfree(%struct.rhashtable* %423)
  br label %434

425:                                              ; preds = %417
  %426 = load %struct.rhashtable*, %struct.rhashtable** %8, align 8
  %427 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %428 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %427, i32 0, i32 2
  store %struct.rhashtable* %426, %struct.rhashtable** %428, align 8
  %429 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %430 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %431 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = call i32 (%struct.hfi1_devdata*, i8*, i64, ...) @dd_dev_info(%struct.hfi1_devdata* %429, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %432)
  store i32 0, i32* %3, align 4
  br label %439

434:                                              ; preds = %422, %414, %408, %332, %313, %284, %269
  %435 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %436 = load i64, i64* %14, align 8
  %437 = call i32 @sdma_clean(%struct.hfi1_devdata* %435, i64 %436)
  %438 = load i32, i32* %15, align 4
  store i32 %438, i32* %3, align 4
  br label %439

439:                                              ; preds = %434, %425, %89, %31
  %440 = load i32, i32* %3, align 4
  ret i32 %440
}

declare dso_local i64 @chip_sdma_engines(%struct.hfi1_devdata*) #1

declare dso_local i32 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @HFI1_CAP_CLEAR(i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i64, ...) #1

declare dso_local i64 @chip_sdma_mem_size(%struct.hfi1_devdata*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sdma_get_descq_cnt(...) #1

declare dso_local %struct.sdma_engine* @kcalloc_node(i64, i32, i32, i32) #1

declare dso_local i64 @ns_to_cclock(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @sdma_descq_freecnt(%struct.sdma_engine*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @seqlock_init(i32*) #1

declare dso_local i32 @sdma_set_state(%struct.sdma_engine*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_kctxt_csr_addr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @SD(i32) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @kvzalloc_node(i32, i32, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @init_sdma_regs(%struct.sdma_engine*, i64, i64) #1

declare dso_local i32 @sdma_map_init(%struct.hfi1_devdata*, i32, i32, i32*) #1

declare dso_local %struct.rhashtable* @kzalloc(i32, i32) #1

declare dso_local i32 @rhashtable_init(%struct.rhashtable*, i32*) #1

declare dso_local i32 @kfree(%struct.rhashtable*) #1

declare dso_local i32 @sdma_clean(%struct.hfi1_devdata*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
