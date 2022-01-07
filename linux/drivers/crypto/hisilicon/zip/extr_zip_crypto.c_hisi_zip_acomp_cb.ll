; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_acomp_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_acomp_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qp = type { i64, i32, i32, %struct.TYPE_5__*, %struct.hisi_zip_qp_ctx* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hisi_zip_qp_ctx = type { %struct.hisi_zip_req_q }
%struct.hisi_zip_req_q = type { %struct.hisi_zip_req* }
%struct.hisi_zip_req = type { i32, i32, i32, i32, %struct.acomp_req* }
%struct.acomp_req = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.hisi_zip_sqe = type { i32, i32, i32 }

@HZIP_BD_STATUS_M = common dso_local global i32 0, align 4
@HZIP_NC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%scompress fail in qp%u: %u, output: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_qp*, i8*)* @hisi_zip_acomp_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_zip_acomp_cb(%struct.hisi_qp* %0, i8* %1) #0 {
  %3 = alloca %struct.hisi_qp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_zip_sqe*, align 8
  %6 = alloca %struct.hisi_zip_qp_ctx*, align 8
  %7 = alloca %struct.hisi_zip_req_q*, align 8
  %8 = alloca %struct.hisi_zip_req*, align 8
  %9 = alloca %struct.acomp_req*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hisi_qp* %0, %struct.hisi_qp** %3, align 8
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.hisi_zip_sqe*
  store %struct.hisi_zip_sqe* %16, %struct.hisi_zip_sqe** %5, align 8
  %17 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %18 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %17, i32 0, i32 4
  %19 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %18, align 8
  store %struct.hisi_zip_qp_ctx* %19, %struct.hisi_zip_qp_ctx** %6, align 8
  %20 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %20, i32 0, i32 0
  store %struct.hisi_zip_req_q* %21, %struct.hisi_zip_req_q** %7, align 8
  %22 = load %struct.hisi_zip_req_q*, %struct.hisi_zip_req_q** %7, align 8
  %23 = getelementptr inbounds %struct.hisi_zip_req_q, %struct.hisi_zip_req_q* %22, i32 0, i32 0
  %24 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %23, align 8
  %25 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %5, align 8
  %26 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %24, i64 %28
  store %struct.hisi_zip_req* %29, %struct.hisi_zip_req** %8, align 8
  %30 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %8, align 8
  %31 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %30, i32 0, i32 4
  %32 = load %struct.acomp_req*, %struct.acomp_req** %31, align 8
  store %struct.acomp_req* %32, %struct.acomp_req** %9, align 8
  %33 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %34 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %33, i32 0, i32 3
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.device* %38, %struct.device** %10, align 8
  store i32 0, i32* %14, align 4
  %39 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %5, align 8
  %40 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HZIP_BD_STATUS_M, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %2
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @HZIP_NC_ERR, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.device*, %struct.device** %10, align 8
  %52 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %53 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %58 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %59 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %5, align 8
  %63 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(%struct.device* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %60, i32 %61, i32 %64)
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %50, %46, %2
  %69 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %5, align 8
  %70 = getelementptr inbounds %struct.hisi_zip_sqe, %struct.hisi_zip_sqe* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  %72 = load %struct.device*, %struct.device** %10, align 8
  %73 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %8, align 8
  %74 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %8, align 8
  %77 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @hisi_acc_sg_buf_unmap(%struct.device* %72, i32 %75, i32 %78)
  %80 = load %struct.device*, %struct.device** %10, align 8
  %81 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %8, align 8
  %82 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %8, align 8
  %85 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @hisi_acc_sg_buf_unmap(%struct.device* %80, i32 %83, i32 %86)
  %88 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %89 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %68
  %93 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  %94 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @TO_HEAD_SIZE(i32 %95)
  br label %98

97:                                               ; preds = %68
  br label %98

98:                                               ; preds = %97, %92
  %99 = phi i32 [ %96, %92 ], [ 0, %97 ]
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.acomp_req*, %struct.acomp_req** %9, align 8
  %104 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.acomp_req*, %struct.acomp_req** %9, align 8
  %106 = getelementptr inbounds %struct.acomp_req, %struct.acomp_req* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load %struct.acomp_req*, %struct.acomp_req** %9, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @acomp_request_complete(%struct.acomp_req* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %98
  %115 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %6, align 8
  %116 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %8, align 8
  %117 = call i32 @hisi_zip_remove_req(%struct.hisi_zip_qp_ctx* %115, %struct.hisi_zip_req* %116)
  ret void
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @hisi_acc_sg_buf_unmap(%struct.device*, i32, i32) #1

declare dso_local i32 @TO_HEAD_SIZE(i32) #1

declare dso_local i32 @acomp_request_complete(%struct.acomp_req*, i32) #1

declare dso_local i32 @hisi_zip_remove_req(%struct.hisi_zip_qp_ctx*, %struct.hisi_zip_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
