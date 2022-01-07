; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_dump_pq16_desc_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_dump_pq16_desc_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_chan = type { i32 }
%struct.ioat_ring_ent = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.ioat_pq_descriptor* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.ioat_pq_descriptor = type { i32, i32, i32*, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i64, i64, i32, i32, i32 }
%struct.device = type { i32 }
%struct.ioat_raw_descriptor = type opaque

@.str = private unnamed_addr constant [105 x i8] c"desc[%d]: (%#llx->%#llx) flags: %#x sz: %#x ctl: %#x (op: %#x int: %d compl: %d pq: '%s%s' src_cnt: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\09src[%d]: %#llx coef: %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\09P: %#llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09Q: %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioatdma_chan*, %struct.ioat_ring_ent*)* @dump_pq16_desc_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pq16_desc_dbg(%struct.ioatdma_chan* %0, %struct.ioat_ring_ent* %1) #0 {
  %3 = alloca %struct.ioatdma_chan*, align 8
  %4 = alloca %struct.ioat_ring_ent*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ioat_pq_descriptor*, align 8
  %7 = alloca [3 x %struct.ioat_raw_descriptor*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ioatdma_chan* %0, %struct.ioatdma_chan** %3, align 8
  store %struct.ioat_ring_ent* %1, %struct.ioat_ring_ent** %4, align 8
  %10 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %11 = call %struct.device* @to_dev(%struct.ioatdma_chan* %10)
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %4, align 8
  %13 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %12, i32 0, i32 2
  %14 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %13, align 8
  store %struct.ioat_pq_descriptor* %14, %struct.ioat_pq_descriptor** %6, align 8
  %15 = getelementptr inbounds [3 x %struct.ioat_raw_descriptor*], [3 x %struct.ioat_raw_descriptor*]* %7, i64 0, i64 0
  %16 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %17 = bitcast %struct.ioat_pq_descriptor* %16 to i8*
  %18 = bitcast i8* %17 to %struct.ioat_raw_descriptor*
  store %struct.ioat_raw_descriptor* %18, %struct.ioat_raw_descriptor** %15, align 8
  %19 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %15, i64 1
  %20 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %21 = bitcast %struct.ioat_pq_descriptor* %20 to i8*
  %22 = bitcast i8* %21 to %struct.ioat_raw_descriptor*
  store %struct.ioat_raw_descriptor* %22, %struct.ioat_raw_descriptor** %19, align 8
  %23 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %19, i64 1
  %24 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %25 = bitcast %struct.ioat_pq_descriptor* %24 to i8*
  %26 = bitcast i8* %25 to %struct.ioat_raw_descriptor*
  store %struct.ioat_raw_descriptor* %26, %struct.ioat_raw_descriptor** %23, align 8
  %27 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %28 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @src16_cnt_to_sw(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %4, align 8
  %33 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %2
  %37 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %4, align 8
  %38 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = bitcast i8* %42 to %struct.ioat_raw_descriptor*
  %44 = getelementptr inbounds [3 x %struct.ioat_raw_descriptor*], [3 x %struct.ioat_raw_descriptor*]* %7, i64 0, i64 1
  store %struct.ioat_raw_descriptor* %43, %struct.ioat_raw_descriptor** %44, align 8
  %45 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %4, align 8
  %46 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = getelementptr i8, i8* %50, i64 64
  %52 = bitcast i8* %51 to %struct.ioat_raw_descriptor*
  %53 = getelementptr inbounds [3 x %struct.ioat_raw_descriptor*], [3 x %struct.ioat_raw_descriptor*]* %7, i64 0, i64 2
  store %struct.ioat_raw_descriptor* %52, %struct.ioat_raw_descriptor** %53, align 16
  br label %54

54:                                               ; preds = %36, %2
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %4, align 8
  %57 = call i32 @desc_id(%struct.ioat_ring_ent* %56)
  %58 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %4, align 8
  %59 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %63 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %4, align 8
  %66 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %70 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %73 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %76 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %80 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %84 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %88 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %94 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %95 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %101 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %102 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0), i32 %57, i64 %61, i64 %64, i32 %68, i32 %71, i32 %74, i32 %78, i32 %82, i32 %86, i8* %93, i8* %100, i32 %104)
  store i32 0, i32* %9, align 4
  br label %106

106:                                              ; preds = %125, %54
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = getelementptr inbounds [3 x %struct.ioat_raw_descriptor*], [3 x %struct.ioat_raw_descriptor*]* %7, i64 0, i64 0
  %114 = bitcast %struct.ioat_raw_descriptor** %113 to i8**
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @pq16_get_src(i8** %114, i32 %115)
  %117 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %118 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %111, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %112, i64 %116, i32 %123)
  br label %125

125:                                              ; preds = %110
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %106

128:                                              ; preds = %106
  %129 = load %struct.device*, %struct.device** %5, align 8
  %130 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %131 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %132)
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %6, align 8
  %136 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %134, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  ret void
}

declare dso_local %struct.device* @to_dev(%struct.ioatdma_chan*) #1

declare dso_local i32 @src16_cnt_to_sw(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @desc_id(%struct.ioat_ring_ent*) #1

declare dso_local i64 @pq16_get_src(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
