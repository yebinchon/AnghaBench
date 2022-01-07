; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_create_user_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_create_user_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 (i32, i32)*, i32 (i32, %struct.qedr_create_qp_ureq*, %struct.qed_rdma_create_qp_out_params*)* }
%struct.qedr_create_qp_ureq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_rdma_create_qp_out_params = type { i32, i32 }
%struct.qedr_qp = type { i32, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.ib_qp_init_attr = type { i32 }
%struct.qed_rdma_create_qp_in_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qedr_pd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Problem copying data from user space\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"create qp: fatal fault. rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_pd*, %struct.ib_udata*, %struct.ib_qp_init_attr*)* @qedr_create_user_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_create_user_qp(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.ib_pd* %2, %struct.ib_udata* %3, %struct.ib_qp_init_attr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_qp*, align 8
  %9 = alloca %struct.ib_pd*, align 8
  %10 = alloca %struct.ib_udata*, align 8
  %11 = alloca %struct.ib_qp_init_attr*, align 8
  %12 = alloca %struct.qed_rdma_create_qp_in_params, align 4
  %13 = alloca %struct.qed_rdma_create_qp_out_params, align 4
  %14 = alloca %struct.qedr_pd*, align 8
  %15 = alloca %struct.qedr_create_qp_ureq, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %7, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %8, align 8
  store %struct.ib_pd* %2, %struct.ib_pd** %9, align 8
  store %struct.ib_udata* %3, %struct.ib_udata** %10, align 8
  store %struct.ib_qp_init_attr* %4, %struct.ib_qp_init_attr** %11, align 8
  %18 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %19 = call %struct.qedr_pd* @get_qedr_pd(%struct.ib_pd* %18)
  store %struct.qedr_pd* %19, %struct.qedr_pd** %14, align 8
  %20 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %21 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %20, i32 0, i32 2
  %22 = call i32 @rdma_protocol_roce(i32* %21, i32 1)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %17, align 4
  %25 = call i32 @memset(%struct.qedr_create_qp_ureq* %15, i32 0, i32 40)
  %26 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %27 = call i32 @ib_copy_from_udata(%struct.qedr_create_qp_ureq* %15, %struct.ib_udata* %26, i32 40)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %32 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %6, align 4
  br label %190

34:                                               ; preds = %5
  %35 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %36 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %37 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %38 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.qedr_create_qp_ureq, %struct.qedr_create_qp_ureq* %15, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.qedr_create_qp_ureq, %struct.qedr_create_qp_ureq* %15, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @qedr_init_user_queue(%struct.ib_udata* %35, %struct.qedr_dev* %36, %struct.TYPE_8__* %38, i32 %40, i32 %42, i32 0, i32 0, i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %6, align 4
  br label %190

49:                                               ; preds = %34
  %50 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %51 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %49
  %55 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %56 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %57 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %58 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.qedr_create_qp_ureq, %struct.qedr_create_qp_ureq* %15, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.qedr_create_qp_ureq, %struct.qedr_create_qp_ureq* %15, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @qedr_init_user_queue(%struct.ib_udata* %55, %struct.qedr_dev* %56, %struct.TYPE_8__* %58, i32 %60, i32 %62, i32 0, i32 0, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %6, align 4
  br label %190

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %49
  %71 = bitcast %struct.qed_rdma_create_qp_in_params* %12 to %struct.qedr_create_qp_ureq*
  %72 = call i32 @memset(%struct.qedr_create_qp_ureq* %71, i32 0, i32 40)
  %73 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %74 = load %struct.qedr_pd*, %struct.qedr_pd** %14, align 8
  %75 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %76 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %11, align 8
  %77 = bitcast %struct.qed_rdma_create_qp_in_params* %12 to %struct.qedr_create_qp_ureq*
  %78 = call i32 @qedr_init_common_qp_in_params(%struct.qedr_dev* %73, %struct.qedr_pd* %74, %struct.qedr_qp* %75, %struct.ib_qp_init_attr* %76, i32 0, %struct.qedr_create_qp_ureq* %77)
  %79 = getelementptr inbounds %struct.qedr_create_qp_ureq, %struct.qedr_create_qp_ureq* %15, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %12, i32 0, i32 5
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.qedr_create_qp_ureq, %struct.qedr_create_qp_ureq* %15, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %12, i32 0, i32 4
  store i32 %83, i32* %84, align 4
  %85 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %86 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %12, i32 0, i32 3
  store i32 %89, i32* %90, align 4
  %91 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %92 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %12, i32 0, i32 2
  store i32 %96, i32* %97, align 4
  %98 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %99 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %70
  %103 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %104 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %12, i32 0, i32 1
  store i32 %107, i32* %108, align 4
  %109 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %110 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %12, i32 0, i32 0
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %102, %70
  %117 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %118 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %117, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32 (i32, %struct.qedr_create_qp_ureq*, %struct.qed_rdma_create_qp_out_params*)*, i32 (i32, %struct.qedr_create_qp_ureq*, %struct.qed_rdma_create_qp_out_params*)** %120, align 8
  %122 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %123 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = bitcast %struct.qed_rdma_create_qp_in_params* %12 to %struct.qedr_create_qp_ureq*
  %126 = call i32 %121(i32 %124, %struct.qedr_create_qp_ureq* %125, %struct.qed_rdma_create_qp_out_params* %13)
  %127 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %128 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %130 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %116
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %17, align 4
  br label %185

136:                                              ; preds = %116
  %137 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %138 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %137, i32 0, i32 2
  %139 = call i64 @rdma_protocol_iwarp(i32* %138, i32 1)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %143 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %144 = call i32 @qedr_iwarp_populate_user_qp(%struct.qedr_dev* %142, %struct.qedr_qp* %143, %struct.qed_rdma_create_qp_out_params* %13)
  br label %145

145:                                              ; preds = %141, %136
  %146 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %13, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %149 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %13, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %153 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %155 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %156 = load %struct.ib_udata*, %struct.ib_udata** %10, align 8
  %157 = call i32 @qedr_copy_qp_uresp(%struct.qedr_dev* %154, %struct.qedr_qp* %155, %struct.ib_udata* %156)
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %145
  br label %165

161:                                              ; preds = %145
  %162 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %163 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %164 = call i32 @qedr_qp_user_print(%struct.qedr_dev* %162, %struct.qedr_qp* %163)
  store i32 0, i32* %6, align 4
  br label %190

165:                                              ; preds = %160
  %166 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %167 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32 (i32, i32)*, i32 (i32, i32)** %169, align 8
  %171 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %172 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %175 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 %170(i32 %173, i32 %176)
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %17, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %165
  %181 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %182 = load i32, i32* %17, align 4
  %183 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %181, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %180, %165
  br label %185

185:                                              ; preds = %184, %133
  %186 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %187 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %188 = call i32 @qedr_cleanup_user(%struct.qedr_dev* %186, %struct.qedr_qp* %187)
  %189 = load i32, i32* %17, align 4
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %185, %161, %67, %47, %30
  %191 = load i32, i32* %6, align 4
  ret i32 %191
}

declare dso_local %struct.qedr_pd* @get_qedr_pd(%struct.ib_pd*) #1

declare dso_local i32 @rdma_protocol_roce(i32*, i32) #1

declare dso_local i32 @memset(%struct.qedr_create_qp_ureq*, i32, i32) #1

declare dso_local i32 @ib_copy_from_udata(%struct.qedr_create_qp_ureq*, %struct.ib_udata*, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, ...) #1

declare dso_local i32 @qedr_init_user_queue(%struct.ib_udata*, %struct.qedr_dev*, %struct.TYPE_8__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qedr_init_common_qp_in_params(%struct.qedr_dev*, %struct.qedr_pd*, %struct.qedr_qp*, %struct.ib_qp_init_attr*, i32, %struct.qedr_create_qp_ureq*) #1

declare dso_local i64 @rdma_protocol_iwarp(i32*, i32) #1

declare dso_local i32 @qedr_iwarp_populate_user_qp(%struct.qedr_dev*, %struct.qedr_qp*, %struct.qed_rdma_create_qp_out_params*) #1

declare dso_local i32 @qedr_copy_qp_uresp(%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_udata*) #1

declare dso_local i32 @qedr_qp_user_print(%struct.qedr_dev*, %struct.qedr_qp*) #1

declare dso_local i32 @qedr_cleanup_user(%struct.qedr_dev*, %struct.qedr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
