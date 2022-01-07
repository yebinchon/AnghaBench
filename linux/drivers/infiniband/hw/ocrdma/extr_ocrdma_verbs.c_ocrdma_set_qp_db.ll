; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_set_qp_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_set_qp_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ocrdma_qp = type { i64, i64 }
%struct.ocrdma_pd = type { i32 }

@OCRDMA_ASIC_GEN_SKH_R = common dso_local global i64 0, align 8
@OCRDMA_DB_GEN2_SQ_OFFSET = common dso_local global i64 0, align 8
@OCRDMA_DB_GEN2_RQ_OFFSET = common dso_local global i64 0, align 8
@OCRDMA_DB_SQ_OFFSET = common dso_local global i64 0, align 8
@OCRDMA_DB_RQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*, %struct.ocrdma_qp*, %struct.ocrdma_pd*)* @ocrdma_set_qp_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_set_qp_db(%struct.ocrdma_dev* %0, %struct.ocrdma_qp* %1, %struct.ocrdma_pd* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_qp*, align 8
  %6 = alloca %struct.ocrdma_pd*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %5, align 8
  store %struct.ocrdma_pd* %2, %struct.ocrdma_pd** %6, align 8
  %7 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %8 = call i64 @ocrdma_get_asic_type(%struct.ocrdma_dev* %7)
  %9 = load i64, i64* @OCRDMA_ASIC_GEN_SKH_R, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %3
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %17 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %20 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %18, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %15, %24
  %26 = load i64, i64* @OCRDMA_DB_GEN2_SQ_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %29 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %31 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %35 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %38 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %36, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %33, %42
  %44 = load i64, i64* @OCRDMA_DB_GEN2_RQ_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %47 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %85

48:                                               ; preds = %3
  %49 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %50 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %54 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %57 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %52, %61
  %63 = load i64, i64* @OCRDMA_DB_SQ_OFFSET, align 8
  %64 = add nsw i64 %62, %63
  %65 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %66 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %68 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %6, align 8
  %72 = getelementptr inbounds %struct.ocrdma_pd, %struct.ocrdma_pd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %75 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %73, %77
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %70, %79
  %81 = load i64, i64* @OCRDMA_DB_RQ_OFFSET, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %5, align 8
  %84 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %48, %11
  ret void
}

declare dso_local i64 @ocrdma_get_asic_type(%struct.ocrdma_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
