; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32, i32 }
%struct.ib_srq_init_attr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_udata = type { i32 }
%struct.qed_rdma_destroy_srq_in_params = type { i32 }
%struct.qed_rdma_create_srq_in_params = type { i8*, i8*, i8*, i8*, i32 }
%struct.qedr_dev = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (i32, %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_out_params*)*, i32 (i32, %struct.qed_rdma_destroy_srq_in_params*)* }
%struct.qed_rdma_create_srq_out_params = type { i32 }
%struct.qedr_pd = type { i32 }
%struct.qedr_create_srq_ureq = type { i32 }
%struct.qedr_srq_hwq_info = type { i8*, %struct.qed_chain, i32, i32 }
%struct.qed_chain = type { i32 }
%struct.qedr_srq = type { i32, %struct.TYPE_9__, i32, %struct.qedr_srq_hwq_info, %struct.qedr_dev* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@QEDR_MSG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"create SRQ called from %s (pd %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"User lib\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"create srq: problem copying data from user space\0A\00", align 1
@PAGE_SIZE = common dso_local global i8* null, align 8
@QED_CHAIN_PAGE_SIZE = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@QEDR_MSG_SRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"create srq: created srq with srq_id=0x%0x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_create_srq(%struct.ib_srq* %0, %struct.ib_srq_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_srq*, align 8
  %6 = alloca %struct.ib_srq_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.qed_rdma_destroy_srq_in_params, align 4
  %9 = alloca %struct.qed_rdma_create_srq_in_params, align 8
  %10 = alloca %struct.qedr_dev*, align 8
  %11 = alloca %struct.qed_rdma_create_srq_out_params, align 4
  %12 = alloca %struct.qedr_pd*, align 8
  %13 = alloca %struct.qedr_create_srq_ureq, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.qedr_srq_hwq_info*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.qedr_srq*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.qed_chain*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %5, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %22 = bitcast %struct.qed_rdma_create_srq_in_params* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 40, i1 false)
  %23 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %24 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.qedr_dev* @get_qedr_dev(i32 %25)
  store %struct.qedr_dev* %26, %struct.qedr_dev** %10, align 8
  %27 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %28 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.qedr_pd* @get_qedr_pd(i32 %29)
  store %struct.qedr_pd* %30, %struct.qedr_pd** %12, align 8
  %31 = bitcast %struct.qedr_create_srq_ureq* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %31, i8 0, i64 4, i1 false)
  %32 = load %struct.ib_srq*, %struct.ib_srq** %5, align 8
  %33 = call %struct.qedr_srq* @get_qedr_srq(%struct.ib_srq* %32)
  store %struct.qedr_srq* %33, %struct.qedr_srq** %19, align 8
  store i32 0, i32* %20, align 4
  %34 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %35 = load i32, i32* @QEDR_MSG_QP, align 4
  %36 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %37 = icmp ne %struct.ib_udata* %36, null
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %40 = load %struct.qedr_pd*, %struct.qedr_pd** %12, align 8
  %41 = call i32 (%struct.qedr_dev*, i32, i8*, i8*, ...) @DP_DEBUG(%struct.qedr_dev* %34, i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39, %struct.qedr_pd* %40)
  %42 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %43 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %44 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %45 = call i32 @qedr_check_srq_params(%struct.qedr_dev* %42, %struct.ib_srq_init_attr* %43, %struct.ib_udata* %44)
  store i32 %45, i32* %20, align 4
  %46 = load i32, i32* %20, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %212

51:                                               ; preds = %3
  %52 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %53 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %54 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %53, i32 0, i32 4
  store %struct.qedr_dev* %52, %struct.qedr_dev** %54, align 8
  %55 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %56 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %55, i32 0, i32 3
  store %struct.qedr_srq_hwq_info* %56, %struct.qedr_srq_hwq_info** %16, align 8
  %57 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %58 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %57, i32 0, i32 2
  %59 = call i32 @spin_lock_init(i32* %58)
  %60 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %61 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %16, align 8
  %65 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %16, align 8
  %71 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %73 = icmp ne %struct.ib_udata* %72, null
  br i1 %73, label %74, label %104

