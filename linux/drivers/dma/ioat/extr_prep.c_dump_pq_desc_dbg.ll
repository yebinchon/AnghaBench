; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_dump_pq_desc_dbg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_prep.c_dump_pq_desc_dbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_chan = type { i32 }
%struct.ioat_ring_ent = type { %struct.TYPE_3__, %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_descriptor* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ioat_pq_ext_descriptor = type { i64 }
%struct.ioat_pq_descriptor = type { i64, i64, i64, i32*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32 }
%struct.device = type { i32 }
%struct.ioat_raw_descriptor = type opaque

@.str = private unnamed_addr constant [109 x i8] c"desc[%d]: (%#llx->%#llx) flags: %#x sz: %#10.8x ctl: %#x (op: %#x int: %d compl: %d pq: '%s%s' src_cnt: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\09src[%d]: %#llx coef: %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\09P: %#llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"\09Q: %#llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\09NEXT: %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioatdma_chan*, %struct.ioat_ring_ent*, %struct.ioat_ring_ent*)* @dump_pq_desc_dbg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pq_desc_dbg(%struct.ioatdma_chan* %0, %struct.ioat_ring_ent* %1, %struct.ioat_ring_ent* %2) #0 {
  %4 = alloca %struct.ioatdma_chan*, align 8
  %5 = alloca %struct.ioat_ring_ent*, align 8
  %6 = alloca %struct.ioat_ring_ent*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ioat_pq_descriptor*, align 8
  %9 = alloca %struct.ioat_pq_ext_descriptor*, align 8
  %10 = alloca [2 x %struct.ioat_raw_descriptor*], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ioatdma_chan* %0, %struct.ioatdma_chan** %4, align 8
  store %struct.ioat_ring_ent* %1, %struct.ioat_ring_ent** %5, align 8
  store %struct.ioat_ring_ent* %2, %struct.ioat_ring_ent** %6, align 8
  %13 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %14 = call %struct.device* @to_dev(%struct.ioatdma_chan* %13)
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %16 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %15, i32 0, i32 2
  %17 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %16, align 8
  store %struct.ioat_pq_descriptor* %17, %struct.ioat_pq_descriptor** %8, align 8
  %18 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %6, align 8
  %19 = icmp ne %struct.ioat_ring_ent* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %6, align 8
  %22 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %21, i32 0, i32 1
  %23 = load %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_ext_descriptor** %22, align 8
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi %struct.ioat_pq_ext_descriptor* [ %23, %20 ], [ null, %24 ]
  store %struct.ioat_pq_ext_descriptor* %26, %struct.ioat_pq_ext_descriptor** %9, align 8
  %27 = getelementptr inbounds [2 x %struct.ioat_raw_descriptor*], [2 x %struct.ioat_raw_descriptor*]* %10, i64 0, i64 0
  %28 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %29 = bitcast %struct.ioat_pq_descriptor* %28 to i8*
  %30 = bitcast i8* %29 to %struct.ioat_raw_descriptor*
  store %struct.ioat_raw_descriptor* %30, %struct.ioat_raw_descriptor** %27, align 8
  %31 = getelementptr inbounds %struct.ioat_raw_descriptor*, %struct.ioat_raw_descriptor** %27, i64 1
  %32 = load %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_ext_descriptor** %9, align 8
  %33 = bitcast %struct.ioat_pq_ext_descriptor* %32 to i8*
  %34 = bitcast i8* %33 to %struct.ioat_raw_descriptor*
  store %struct.ioat_raw_descriptor* %34, %struct.ioat_raw_descriptor** %31, align 8
  %35 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %36 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @src_cnt_to_sw(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %42 = call i32 @desc_id(%struct.ioat_ring_ent* %41)
  %43 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %44 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_ext_descriptor** %9, align 8
  %48 = icmp ne %struct.ioat_pq_ext_descriptor* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %25
  %50 = load %struct.ioat_pq_ext_descriptor*, %struct.ioat_pq_ext_descriptor** %9, align 8
  %51 = getelementptr inbounds %struct.ioat_pq_ext_descriptor, %struct.ioat_pq_ext_descriptor* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  br label %57

53:                                               ; preds = %25
  %54 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %55 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i64 [ %52, %49 ], [ %56, %53 ]
  %59 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %60 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %64 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %67 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %70 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %74 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %78 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %82 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %88 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %89 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %95 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %96 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %46, i64 %58, i32 %62, i32 %65, i32 %68, i32 %72, i32 %76, i32 %80, i8* %87, i8* %94, i32 %98)
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %119, %57
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %122

104:                                              ; preds = %100
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = load i32, i32* %12, align 4
  %107 = getelementptr inbounds [2 x %struct.ioat_raw_descriptor*], [2 x %struct.ioat_raw_descriptor*]* %10, i64 0, i64 0
  %108 = bitcast %struct.ioat_raw_descriptor** %107 to i8**
  %109 = load i32, i32* %12, align 4
  %110 = call i64 @pq_get_src(i8** %108, i32 %109)
  %111 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %112 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %106, i64 %110, i32 %117)
  br label %119

119:                                              ; preds = %104
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %100

122:                                              ; preds = %100
  %123 = load %struct.device*, %struct.device** %7, align 8
  %124 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %125 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %131 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %129, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load %struct.device*, %struct.device** %7, align 8
  %136 = load %struct.ioat_pq_descriptor*, %struct.ioat_pq_descriptor** %8, align 8
  %137 = getelementptr inbounds %struct.ioat_pq_descriptor, %struct.ioat_pq_descriptor* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  ret void
}

declare dso_local %struct.device* @to_dev(%struct.ioatdma_chan*) #1

declare dso_local i32 @src_cnt_to_sw(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @desc_id(%struct.ioat_ring_ent*) #1

declare dso_local i64 @pq_get_src(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
