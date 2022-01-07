; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_alloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_alloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { %struct.ib_device* }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qedr_ucontext = type { i32, i32, i32, %struct.qedr_dev*, i32, i32, i32, i32 }
%struct.qedr_dev = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.qed_rdma_add_user_out_params*)* }
%struct.qed_rdma_add_user_out_params = type { i32, i32, i32, i32, i32 }
%struct.qedr_alloc_ucontext_resp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [259 x i8] c"failed to allocate a DPI for a new RoCE application, rc=%d. To overcome this consider to increase the number of DPIs, increase the doorbell BAR size or just close unnecessary RoCE applications. In order to increase the number of DPIs consult the qedr readme\0A\00", align 1
@QEDR_MAX_SQE_ELEMENTS_PER_SQE = common dso_local global i32 0, align 4
@QEDR_MAX_RQE_ELEMENTS_PER_RQE = common dso_local global i32 0, align 4
@QEDR_MAX_CQES = common dso_local global i32 0, align 4
@QEDR_MSG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Allocating user context %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_alloc_ucontext(%struct.ib_ucontext* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qedr_ucontext*, align 8
  %9 = alloca %struct.qedr_alloc_ucontext_resp, align 4
  %10 = alloca %struct.qedr_dev*, align 8
  %11 = alloca %struct.qed_rdma_add_user_out_params, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %12 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %13 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %12, i32 0, i32 0
  %14 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  store %struct.ib_device* %14, %struct.ib_device** %6, align 8
  %15 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %16 = call %struct.qedr_ucontext* @get_qedr_ucontext(%struct.ib_ucontext* %15)
  store %struct.qedr_ucontext* %16, %struct.qedr_ucontext** %8, align 8
  %17 = bitcast %struct.qedr_alloc_ucontext_resp* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 48, i1 false)
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = call %struct.qedr_dev* @get_qedr_dev(%struct.ib_device* %18)
  store %struct.qedr_dev* %19, %struct.qedr_dev** %10, align 8
  %20 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %21 = icmp ne %struct.ib_udata* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %135

25:                                               ; preds = %2
  %26 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %27 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.qed_rdma_add_user_out_params*)*, i32 (i32, %struct.qed_rdma_add_user_out_params*)** %29, align 8
  %31 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %32 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %30(i32 %33, %struct.qed_rdma_add_user_out_params* %11)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @DP_ERR(%struct.qedr_dev* %38, i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %135

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %11, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %46 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %11, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %50 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %11, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %54 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %11, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %58 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %60 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %59, i32 0, i32 5
  %61 = call i32 @INIT_LIST_HEAD(i32* %60)
  %62 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %63 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %62, i32 0, i32 4
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %66 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 11
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.qed_rdma_add_user_out_params, %struct.qed_rdma_add_user_out_params* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 10
  store i32 %71, i32* %72, align 4
  %73 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %74 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 9
  store i32 %75, i32* %76, align 4
  %77 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %78 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %82 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 7
  store i32 %84, i32* %85, align 4
  %86 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %87 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 6
  store i32 %89, i32* %90, align 4
  %91 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %92 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 5
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @QEDR_MAX_SQE_ELEMENTS_PER_SQE, align 4
  %97 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 4
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @QEDR_MAX_RQE_ELEMENTS_PER_RQE, align 4
  %99 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 3
  store i32 %98, i32* %99, align 4
  %100 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %101 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 2
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @QEDR_MAX_CQES, align 4
  %106 = getelementptr inbounds %struct.qedr_alloc_ucontext_resp, %struct.qedr_alloc_ucontext_resp* %9, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.ib_udata*, %struct.ib_udata** %5, align 8
  %108 = call i32 @qedr_ib_copy_to_udata(%struct.ib_udata* %107, %struct.qedr_alloc_ucontext_resp* %9, i32 48)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %42
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %3, align 4
  br label %135

113:                                              ; preds = %42
  %114 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %115 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %116 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %115, i32 0, i32 3
  store %struct.qedr_dev* %114, %struct.qedr_dev** %116, align 8
  %117 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %118 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %119 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %122 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @qedr_add_mmap(%struct.qedr_ucontext* %117, i32 %120, i32 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %135

129:                                              ; preds = %113
  %130 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %131 = load i32, i32* @QEDR_MSG_INIT, align 4
  %132 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %8, align 8
  %133 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %132, i32 0, i32 0
  %134 = call i32 @DP_DEBUG(%struct.qedr_dev* %130, i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %129, %127, %111, %37, %22
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.qedr_ucontext* @get_qedr_ucontext(%struct.ib_ucontext*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.qedr_dev* @get_qedr_dev(%struct.ib_device*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @qedr_ib_copy_to_udata(%struct.ib_udata*, %struct.qedr_alloc_ucontext_resp*, i32) #1

declare dso_local i32 @qedr_add_mmap(%struct.qedr_ucontext*, i32, i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
