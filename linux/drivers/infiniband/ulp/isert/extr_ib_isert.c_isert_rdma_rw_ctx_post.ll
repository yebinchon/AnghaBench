; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_rw_ctx_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_rdma_rw_ctx_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_cmd = type { i32, i32, i64, i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i64, %struct.se_cmd }
%struct.se_cmd = type { i32, i32, i32, i32 }
%struct.isert_conn = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_cqe = type { i32 }
%struct.ib_send_wr = type { i32 }
%struct.ib_sig_attrs = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Cmd: %p failed to prepare RDMA res\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Cmd: %p failed to post RDMA res\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_cmd*, %struct.isert_conn*, %struct.ib_cqe*, %struct.ib_send_wr*)* @isert_rdma_rw_ctx_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_rdma_rw_ctx_post(%struct.isert_cmd* %0, %struct.isert_conn* %1, %struct.ib_cqe* %2, %struct.ib_send_wr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.isert_cmd*, align 8
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca %struct.ib_cqe*, align 8
  %9 = alloca %struct.ib_send_wr*, align 8
  %10 = alloca %struct.se_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ib_sig_attrs, align 4
  store %struct.isert_cmd* %0, %struct.isert_cmd** %6, align 8
  store %struct.isert_conn* %1, %struct.isert_conn** %7, align 8
  store %struct.ib_cqe* %2, %struct.ib_cqe** %8, align 8
  store %struct.ib_send_wr* %3, %struct.ib_send_wr** %9, align 8
  %18 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store %struct.se_cmd* %21, %struct.se_cmd** %10, align 8
  %22 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %23 = call i32 @target_reverse_dma_direction(%struct.se_cmd* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %25 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %122

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %13, align 4
  %42 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %43 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  br label %57

50:                                               ; preds = %34
  %51 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %52 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %57

57:                                               ; preds = %50, %38
  %58 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %59 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %60 = call i64 @isert_prot_cmd(%struct.isert_conn* %58, %struct.se_cmd* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %57
  %63 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %64 = call i32 @isert_set_sig_attrs(%struct.se_cmd* %63, %struct.ib_sig_attrs* %17)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %5, align 4
  br label %139

69:                                               ; preds = %62
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @WARN_ON_ONCE(i64 %70)
  %72 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %72, i32 0, i32 1
  %74 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %75 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %79 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %82 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %85 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %88 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i64, i64* %14, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @rdma_rw_ctx_signature_init(i32* %73, i32 %76, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, %struct.ib_sig_attrs* %17, i32 %90, i64 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  br label %112

94:                                               ; preds = %57
  %95 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %95, i32 0, i32 1
  %97 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %98 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %102 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  %105 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %15, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i64, i64* %14, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @rdma_rw_ctx_init(i32* %96, i32 %99, i32 %100, i32 %103, i32 %106, i64 %107, i32 %108, i64 %109, i32 %110)
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %94, %69
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %117 = call i32 @isert_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.isert_cmd* %116)
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %5, align 4
  br label %139

119:                                              ; preds = %112
  %120 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %121 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %33
  %123 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %124 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %123, i32 0, i32 1
  %125 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %126 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load %struct.ib_cqe*, %struct.ib_cqe** %8, align 8
  %130 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %131 = call i32 @rdma_rw_ctx_post(i32* %124, i32 %127, i32 %128, %struct.ib_cqe* %129, %struct.ib_send_wr* %130)
  store i32 %131, i32* %16, align 4
  %132 = load i32, i32* %16, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %122
  %135 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %136 = call i32 @isert_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.isert_cmd* %135)
  br label %137

137:                                              ; preds = %134, %122
  %138 = load i32, i32* %16, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %115, %67
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @target_reverse_dma_direction(%struct.se_cmd*) #1

declare dso_local i64 @isert_prot_cmd(%struct.isert_conn*, %struct.se_cmd*) #1

declare dso_local i32 @isert_set_sig_attrs(%struct.se_cmd*, %struct.ib_sig_attrs*) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @rdma_rw_ctx_signature_init(i32*, i32, i32, i32, i32, i32, i32, %struct.ib_sig_attrs*, i32, i64, i32) #1

declare dso_local i32 @rdma_rw_ctx_init(i32*, i32, i32, i32, i32, i64, i32, i64, i32) #1

declare dso_local i32 @isert_err(i8*, %struct.isert_cmd*) #1

declare dso_local i32 @rdma_rw_ctx_post(i32*, i32, i32, %struct.ib_cqe*, %struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