74:                                               ; preds = %51
  %75 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %76 = call i64 @ib_copy_from_udata(%struct.qedr_create_srq_ureq* %13, %struct.ib_udata* %75, i32 4)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %80 = call i32 @DP_ERR(%struct.qedr_dev* %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %209

81:                                               ; preds = %74
  %82 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %83 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %84 = call i32 @qedr_init_srq_user_params(%struct.ib_udata* %82, %struct.qedr_srq* %83, %struct.qedr_create_srq_ureq* %13, i32 0, i32 0)
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %209

88:                                               ; preds = %81
  %89 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %90 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %17, align 8
  %94 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %95 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %14, align 8
  %100 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %16, align 8
  %101 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %15, align 8
  %103 = load i8*, i8** @PAGE_SIZE, align 8
  store i8* %103, i8** %18, align 8
  br label %123

104:                                              ; preds = %51
  %105 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %106 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %107 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %6, align 8
  %108 = call i32 @qedr_alloc_srq_kernel_params(%struct.qedr_srq* %105, %struct.qedr_dev* %106, %struct.ib_srq_init_attr* %107)
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %209

112:                                              ; preds = %104
  %113 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %16, align 8
  %114 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %113, i32 0, i32 1
  store %struct.qed_chain* %114, %struct.qed_chain** %21, align 8
  %115 = load %struct.qed_chain*, %struct.qed_chain** %21, align 8
  %116 = call i8* @qed_chain_get_page_cnt(%struct.qed_chain* %115)
  store i8* %116, i8** %17, align 8
  %117 = load %struct.qed_chain*, %struct.qed_chain** %21, align 8
  %118 = call i8* @qed_chain_get_pbl_phys(%struct.qed_chain* %117)
  store i8* %118, i8** %14, align 8
  %119 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %16, align 8
  %120 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %15, align 8
  %122 = load i8*, i8** @QED_CHAIN_PAGE_SIZE, align 8
  store i8* %122, i8** %18, align 8
  br label %123

123:                                              ; preds = %112, %88
  %124 = load %struct.qedr_pd*, %struct.qedr_pd** %12, align 8
  %125 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %9, i32 0, i32 4
  store i32 %126, i32* %127, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %9, i32 0, i32 3
  store i8* %128, i8** %129, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %9, i32 0, i32 2
  store i8* %130, i8** %131, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %9, i32 0, i32 1
  store i8* %132, i8** %133, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %9, i32 0, i32 0
  store i8* %134, i8** %135, align 8
  %136 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %137 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %136, i32 0, i32 1
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32 (i32, %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_out_params*)*, i32 (i32, %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_out_params*)** %139, align 8
  %141 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %142 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 %140(i32 %143, %struct.qed_rdma_create_srq_in_params* %9, %struct.qed_rdma_create_srq_out_params* %11)
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %20, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %123
  br label %199

148:                                              ; preds = %123
  %149 = getelementptr inbounds %struct.qed_rdma_create_srq_out_params, %struct.qed_rdma_create_srq_out_params* %11, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %152 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %154 = icmp ne %struct.ib_udata* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %157 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %158 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %159 = call i32 @qedr_copy_srq_uresp(%struct.qedr_dev* %156, %struct.qedr_srq* %157, %struct.ib_udata* %158)
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %185

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163, %148
  %165 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %166 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %165, i32 0, i32 2
  %167 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %168 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %171 = load i32, i32* @GFP_KERNEL, align 4
  %172 = call i32 @xa_insert_irq(i32* %166, i32 %169, %struct.qedr_srq* %170, i32 %171)
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %164
  br label %185

176:                                              ; preds = %164
  %177 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %178 = load i32, i32* @QEDR_MSG_SRQ, align 4
  %179 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %180 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = call i32 (%struct.qedr_dev*, i32, i8*, i8*, ...) @DP_DEBUG(%struct.qedr_dev* %177, i32 %178, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %183)
  store i32 0, i32* %4, align 4
  br label %212

185:                                              ; preds = %175, %162
  %186 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %187 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.qed_rdma_destroy_srq_in_params, %struct.qed_rdma_destroy_srq_in_params* %8, i32 0, i32 0
  store i32 %188, i32* %189, align 4
  %190 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %191 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %190, i32 0, i32 1
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  %194 = load i32 (i32, %struct.qed_rdma_destroy_srq_in_params*)*, i32 (i32, %struct.qed_rdma_destroy_srq_in_params*)** %193, align 8
  %195 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %196 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 %194(i32 %197, %struct.qed_rdma_destroy_srq_in_params* %8)
  br label %199

199:                                              ; preds = %185, %147
  %200 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %201 = icmp ne %struct.ib_udata* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %204 = call i32 @qedr_free_srq_user_params(%struct.qedr_srq* %203)
  br label %208

205:                                              ; preds = %199
  %206 = load %struct.qedr_srq*, %struct.qedr_srq** %19, align 8
  %207 = call i32 @qedr_free_srq_kernel_params(%struct.qedr_srq* %206)
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %111, %87, %78
  %210 = load i32, i32* @EFAULT, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %209, %176, %48
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #2

declare dso_local %struct.qedr_pd* @get_qedr_pd(i32) #2

declare dso_local %struct.qedr_srq* @get_qedr_srq(%struct.ib_srq*) #2

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i8*, ...) #2

declare dso_local i32 @qedr_check_srq_params(%struct.qedr_dev*, %struct.ib_srq_init_attr*, %struct.ib_udata*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i64 @ib_copy_from_udata(%struct.qedr_create_srq_ureq*, %struct.ib_udata*, i32) #2

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*) #2

declare dso_local i32 @qedr_init_srq_user_params(%struct.ib_udata*, %struct.qedr_srq*, %struct.qedr_create_srq_ureq*, i32, i32) #2

declare dso_local i32 @qedr_alloc_srq_kernel_params(%struct.qedr_srq*, %struct.qedr_dev*, %struct.ib_srq_init_attr*) #2

declare dso_local i8* @qed_chain_get_page_cnt(%struct.qed_chain*) #2

declare dso_local i8* @qed_chain_get_pbl_phys(%struct.qed_chain*) #2

declare dso_local i32 @qedr_copy_srq_uresp(%struct.qedr_dev*, %struct.qedr_srq*, %struct.ib_udata*) #2

declare dso_local i32 @xa_insert_irq(i32*, i32, %struct.qedr_srq*, i32) #2

declare dso_local i32 @qedr_free_srq_user_params(%struct.qedr_srq*) #2

declare dso_local i32 @qedr_free_srq_kernel_params(%struct.qedr_srq*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
