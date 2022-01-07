; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_ring_cq_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_ring_cq_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@OCRDMA_DB_CQ_RING_ID_MASK = common dso_local global i32 0, align 4
@OCRDMA_DB_CQ_RING_ID_EXT_MASK = common dso_local global i32 0, align 4
@OCRDMA_DB_CQ_RING_ID_EXT_MASK_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_DB_CQ_REARM_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_DB_CQ_SOLICIT_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_DB_CQ_NUM_POPPED_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_DB_CQ_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocrdma_ring_cq_db(%struct.ocrdma_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ocrdma_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @OCRDMA_DB_CQ_RING_ID_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @OCRDMA_DB_CQ_RING_ID_EXT_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @OCRDMA_DB_CQ_RING_ID_EXT_MASK_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %11, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32, i32* @OCRDMA_DB_CQ_REARM_SHIFT, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %24, %5
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @OCRDMA_DB_CQ_SOLICIT_SHIFT, align 4
  %34 = shl i32 1, %33
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @OCRDMA_DB_CQ_NUM_POPPED_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %6, align 8
  %45 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OCRDMA_DB_CQ_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @iowrite32(i32 %43, i64 %49)
  ret void
}

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
