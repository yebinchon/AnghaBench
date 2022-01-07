; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_do_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/zip/extr_zip_crypto.c_hisi_zip_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_zip_req = type { i32, i8*, i32, i8*, i32, i32, i32, i8*, i8* }
%struct.hisi_zip_qp_ctx = type { %struct.hisi_acc_sgl_pool, %struct.hisi_qp*, %struct.hisi_zip_sqe }
%struct.hisi_acc_sgl_pool = type { i32 }
%struct.hisi_qp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hisi_zip_sqe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@HZIP_SGL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_zip_req*, %struct.hisi_zip_qp_ctx*)* @hisi_zip_do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_zip_do_work(%struct.hisi_zip_req* %0, %struct.hisi_zip_qp_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_zip_req*, align 8
  %5 = alloca %struct.hisi_zip_qp_ctx*, align 8
  %6 = alloca %struct.hisi_zip_sqe*, align 8
  %7 = alloca %struct.hisi_qp*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hisi_acc_sgl_pool*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.hisi_zip_req* %0, %struct.hisi_zip_req** %4, align 8
  store %struct.hisi_zip_qp_ctx* %1, %struct.hisi_zip_qp_ctx** %5, align 8
  %13 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %13, i32 0, i32 2
  store %struct.hisi_zip_sqe* %14, %struct.hisi_zip_sqe** %6, align 8
  %15 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %15, i32 0, i32 1
  %17 = load %struct.hisi_qp*, %struct.hisi_qp** %16, align 8
  store %struct.hisi_qp* %17, %struct.hisi_qp** %7, align 8
  %18 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %19 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %8, align 8
  %24 = load %struct.hisi_zip_qp_ctx*, %struct.hisi_zip_qp_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.hisi_zip_qp_ctx, %struct.hisi_zip_qp_ctx* %24, i32 0, i32 0
  store %struct.hisi_acc_sgl_pool* %25, %struct.hisi_acc_sgl_pool** %9, align 8
  %26 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %27 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %2
  %31 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %32 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %37 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %42 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40, %35, %30, %2
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %151

48:                                               ; preds = %40
  %49 = load %struct.device*, %struct.device** %8, align 8
  %50 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %51 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %9, align 8
  %54 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %55 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 1
  %58 = call i8* @hisi_acc_sg_buf_map_to_hw_sgl(%struct.device* %49, i32 %52, %struct.hisi_acc_sgl_pool* %53, i32 %57, i8** %10)
  %59 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %60 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %62 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %48
  %67 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %68 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %3, align 4
  br label %151

71:                                               ; preds = %48
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %74 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load %struct.device*, %struct.device** %8, align 8
  %76 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %77 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.hisi_acc_sgl_pool*, %struct.hisi_acc_sgl_pool** %9, align 8
  %80 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %81 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 1
  %84 = add nsw i32 %83, 1
  %85 = call i8* @hisi_acc_sg_buf_map_to_hw_sgl(%struct.device* %75, i32 %78, %struct.hisi_acc_sgl_pool* %79, i32 %84, i8** %11)
  %86 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %87 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %89 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %88, i32 0, i32 3
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %71
  %94 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %95 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @PTR_ERR(i8* %96)
  store i32 %97, i32* %12, align 4
  br label %141

98:                                               ; preds = %71
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %101 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %100, i32 0, i32 7
  store i8* %99, i8** %101, align 8
  %102 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %6, align 8
  %103 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %104 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %109 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %112 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @hisi_zip_fill_sqe(%struct.hisi_zip_sqe* %102, i32 %105, i8* %106, i8* %107, i32 %110, i32 %113)
  %115 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %6, align 8
  %116 = load i32, i32* @HZIP_SGL, align 4
  %117 = call i32 @hisi_zip_config_buf_type(%struct.hisi_zip_sqe* %115, i32 %116)
  %118 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %6, align 8
  %119 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %120 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @hisi_zip_config_tag(%struct.hisi_zip_sqe* %118, i32 %121)
  %123 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %124 = load %struct.hisi_zip_sqe*, %struct.hisi_zip_sqe** %6, align 8
  %125 = call i32 @hisi_qp_send(%struct.hisi_qp* %123, %struct.hisi_zip_sqe* %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %98
  br label %132

129:                                              ; preds = %98
  %130 = load i32, i32* @EINPROGRESS, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %151

132:                                              ; preds = %128
  %133 = load %struct.device*, %struct.device** %8, align 8
  %134 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %135 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %138 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @hisi_acc_sg_buf_unmap(%struct.device* %133, i32 %136, i8* %139)
  br label %141

141:                                              ; preds = %132, %93
  %142 = load %struct.device*, %struct.device** %8, align 8
  %143 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %144 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.hisi_zip_req*, %struct.hisi_zip_req** %4, align 8
  %147 = getelementptr inbounds %struct.hisi_zip_req, %struct.hisi_zip_req* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @hisi_acc_sg_buf_unmap(%struct.device* %142, i32 %145, i8* %148)
  %150 = load i32, i32* %12, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %141, %129, %66, %45
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i8* @hisi_acc_sg_buf_map_to_hw_sgl(%struct.device*, i32, %struct.hisi_acc_sgl_pool*, i32, i8**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @hisi_zip_fill_sqe(%struct.hisi_zip_sqe*, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @hisi_zip_config_buf_type(%struct.hisi_zip_sqe*, i32) #1

declare dso_local i32 @hisi_zip_config_tag(%struct.hisi_zip_sqe*, i32) #1

declare dso_local i32 @hisi_qp_send(%struct.hisi_qp*, %struct.hisi_zip_sqe*) #1

declare dso_local i32 @hisi_acc_sg_buf_unmap(%struct.device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
