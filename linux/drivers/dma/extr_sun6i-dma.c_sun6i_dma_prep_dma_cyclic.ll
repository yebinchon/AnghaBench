; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.sun6i_dma_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (i8**, i32, i32)*, i32 (i8**, i32, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.sun6i_vchan = type { i32, i32, i32, %struct.dma_slave_config }
%struct.dma_slave_config = type { i8*, i8* }
%struct.sun6i_dma_lli = type { i64, %struct.sun6i_dma_lli*, i32, i8*, i8*, i8*, i32 }
%struct.sun6i_desc = type { %struct.sun6i_dma_lli*, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Invalid DMA configuration\0A\00", align 1
@GFP_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to alloc lli memory\0A\00", align 1
@NORMAL_WAIT = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DRQ_SDRAM = common dso_local global i32 0, align 4
@LINEAR_MODE = common dso_local global i32 0, align 4
@IO_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i64, i64, i32, i64)* @sun6i_dma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @sun6i_dma_prep_dma_cyclic(%struct.dma_chan* %0, i8* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.sun6i_dma_dev*, align 8
  %15 = alloca %struct.sun6i_vchan*, align 8
  %16 = alloca %struct.dma_slave_config*, align 8
  %17 = alloca %struct.sun6i_dma_lli*, align 8
  %18 = alloca %struct.sun6i_dma_lli*, align 8
  %19 = alloca %struct.sun6i_desc*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %25 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %26 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32 %27)
  store %struct.sun6i_dma_dev* %28, %struct.sun6i_dma_dev** %14, align 8
  %29 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %30 = call %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan* %29)
  store %struct.sun6i_vchan* %30, %struct.sun6i_vchan** %15, align 8
  %31 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %15, align 8
  %32 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %31, i32 0, i32 3
  store %struct.dma_slave_config* %32, %struct.dma_slave_config** %16, align 8
  store %struct.sun6i_dma_lli* null, %struct.sun6i_dma_lli** %18, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = udiv i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %23, align 4
  %37 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %14, align 8
  %38 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @set_config(%struct.sun6i_dma_dev* %37, %struct.dma_slave_config* %38, i32 %39, i8** %21)
  store i32 %40, i32* %24, align 4
  %41 = load i32, i32* %24, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %6
  %44 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %45 = call i32 @chan2dev(%struct.dma_chan* %44)
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %205

47:                                               ; preds = %6
  %48 = load i32, i32* @GFP_NOWAIT, align 4
  %49 = call %struct.sun6i_desc* @kzalloc(i32 16, i32 %48)
  store %struct.sun6i_desc* %49, %struct.sun6i_desc** %19, align 8
  %50 = load %struct.sun6i_desc*, %struct.sun6i_desc** %19, align 8
  %51 = icmp ne %struct.sun6i_desc* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %205

53:                                               ; preds = %47
  store i32 0, i32* %22, align 4
  br label %54

54:                                               ; preds = %166, %53
  %55 = load i32, i32* %22, align 4
  %56 = load i32, i32* %23, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %169

58:                                               ; preds = %54
  %59 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %14, align 8
  %60 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_NOWAIT, align 4
  %63 = call %struct.sun6i_dma_lli* @dma_pool_alloc(i32 %61, i32 %62, i8** %20)
  store %struct.sun6i_dma_lli* %63, %struct.sun6i_dma_lli** %17, align 8
  %64 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %65 = icmp ne %struct.sun6i_dma_lli* %64, null
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %14, align 8
  %68 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %183

72:                                               ; preds = %58
  %73 = load i64, i64* %11, align 8
  %74 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %75 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* @NORMAL_WAIT, align 4
  %77 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %78 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %72
  %83 = load i8*, i8** %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i32, i32* %22, align 4
  %86 = zext i32 %85 to i64
  %87 = mul i64 %84, %86
  %88 = getelementptr i8, i8* %83, i64 %87
  %89 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %90 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %92 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %95 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %21, align 8
  %97 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %98 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %14, align 8
  %100 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32 (i8**, i32, i32)*, i32 (i8**, i32, i32)** %102, align 8
  %104 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %105 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %104, i32 0, i32 3
  %106 = load i32, i32* @DRQ_SDRAM, align 4
  %107 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %15, align 8
  %108 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %103(i8** %105, i32 %106, i32 %109)
  %111 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %14, align 8
  %112 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32 (i8**, i32, i32)*, i32 (i8**, i32, i32)** %114, align 8
  %116 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %117 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %116, i32 0, i32 3
  %118 = load i32, i32* @LINEAR_MODE, align 4
  %119 = load i32, i32* @IO_MODE, align 4
  %120 = call i32 %115(i8** %117, i32 %118, i32 %119)
  br label %160

