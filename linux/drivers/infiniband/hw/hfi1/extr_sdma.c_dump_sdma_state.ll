; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_dump_sdma_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_sdma.c_dump_sdma_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_engine = type { i64, i64, i64, i32, %struct.hw_sdma_desc*, i32, i32 }
%struct.hw_sdma_desc = type { i32* }

@.str = private unnamed_addr constant [60 x i8] c"SDMA (%u) descq_head: %u descq_tail: %u freecnt: %u FLE %d\0A\00", align 1
@__const.dump_sdma_state.flags = private unnamed_addr constant [6 x i8] c"xxxx\00\00", align 1
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
@.str.1 = private unnamed_addr constant [64 x i8] c"SDMA sdmadesc[%u]: flags:%s addr:0x%016llx gen:%u len:%u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\09desc0:0x%016llx desc1 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\09aidx: %u amode: %u alen: %u\0A\00", align 1
@SDMA_DESC1_HEADER_INDEX_SMASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_INDEX_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_MODE_SMASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_MODE_SHIFT = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_DWS_SMASK = common dso_local global i32 0, align 4
@SDMA_DESC1_HEADER_DWS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdma_engine*)* @dump_sdma_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_sdma_state(%struct.sdma_engine* %0) #0 {
  %2 = alloca %struct.sdma_engine*, align 8
  %3 = alloca %struct.hw_sdma_desc*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [6 x i8], align 1
  store %struct.sdma_engine* %0, %struct.sdma_engine** %2, align 8
  %12 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %13 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %16 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %14, %17
  store i64 %18, i64* %8, align 8
  %19 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %20 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %23 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = and i64 %21, %24
  store i64 %25, i64* %9, align 8
  %26 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %27 = call i64 @sdma_descq_freecnt(%struct.sdma_engine* %26)
  store i64 %27, i64* %10, align 8
  %28 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %29 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %32 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %38 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %37, i32 0, i32 5
  %39 = call i32 @list_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, i32, ...) @dd_dev_err(i32 %30, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %34, i64 %35, i64 %36, i32 %42)
  br label %44

44:                                               ; preds = %170, %1
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %178

48:                                               ; preds = %44
  %49 = bitcast [6 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.dump_sdma_state.flags, i32 0, i32 0), i64 6, i1 false)
  %50 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %51 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %50, i32 0, i32 4
  %52 = load %struct.hw_sdma_desc*, %struct.hw_sdma_desc** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.hw_sdma_desc, %struct.hw_sdma_desc* %52, i64 %53
  store %struct.hw_sdma_desc* %54, %struct.hw_sdma_desc** %3, align 8
  %55 = load %struct.hw_sdma_desc*, %struct.hw_sdma_desc** %3, align 8
  %56 = getelementptr inbounds %struct.hw_sdma_desc, %struct.hw_sdma_desc* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le64_to_cpu(i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load %struct.hw_sdma_desc*, %struct.hw_sdma_desc** %3, align 8
  %63 = getelementptr inbounds %struct.hw_sdma_desc, %struct.hw_sdma_desc* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le64_to_cpu(i32 %66)
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SDMA_DESC1_INT_REQ_FLAG, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 73, i32 45
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  store i8 %76, i8* %77, align 1
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SDMA_DESC1_HEAD_TO_HOST_FLAG, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 72, i32 45
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 1
  store i8 %85, i8* %86, align 1
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SDMA_DESC0_FIRST_DESC_FLAG, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 70, i32 45
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 2
  store i8 %94, i8* %95, align 1
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @SDMA_DESC0_LAST_DESC_FLAG, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 76, i32 45
  %103 = trunc i32 %102 to i8
  %104 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 3
  store i8 %103, i8* %104, align 1
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @SDMA_DESC0_PHY_ADDR_SHIFT, align 4
  %108 = ashr i32 %106, %107
  %109 = load i32, i32* @SDMA_DESC0_PHY_ADDR_MASK, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %5, align 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @SDMA_DESC1_GENERATION_SHIFT, align 4
  %114 = ashr i32 %112, %113
  %115 = load i32, i32* @SDMA_DESC1_GENERATION_MASK, align 4
  %116 = and i32 %114, %115
  store i32 %116, i32* %6, align 4
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SDMA_DESC0_BYTE_COUNT_SHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = load i32, i32* @SDMA_DESC0_BYTE_COUNT_MASK, align 4
  %122 = and i32 %120, %121
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %7, align 8
  %124 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %125 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %8, align 8
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i64, i64* %7, align 8
  %133 = call i32 (i32, i8*, i32, ...) @dd_dev_err(i32 %126, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %128, i8* %129, i32 %130, i32 %131, i64 %132)
  %134 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %135 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i32, i8*, i32, ...) @dd_dev_err(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %140)
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SDMA_DESC0_FIRST_DESC_FLAG, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %48
  %148 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %149 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @SDMA_DESC1_HEADER_INDEX_SMASK, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @SDMA_DESC1_HEADER_INDEX_SHIFT, align 4
  %156 = ashr i32 %154, %155
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SDMA_DESC1_HEADER_MODE_SMASK, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* @SDMA_DESC1_HEADER_MODE_SHIFT, align 4
  %162 = ashr i32 %160, %161
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SDMA_DESC1_HEADER_DWS_SMASK, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* @SDMA_DESC1_HEADER_DWS_SHIFT, align 4
  %168 = ashr i32 %166, %167
  %169 = call i32 (i32, i8*, i32, ...) @dd_dev_err(i32 %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %156, i32 %162, i32 %168)
  br label %170

170:                                              ; preds = %147, %48
  %171 = load i64, i64* %8, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %8, align 8
  %173 = load %struct.sdma_engine*, %struct.sdma_engine** %2, align 8
  %174 = getelementptr inbounds %struct.sdma_engine, %struct.sdma_engine* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %8, align 8
  %177 = and i64 %176, %175
  store i64 %177, i64* %8, align 8
  br label %44

178:                                              ; preds = %44
  ret void
}

declare dso_local i64 @sdma_descq_freecnt(%struct.sdma_engine*) #1

declare dso_local i32 @dd_dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @list_empty(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
