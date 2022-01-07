; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_alloc_mrw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_alloc_mrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.bnxt_qplib_rcfw* }
%struct.bnxt_qplib_rcfw = type { i32 }
%struct.bnxt_qplib_mrw = type { i64, i32, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cmdq_allocate_mrw = type { i64, i32, i32, i32 }
%struct.creq_allocate_mrw_resp = type { i32 }

@ALLOCATE_MRW = common dso_local global i32 0, align 4
@CMDQ_ALLOCATE_MRW_MRW_FLAGS_PMR = common dso_local global i64 0, align 8
@BNXT_QPLIB_FR_PMR = common dso_local global i32 0, align 4
@CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2A = common dso_local global i64 0, align 8
@CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2B = common dso_local global i64 0, align 8
@CMDQ_ALLOCATE_MRW_ACCESS_CONSUMER_OWNED_KEY = common dso_local global i32 0, align 4
@CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_alloc_mrw(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_mrw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_qplib_res*, align 8
  %5 = alloca %struct.bnxt_qplib_mrw*, align 8
  %6 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %7 = alloca %struct.cmdq_allocate_mrw, align 8
  %8 = alloca %struct.creq_allocate_mrw_resp, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %4, align 8
  store %struct.bnxt_qplib_mrw* %1, %struct.bnxt_qplib_mrw** %5, align 8
  %12 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %12, i32 0, i32 0
  %14 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %13, align 8
  store %struct.bnxt_qplib_rcfw* %14, %struct.bnxt_qplib_rcfw** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @ALLOCATE_MRW, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @RCFW_CMD_PREP(%struct.cmdq_allocate_mrw* byval(%struct.cmdq_allocate_mrw) align 8 %7, i32 %15, i32 %16)
  %18 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = getelementptr inbounds %struct.cmdq_allocate_mrw, %struct.cmdq_allocate_mrw* %7, i32 0, i32 3
  store i32 %23, i32* %24, align 8
  %25 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %26 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.cmdq_allocate_mrw, %struct.cmdq_allocate_mrw* %7, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_PMR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BNXT_QPLIB_FR_PMR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %34, %2
  %42 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %43 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2A, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %49 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2B, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %41, %34
  %54 = load i32, i32* @CMDQ_ALLOCATE_MRW_ACCESS_CONSUMER_OWNED_KEY, align 4
  %55 = getelementptr inbounds %struct.cmdq_allocate_mrw, %struct.cmdq_allocate_mrw* %7, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %47
  %57 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %58 = ptrtoint %struct.bnxt_qplib_mrw* %57 to i64
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @cpu_to_le64(i64 %59)
  %61 = getelementptr inbounds %struct.cmdq_allocate_mrw, %struct.cmdq_allocate_mrw* %7, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %6, align 8
  %63 = bitcast %struct.cmdq_allocate_mrw* %7 to i8*
  %64 = bitcast %struct.creq_allocate_mrw_resp* %8 to i8*
  %65 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %62, i8* %63, i8* %64, i32* null, i32 0)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %3, align 4
  br label %101

70:                                               ; preds = %56
  %71 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %72 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %78 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2A, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %84 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2B, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82, %76, %70
  %89 = getelementptr inbounds %struct.creq_allocate_mrw_resp, %struct.creq_allocate_mrw_resp* %8, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le32_to_cpu(i32 %90)
  %92 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %93 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  br label %100

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.creq_allocate_mrw_resp, %struct.creq_allocate_mrw_resp* %8, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le32_to_cpu(i32 %96)
  %98 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %99 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %94, %88
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %68
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @RCFW_CMD_PREP(%struct.cmdq_allocate_mrw* byval(%struct.cmdq_allocate_mrw) align 8, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
