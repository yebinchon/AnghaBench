; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_recv_wr = type { %struct.ib_recv_wr*, i32, i32, i32 }
%struct.i40iw_qp = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i40iw_qp_uk }
%struct.i40iw_qp_uk = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.i40iw_qp_uk.0*, %struct.i40iw_post_rq_info*)* }
%struct.i40iw_qp_uk.0 = type opaque
%struct.i40iw_post_rq_info = type opaque
%struct.i40iw_post_rq_info.1 = type { %struct.i40iw_sge*, i32, i32 }
%struct.i40iw_sge = type { i32 }

@I40IW_MAX_WQ_FRAGMENT_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c" post_recv err %d\0A\00", align 1
@I40IW_ERR_QP_TOOMANY_WRS_POSTED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_recv_wr*, %struct.ib_recv_wr**)* @i40iw_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_post_recv(%struct.ib_qp* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.i40iw_qp*, align 8
  %8 = alloca %struct.i40iw_qp_uk*, align 8
  %9 = alloca %struct.i40iw_post_rq_info.1, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %15 = load i32, i32* @I40IW_MAX_WQ_FRAGMENT_COUNT, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.i40iw_sge, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %20 = bitcast %struct.ib_qp* %19 to %struct.i40iw_qp*
  store %struct.i40iw_qp* %20, %struct.i40iw_qp** %7, align 8
  %21 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %22 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.i40iw_qp_uk* %23, %struct.i40iw_qp_uk** %8, align 8
  %24 = call i32 @memset(%struct.i40iw_post_rq_info.1* %9, i32 0, i32 16)
  %25 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %26 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %13, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %30 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  br label %87

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %82, %36
  %38 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %39 = icmp ne %struct.ib_recv_wr* %38, null
  br i1 %39, label %40, label %86

40:                                               ; preds = %37
  %41 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %42 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.i40iw_post_rq_info.1, %struct.i40iw_post_rq_info.1* %9, i32 0, i32 2
  store i32 %43, i32* %44, align 4
  %45 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.i40iw_post_rq_info.1, %struct.i40iw_post_rq_info.1* %9, i32 0, i32 1
  store i32 %47, i32* %48, align 8
  %49 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %50 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %53 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @i40iw_copy_sg_list(%struct.i40iw_sge* %18, i32 %51, i32 %54)
  %56 = getelementptr inbounds %struct.i40iw_post_rq_info.1, %struct.i40iw_post_rq_info.1* %9, i32 0, i32 0
  store %struct.i40iw_sge* %18, %struct.i40iw_sge** %56, align 8
  %57 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %58 = getelementptr inbounds %struct.i40iw_qp_uk, %struct.i40iw_qp_uk* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.i40iw_qp_uk.0*, %struct.i40iw_post_rq_info*)*, i32 (%struct.i40iw_qp_uk.0*, %struct.i40iw_post_rq_info*)** %59, align 8
  %61 = load %struct.i40iw_qp_uk*, %struct.i40iw_qp_uk** %8, align 8
  %62 = bitcast %struct.i40iw_qp_uk* %61 to %struct.i40iw_qp_uk.0*
  %63 = bitcast %struct.i40iw_post_rq_info.1* %9 to %struct.i40iw_post_rq_info*
  %64 = call i32 %60(%struct.i40iw_qp_uk.0* %62, %struct.i40iw_post_rq_info* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %40
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @I40IW_ERR_QP_TOOMANY_WRS_POSTED, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %14, align 4
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %81 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %80, %struct.ib_recv_wr** %81, align 8
  br label %87

82:                                               ; preds = %40
  %83 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %84 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %83, i32 0, i32 0
  %85 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %84, align 8
  store %struct.ib_recv_wr* %85, %struct.ib_recv_wr** %5, align 8
  br label %37

86:                                               ; preds = %37
  br label %87

87:                                               ; preds = %86, %79, %33
  %88 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %89 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %88, i32 0, i32 0
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %14, align 4
  %93 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %93)
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.i40iw_post_rq_info.1*, i32, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @i40iw_copy_sg_list(%struct.i40iw_sge*, i32, i32) #2

declare dso_local i32 @i40iw_pr_err(i8*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
