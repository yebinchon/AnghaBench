; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_can_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_can_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_qp = type { i32, %struct.TYPE_2__, %struct.qedr_dev* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.qedr_dev = type { i32 }
%struct.ib_send_wr = type { i64 }

@QEDR_MAX_SQE_ELEMENTS_PER_SQE = common dso_local global i64 0, align 8
@QEDR_QP_ERR_SQ_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"error: WQ is full. Post send on QP %p failed (this error appears only once)\0A\00", align 1
@QEDR_QP_ERR_BAD_SR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"error: WR is bad. Post send on QP %p failed (this error appears only once)\0A\00", align 1
@QEDR_QP_ERR_SQ_PBL_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"error: WQ PBL is full. Post send on QP %p failed (this error appears only once)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_qp*, %struct.ib_send_wr*)* @qedr_can_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_can_post_send(%struct.qedr_qp* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedr_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qedr_dev*, align 8
  store %struct.qedr_qp* %0, %struct.qedr_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  %10 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %11 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %10, i32 0, i32 2
  %12 = load %struct.qedr_dev*, %struct.qedr_dev** %11, align 8
  store %struct.qedr_dev* %12, %struct.qedr_dev** %9, align 8
  %13 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %14 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %17 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %15, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %23 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %22, i32 0, i32 1
  %24 = call i32 @qedr_wq_is_full(%struct.TYPE_2__* %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %26 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i64 @qed_chain_get_elem_left_u32(i32* %27)
  %29 = load i64, i64* @QEDR_MAX_SQE_ELEMENTS_PER_SQE, align 8
  %30 = icmp slt i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %37, %34, %2
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %45 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @QEDR_QP_ERR_SQ_FULL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %43
  %51 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %52 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %53 = call i32 @DP_ERR(%struct.qedr_dev* %51, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), %struct.qedr_qp* %52)
  %54 = load i32, i32* @QEDR_QP_ERR_SQ_FULL, align 4
  %55 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %56 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %50, %43, %40
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %64 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @QEDR_QP_ERR_BAD_SR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %62
  %70 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %71 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %72 = call i32 @DP_ERR(%struct.qedr_dev* %70, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), %struct.qedr_qp* %71)
  %73 = load i32, i32* @QEDR_QP_ERR_BAD_SR, align 4
  %74 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %75 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %69, %62, %59
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %83 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @QEDR_QP_ERR_SQ_PBL_FULL, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %81
  %89 = load %struct.qedr_dev*, %struct.qedr_dev** %9, align 8
  %90 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %91 = call i32 @DP_ERR(%struct.qedr_dev* %89, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), %struct.qedr_qp* %90)
  %92 = load i32, i32* @QEDR_QP_ERR_SQ_PBL_FULL, align 4
  %93 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %94 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %88, %81, %78
  store i32 0, i32* %3, align 4
  br label %99

98:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %97
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @qedr_wq_is_full(%struct.TYPE_2__*) #1

declare dso_local i64 @qed_chain_get_elem_left_u32(i32*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, %struct.qedr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