121:                                              ; preds = %72
  %122 = load %struct.dma_slave_config*, %struct.dma_slave_config** %16, align 8
  %123 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %126 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** %9, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i32, i32* %22, align 4
  %130 = zext i32 %129 to i64
  %131 = mul i64 %128, %130
  %132 = getelementptr i8, i8* %127, i64 %131
  %133 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %134 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %21, align 8
  %136 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %137 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %14, align 8
  %139 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32 (i8**, i32, i32)*, i32 (i8**, i32, i32)** %141, align 8
  %143 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %144 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %143, i32 0, i32 3
  %145 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %15, align 8
  %146 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DRQ_SDRAM, align 4
  %149 = call i32 %142(i8** %144, i32 %147, i32 %148)
  %150 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %14, align 8
  %151 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32 (i8**, i32, i32)*, i32 (i8**, i32, i32)** %153, align 8
  %155 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %156 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %155, i32 0, i32 3
  %157 = load i32, i32* @IO_MODE, align 4
  %158 = load i32, i32* @LINEAR_MODE, align 4
  %159 = call i32 %154(i8** %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %121, %82
  %161 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %18, align 8
  %162 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %17, align 8
  %163 = load i8*, i8** %20, align 8
  %164 = load %struct.sun6i_desc*, %struct.sun6i_desc** %19, align 8
  %165 = call %struct.sun6i_dma_lli* @sun6i_dma_lli_add(%struct.sun6i_dma_lli* %161, %struct.sun6i_dma_lli* %162, i8* %163, %struct.sun6i_desc* %164)
  store %struct.sun6i_dma_lli* %165, %struct.sun6i_dma_lli** %18, align 8
  br label %166

166:                                              ; preds = %160
  %167 = load i32, i32* %22, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %22, align 4
  br label %54

169:                                              ; preds = %54
  %170 = load %struct.sun6i_desc*, %struct.sun6i_desc** %19, align 8
  %171 = getelementptr inbounds %struct.sun6i_desc, %struct.sun6i_desc* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %18, align 8
  %174 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %15, align 8
  %176 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.sun6i_vchan*, %struct.sun6i_vchan** %15, align 8
  %178 = getelementptr inbounds %struct.sun6i_vchan, %struct.sun6i_vchan* %177, i32 0, i32 1
  %179 = load %struct.sun6i_desc*, %struct.sun6i_desc** %19, align 8
  %180 = getelementptr inbounds %struct.sun6i_desc, %struct.sun6i_desc* %179, i32 0, i32 1
  %181 = load i64, i64* %13, align 8
  %182 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %178, i32* %180, i64 %181)
  store %struct.dma_async_tx_descriptor* %182, %struct.dma_async_tx_descriptor** %7, align 8
  br label %205

183:                                              ; preds = %66
  %184 = load %struct.sun6i_desc*, %struct.sun6i_desc** %19, align 8
  %185 = getelementptr inbounds %struct.sun6i_desc, %struct.sun6i_desc* %184, i32 0, i32 0
  %186 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %185, align 8
  store %struct.sun6i_dma_lli* %186, %struct.sun6i_dma_lli** %18, align 8
  br label %187

187:                                              ; preds = %198, %183
  %188 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %18, align 8
  %189 = icmp ne %struct.sun6i_dma_lli* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %187
  %191 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %14, align 8
  %192 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %18, align 8
  %195 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %18, align 8
  %196 = call i32 @virt_to_phys(%struct.sun6i_dma_lli* %195)
  %197 = call i32 @dma_pool_free(i32 %193, %struct.sun6i_dma_lli* %194, i32 %196)
  br label %198

198:                                              ; preds = %190
  %199 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %18, align 8
  %200 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %199, i32 0, i32 1
  %201 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %200, align 8
  store %struct.sun6i_dma_lli* %201, %struct.sun6i_dma_lli** %18, align 8
  br label %187

202:                                              ; preds = %187
  %203 = load %struct.sun6i_desc*, %struct.sun6i_desc** %19, align 8
  %204 = call i32 @kfree(%struct.sun6i_desc* %203)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %205

205:                                              ; preds = %202, %169, %52, %43
  %206 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %206
}

declare dso_local %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32) #1

declare dso_local %struct.sun6i_vchan* @to_sun6i_vchan(%struct.dma_chan*) #1

declare dso_local i32 @set_config(%struct.sun6i_dma_dev*, %struct.dma_slave_config*, i32, i8**) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

declare dso_local %struct.sun6i_desc* @kzalloc(i32, i32) #1

declare dso_local %struct.sun6i_dma_lli* @dma_pool_alloc(i32, i32, i8**) #1

declare dso_local %struct.sun6i_dma_lli* @sun6i_dma_lli_add(%struct.sun6i_dma_lli*, %struct.sun6i_dma_lli*, i8*, %struct.sun6i_desc*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

declare dso_local i32 @dma_pool_free(i32, %struct.sun6i_dma_lli*, i32) #1

declare dso_local i32 @virt_to_phys(%struct.sun6i_dma_lli*) #1

declare dso_local i32 @kfree(%struct.sun6i_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
