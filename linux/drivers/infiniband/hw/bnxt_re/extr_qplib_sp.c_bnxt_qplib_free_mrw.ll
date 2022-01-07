; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_free_mrw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_free_mrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_3__*, %struct.bnxt_qplib_rcfw* }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_qplib_rcfw = type { i32 }
%struct.bnxt_qplib_mrw = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cmdq_deallocate_key = type { i64, i8* }
%struct.creq_deallocate_key_resp = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"SP: Free a reserved lkey MRW\0A\00", align 1
@DEALLOCATE_KEY = common dso_local global i32 0, align 4
@CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE1 = common dso_local global i64 0, align 8
@CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2A = common dso_local global i64 0, align 8
@CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_free_mrw(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_mrw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_qplib_res*, align 8
  %5 = alloca %struct.bnxt_qplib_mrw*, align 8
  %6 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %7 = alloca %struct.cmdq_deallocate_key, align 8
  %8 = alloca %struct.creq_deallocate_key_resp, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %4, align 8
  store %struct.bnxt_qplib_mrw* %1, %struct.bnxt_qplib_mrw** %5, align 8
  %11 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %11, i32 0, i32 1
  %13 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %12, align 8
  store %struct.bnxt_qplib_rcfw* %13, %struct.bnxt_qplib_rcfw** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %15 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %4, align 8
  %20 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %89

24:                                               ; preds = %2
  %25 = load i32, i32* @DEALLOCATE_KEY, align 4
  %26 = load i32, i32* %9, align 4
  %27 = bitcast %struct.cmdq_deallocate_key* %7 to { i64, i8* }*
  %28 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %27, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @RCFW_CMD_PREP(i64 %29, i8* %31, i32 %25, i32 %26)
  %33 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %34 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.cmdq_deallocate_key, %struct.cmdq_deallocate_key* %7, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %38 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE1, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %24
  %43 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %44 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2A, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %50 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CMDQ_ALLOCATE_MRW_MRW_FLAGS_MW_TYPE2B, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48, %42, %24
  %55 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %56 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = getelementptr inbounds %struct.cmdq_deallocate_key, %struct.cmdq_deallocate_key* %7, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  br label %66

60:                                               ; preds = %48
  %61 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %62 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @cpu_to_le32(i32 %63)
  %65 = getelementptr inbounds %struct.cmdq_deallocate_key, %struct.cmdq_deallocate_key* %7, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %6, align 8
  %68 = bitcast %struct.cmdq_deallocate_key* %7 to i8*
  %69 = bitcast %struct.creq_deallocate_key_resp* %8 to i8*
  %70 = call i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw* %67, i8* %68, i8* %69, i32* null, i32 0)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %3, align 4
  br label %89

75:                                               ; preds = %66
  %76 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %77 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %4, align 8
  %83 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %82, i32 0, i32 0
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = load %struct.bnxt_qplib_mrw*, %struct.bnxt_qplib_mrw** %5, align 8
  %86 = getelementptr inbounds %struct.bnxt_qplib_mrw, %struct.bnxt_qplib_mrw* %85, i32 0, i32 3
  %87 = call i32 @bnxt_qplib_free_hwq(%struct.TYPE_3__* %84, %struct.TYPE_4__* %86)
  br label %88

88:                                               ; preds = %81, %75
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %73, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @RCFW_CMD_PREP(i64, i8*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @bnxt_qplib_rcfw_send_message(%struct.bnxt_qplib_rcfw*, i8*, i8*, i32*, i32) #1

declare dso_local i32 @bnxt_qplib_free_hwq(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
