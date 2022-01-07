; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_seqfile_dump_sde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_sdma_seqfile_dump_sde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sdma_engine = type { i64, i64, %struct.hw_sdma_desc*, i32, i32, i32, i32, i32, i64, i64, i32*, %struct.TYPE_2__, i32, i32 }
%struct.hw_sdma_desc = type { i32* }
%struct.TYPE_2__ = type { i32 }

@SDE_FMT = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@ENG_ERR_STATUS = common dso_local global i32 0, align 4
@TAIL = common dso_local global i32 0, align 4
@HEAD = common dso_local global i32 0, align 4
@MEMORY = common dso_local global i32 0, align 4
@LEN_GEN = common dso_local global i32 0, align 4
@RELOAD_CNT = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_SLID = common dso_local global i32 0, align 4
@__const.sdma_seqfile_dump_sde.flags = private unnamed_addr constant [6 x i8] c"xxxx\00\00", align 1
@SDMA_DESC1_INT_REQ_FLAG = common dso_local global i32 0, align 4
@SDMA_DESC1_HEAD_TO_HOST_FLAG = common dso_local global i32 0, align 4
@SDMA_DESC0_FIRST_DESC_FLAG = common dso_local global i32 0, align 4
@SDMA_DESC0_LAST_DESC_FLAG = common dso_local global i32 0, align 4
@SDMA_DESC0_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC0_PHY_ADDR_MASK = common dso_local global i32 0, align 4
@SDMA_DESC1_GENERATION_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC1_GENERATION_MASK = common dso_local global i32 0, align 4
@SDMA_DESC0_BYTE_COUNT_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC0_BYTE_COUNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"\09desc[%u]: flags:%s addr:0x%016llx gen:%u len:%u bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\09\09ahgidx: %u ahgmode: %u\0A\00", align 1
@SDMA_DESC1_HEADER_INDEX_SMASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_INDEX_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_MODE_SMASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_MODE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdma_seqfile_dump_sde(%struct.seq_file* %0, %struct.sdma_engine* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.sdma_engine*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hw_sdma_desc*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [6 x i8], align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.sdma_engine* %1, %struct.sdma_engine** %4, align 8
  %13 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %14 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %17 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = and i64 %15, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %21 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @READ_ONCE(i32 %22)
  %24 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %25 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %23, %26
  store i64 %27, i64* %6, align 8
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load i32, i32* @SDE_FMT, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %33 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %36 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %39 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %38, i32 0, i32 11
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sdma_state_name(i32 %41)
  %43 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %44 = load i32, i32* @CTRL, align 4
  %45 = call i32 @SD(i32 %44)
  %46 = call i64 @read_sde_csr(%struct.sdma_engine* %43, i32 %45)
  %47 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %48 = load i32, i32* @STATUS, align 4
  %49 = call i32 @SD(i32 %48)
  %50 = call i64 @read_sde_csr(%struct.sdma_engine* %47, i32 %49)
  %51 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %52 = load i32, i32* @ENG_ERR_STATUS, align 4
  %53 = call i32 @SD(i32 %52)
  %54 = call i64 @read_sde_csr(%struct.sdma_engine* %51, i32 %53)
  %55 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %56 = load i32, i32* @TAIL, align 4
  %57 = call i32 @SD(i32 %56)
  %58 = call i64 @read_sde_csr(%struct.sdma_engine* %55, i32 %57)
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %61 = load i32, i32* @HEAD, align 4
  %62 = call i32 @SD(i32 %61)
  %63 = call i64 @read_sde_csr(%struct.sdma_engine* %60, i32 %62)
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %66 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %65, i32 0, i32 10
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le64_to_cpu(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %72 = load i32, i32* @MEMORY, align 4
  %73 = call i32 @SD(i32 %72)
  %74 = call i64 @read_sde_csr(%struct.sdma_engine* %71, i32 %73)
  %75 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %76 = load i32, i32* @LEN_GEN, align 4
  %77 = call i32 @SD(i32 %76)
  %78 = call i64 @read_sde_csr(%struct.sdma_engine* %75, i32 %77)
  %79 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %80 = load i32, i32* @RELOAD_CNT, align 4
  %81 = call i32 @SD(i32 %80)
  %82 = call i64 @read_sde_csr(%struct.sdma_engine* %79, i32 %81)
  %83 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %84 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %87 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %86, i32 0, i32 8
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %90 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %93 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %96 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %99 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %102 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %101, i32 0, i32 4
  %103 = call i32 @list_empty(i32* %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %108 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %111 = load i32, i32* @SEND_DMA_CHECK_SLID, align 4
  %112 = call i64 @read_sde_csr(%struct.sdma_engine* %110, i32 %111)
  %113 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %28, i8* %31, i32 %34, i32 %37, i32 %42, i64 %46, i64 %50, i64 %54, i64 %58, i64 %59, i64 %63, i64 %64, i64 %70, i64 %74, i64 %78, i64 %82, i64 %85, i64 %88, i32 %91, i32 %94, i32 %97, i64 %100, i32 %106, i32 %109, i64 %112)
  br label %114

114:                                              ; preds = %222, %2
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* %6, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %229

118:                                              ; preds = %114
  %119 = bitcast [6 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %119, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.sdma_seqfile_dump_sde.flags, i32 0, i32 0), i64 6, i1 false)
  %120 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %121 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %120, i32 0, i32 2
  %122 = load %struct.hw_sdma_desc*, %struct.hw_sdma_desc** %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds %struct.hw_sdma_desc, %struct.hw_sdma_desc* %122, i64 %123
  store %struct.hw_sdma_desc* %124, %struct.hw_sdma_desc** %7, align 8
  %125 = load %struct.hw_sdma_desc*, %struct.hw_sdma_desc** %7, align 8
  %126 = getelementptr inbounds %struct.hw_sdma_desc, %struct.hw_sdma_desc* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le64_to_cpu(i32 %129)
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %130, i32* %131, align 4
  %132 = load %struct.hw_sdma_desc*, %struct.hw_sdma_desc** %7, align 8
  %133 = getelementptr inbounds %struct.hw_sdma_desc, %struct.hw_sdma_desc* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le64_to_cpu(i32 %136)
  %138 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %137, i32* %138, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SDMA_DESC1_INT_REQ_FLAG, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 73, i32 45
  %146 = trunc i32 %145 to i8
  %147 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  store i8 %146, i8* %147, align 1
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @SDMA_DESC1_HEAD_TO_HOST_FLAG, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 72, i32 45
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 1
  store i8 %155, i8* %156, align 1
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SDMA_DESC0_FIRST_DESC_FLAG, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 70, i32 45
  %164 = trunc i32 %163 to i8
  %165 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 2
  store i8 %164, i8* %165, align 1
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SDMA_DESC0_LAST_DESC_FLAG, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 76, i32 45
  %173 = trunc i32 %172 to i8
  %174 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 3
  store i8 %173, i8* %174, align 1
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @SDMA_DESC0_PHY_ADDR_SHIFT, align 4
  %178 = ashr i32 %176, %177
  %179 = load i32, i32* @SDMA_DESC0_PHY_ADDR_MASK, align 4
  %180 = and i32 %178, %179
  store i32 %180, i32* %9, align 4
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SDMA_DESC1_GENERATION_SHIFT, align 4
  %184 = ashr i32 %182, %183
  %185 = load i32, i32* @SDMA_DESC1_GENERATION_MASK, align 4
  %186 = and i32 %184, %185
  store i32 %186, i32* %10, align 4
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @SDMA_DESC0_BYTE_COUNT_SHIFT, align 4
  %190 = ashr i32 %188, %189
  %191 = load i32, i32* @SDMA_DESC0_BYTE_COUNT_MASK, align 4
  %192 = and i32 %190, %191
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %11, align 8
  %194 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %195 = load i64, i64* %5, align 8
  %196 = trunc i64 %195 to i32
  %197 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %198 = load i32, i32* %9, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i64, i64* %11, align 8
  %201 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %194, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %196, i8* %197, i32 %198, i32 %199, i64 %200)
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SDMA_DESC0_FIRST_DESC_FLAG, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %222

207:                                              ; preds = %118
  %208 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @SDMA_DESC1_HEADER_INDEX_SMASK, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* @SDMA_DESC1_HEADER_INDEX_SHIFT, align 4
  %214 = ashr i32 %212, %213
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @SDMA_DESC1_HEADER_MODE_SMASK, align 4
  %218 = and i32 %216, %217
  %219 = load i32, i32* @SDMA_DESC1_HEADER_MODE_SHIFT, align 4
  %220 = ashr i32 %218, %219
  %221 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %208, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %214, i32 %220)
  br label %222

222:                                              ; preds = %207, %118
  %223 = load i64, i64* %5, align 8
  %224 = add i64 %223, 1
  %225 = load %struct.sdma_engine*, %struct.sdma_engine** %4, align 8
  %226 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = and i64 %224, %227
  store i64 %228, i64* %5, align 8
  br label %114

229:                                              ; preds = %114
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @sdma_state_name(i32) #1

declare dso_local i64 @read_sde_csr(%struct.sdma_engine*, i32) #1

declare dso_local i32 @SD(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @list_empty(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
