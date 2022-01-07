; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_create_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucq_object = type { %struct.TYPE_11__, i32, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i32, %struct.ib_cq*, i32 }
%struct.ib_cq = type { %struct.TYPE_12__, i32, i32, i32*, i32, i32, %struct.TYPE_11__*, %struct.ib_device* }
%struct.TYPE_12__ = type { i32 }
%struct.ib_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.ib_cq*, %struct.ib_cq_init_attr*, i32*)* }
%struct.ib_cq_init_attr = type opaque
%struct.uverbs_attr_bundle = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ib_uverbs_ex_create_cq = type { i64, i64, i32, i32, i32 }
%struct.ib_uverbs_completion_event_file = type { %struct.TYPE_11__, i32, i32, i32, i64, i64 }
%struct.ib_uverbs_ex_create_cq_resp = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ib_cq_init_attr.0 = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UVERBS_OBJECT_CQ = common dso_local global i32 0, align 4
@ib_cq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ib_uverbs_comp_handler = common dso_local global i32 0, align 4
@ib_uverbs_cq_event_handler = common dso_local global i32 0, align 4
@RDMA_RESTRACK_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ucq_object* (%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_create_cq*)* @create_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ucq_object* @create_cq(%struct.uverbs_attr_bundle* %0, %struct.ib_uverbs_ex_create_cq* %1) #0 {
  %3 = alloca %struct.ib_ucq_object*, align 8
  %4 = alloca %struct.uverbs_attr_bundle*, align 8
  %5 = alloca %struct.ib_uverbs_ex_create_cq*, align 8
  %6 = alloca %struct.ib_ucq_object*, align 8
  %7 = alloca %struct.ib_uverbs_completion_event_file*, align 8
  %8 = alloca %struct.ib_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_uverbs_ex_create_cq_resp, align 4
  %11 = alloca %struct.ib_cq_init_attr.0, align 8
  %12 = alloca %struct.ib_device*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %4, align 8
  store %struct.ib_uverbs_ex_create_cq* %1, %struct.ib_uverbs_ex_create_cq** %5, align 8
  store %struct.ib_uverbs_completion_event_file* null, %struct.ib_uverbs_completion_event_file** %7, align 8
  %13 = bitcast %struct.ib_cq_init_attr.0* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.ib_uverbs_ex_create_cq*, %struct.ib_uverbs_ex_create_cq** %5, align 8
  %15 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %18 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %16, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.ib_uverbs_completion_event_file* @ERR_PTR(i32 %27)
  %29 = bitcast %struct.ib_uverbs_completion_event_file* %28 to %struct.ib_ucq_object*
  store %struct.ib_ucq_object* %29, %struct.ib_ucq_object** %3, align 8
  br label %208

30:                                               ; preds = %2
  %31 = load i32, i32* @UVERBS_OBJECT_CQ, align 4
  %32 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %33 = call i64 @uobj_alloc(i32 %31, %struct.uverbs_attr_bundle* %32, %struct.ib_device** %12)
  %34 = inttoptr i64 %33 to %struct.ib_ucq_object*
  store %struct.ib_ucq_object* %34, %struct.ib_ucq_object** %6, align 8
  %35 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %36 = bitcast %struct.ib_ucq_object* %35 to %struct.ib_uverbs_completion_event_file*
  %37 = call i64 @IS_ERR(%struct.ib_uverbs_completion_event_file* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  store %struct.ib_ucq_object* %40, %struct.ib_ucq_object** %3, align 8
  br label %208

41:                                               ; preds = %30
  %42 = load %struct.ib_uverbs_ex_create_cq*, %struct.ib_uverbs_ex_create_cq** %5, align 8
  %43 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load %struct.ib_uverbs_ex_create_cq*, %struct.ib_uverbs_ex_create_cq** %5, align 8
  %48 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %51 = call %struct.ib_uverbs_completion_event_file* @ib_uverbs_lookup_comp_file(i64 %49, %struct.uverbs_attr_bundle* %50)
  store %struct.ib_uverbs_completion_event_file* %51, %struct.ib_uverbs_completion_event_file** %7, align 8
  %52 = load %struct.ib_uverbs_completion_event_file*, %struct.ib_uverbs_completion_event_file** %7, align 8
  %53 = call i64 @IS_ERR(%struct.ib_uverbs_completion_event_file* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.ib_uverbs_completion_event_file*, %struct.ib_uverbs_completion_event_file** %7, align 8
  %57 = call i32 @PTR_ERR(%struct.ib_uverbs_completion_event_file* %56)
  store i32 %57, i32* %9, align 4
  br label %200

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.ib_uverbs_ex_create_cq*, %struct.ib_uverbs_ex_create_cq** %5, align 8
  %61 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %64 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %67 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %69 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %71 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %70, i32 0, i32 3
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %74 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %73, i32 0, i32 2
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.ib_uverbs_ex_create_cq*, %struct.ib_uverbs_ex_create_cq** %5, align 8
  %77 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.ib_cq_init_attr.0, %struct.ib_cq_init_attr.0* %11, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load %struct.ib_uverbs_ex_create_cq*, %struct.ib_uverbs_ex_create_cq** %5, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.ib_cq_init_attr.0, %struct.ib_cq_init_attr.0* %11, i32 0, i32 0
  store i64 %82, i64* %83, align 8
  %84 = load %struct.ib_uverbs_ex_create_cq*, %struct.ib_uverbs_ex_create_cq** %5, align 8
  %85 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq, %struct.ib_uverbs_ex_create_cq* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.ib_cq_init_attr.0, %struct.ib_cq_init_attr.0* %11, i32 0, i32 1
  store i32 %86, i32* %87, align 8
  %88 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %89 = load i32, i32* @ib_cq, align 4
  %90 = call %struct.ib_cq* @rdma_zalloc_drv_obj(%struct.ib_device* %88, i32 %89)
  store %struct.ib_cq* %90, %struct.ib_cq** %8, align 8
  %91 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %92 = icmp ne %struct.ib_cq* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %59
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %188

96:                                               ; preds = %59
  %97 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %98 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %99 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %98, i32 0, i32 7
  store %struct.ib_device* %97, %struct.ib_device** %99, align 8
  %100 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %101 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %100, i32 0, i32 0
  %102 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %103 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %102, i32 0, i32 6
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %103, align 8
  %104 = load i32, i32* @ib_uverbs_comp_handler, align 4
  %105 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %106 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @ib_uverbs_cq_event_handler, align 4
  %108 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %109 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ib_uverbs_completion_event_file*, %struct.ib_uverbs_completion_event_file** %7, align 8
  %111 = icmp ne %struct.ib_uverbs_completion_event_file* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %96
  %113 = load %struct.ib_uverbs_completion_event_file*, %struct.ib_uverbs_completion_event_file** %7, align 8
  %114 = getelementptr inbounds %struct.ib_uverbs_completion_event_file, %struct.ib_uverbs_completion_event_file* %113, i32 0, i32 1
  br label %116

115:                                              ; preds = %96
  br label %116

116:                                              ; preds = %115, %112
  %117 = phi i32* [ %114, %112 ], [ null, %115 ]
  %118 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %119 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %118, i32 0, i32 3
  store i32* %117, i32** %119, align 8
  %120 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %121 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %120, i32 0, i32 2
  %122 = call i32 @atomic_set(i32* %121, i32 0)
  %123 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  %124 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32 (%struct.ib_cq*, %struct.ib_cq_init_attr*, i32*)*, i32 (%struct.ib_cq*, %struct.ib_cq_init_attr*, i32*)** %125, align 8
  %127 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %128 = bitcast %struct.ib_cq_init_attr.0* %11 to %struct.ib_cq_init_attr*
  %129 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %130 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %129, i32 0, i32 1
  %131 = call i32 %126(%struct.ib_cq* %127, %struct.ib_cq_init_attr* %128, i32* %130)
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  br label %185

135:                                              ; preds = %116
  %136 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %137 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %138 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  store %struct.ib_cq* %136, %struct.ib_cq** %139, align 8
  %140 = call i32 @memset(%struct.ib_uverbs_ex_create_cq_resp* %10, i32 0, i32 12)
  %141 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %142 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq_resp, %struct.ib_uverbs_ex_create_cq_resp* %10, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %148 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq_resp, %struct.ib_uverbs_ex_create_cq_resp* %10, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %153 = call i32 @uverbs_response_length(%struct.uverbs_attr_bundle* %152, i32 12)
  %154 = getelementptr inbounds %struct.ib_uverbs_ex_create_cq_resp, %struct.ib_uverbs_ex_create_cq_resp* %10, i32 0, i32 0
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @RDMA_RESTRACK_CQ, align 4
  %156 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %157 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  store i32 %155, i32* %158, align 8
  %159 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %160 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %159, i32 0, i32 0
  %161 = call i32 @rdma_restrack_uadd(%struct.TYPE_12__* %160)
  %162 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %163 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %162, %struct.ib_uverbs_ex_create_cq_resp* %10, i32 12)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %135
  br label %180

167:                                              ; preds = %135
  %168 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %169 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %168, i32 0, i32 0
  %170 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %171 = call i32 @uobj_alloc_commit(%struct.TYPE_11__* %169, %struct.uverbs_attr_bundle* %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i32, i32* %9, align 4
  %176 = call %struct.ib_uverbs_completion_event_file* @ERR_PTR(i32 %175)
  %177 = bitcast %struct.ib_uverbs_completion_event_file* %176 to %struct.ib_ucq_object*
  store %struct.ib_ucq_object* %177, %struct.ib_ucq_object** %3, align 8
  br label %208

178:                                              ; preds = %167
  %179 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  store %struct.ib_ucq_object* %179, %struct.ib_ucq_object** %3, align 8
  br label %208

180:                                              ; preds = %166
  %181 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %182 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %183 = call i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle* %182)
  %184 = call i32 @ib_destroy_cq_user(%struct.ib_cq* %181, i32 %183)
  store %struct.ib_cq* null, %struct.ib_cq** %8, align 8
  br label %185

185:                                              ; preds = %180, %134
  %186 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %187 = call i32 @kfree(%struct.ib_cq* %186)
  br label %188

188:                                              ; preds = %185, %93
  %189 = load %struct.ib_uverbs_completion_event_file*, %struct.ib_uverbs_completion_event_file** %7, align 8
  %190 = icmp ne %struct.ib_uverbs_completion_event_file* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %193 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = load %struct.ib_uverbs_completion_event_file*, %struct.ib_uverbs_completion_event_file** %7, align 8
  %196 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %197 = bitcast %struct.ib_ucq_object* %196 to %struct.ib_uverbs_completion_event_file*
  %198 = call i32 @ib_uverbs_release_ucq(%struct.TYPE_13__* %194, %struct.ib_uverbs_completion_event_file* %195, %struct.ib_uverbs_completion_event_file* %197)
  br label %199

199:                                              ; preds = %191, %188
  br label %200

200:                                              ; preds = %199, %55
  %201 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %6, align 8
  %202 = getelementptr inbounds %struct.ib_ucq_object, %struct.ib_ucq_object* %201, i32 0, i32 0
  %203 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %4, align 8
  %204 = call i32 @uobj_alloc_abort(%struct.TYPE_11__* %202, %struct.uverbs_attr_bundle* %203)
  %205 = load i32, i32* %9, align 4
  %206 = call %struct.ib_uverbs_completion_event_file* @ERR_PTR(i32 %205)
  %207 = bitcast %struct.ib_uverbs_completion_event_file* %206 to %struct.ib_ucq_object*
  store %struct.ib_ucq_object* %207, %struct.ib_ucq_object** %3, align 8
  br label %208

208:                                              ; preds = %200, %178, %174, %39, %25
  %209 = load %struct.ib_ucq_object*, %struct.ib_ucq_object** %3, align 8
  ret %struct.ib_ucq_object* %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ib_uverbs_completion_event_file* @ERR_PTR(i32) #2

declare dso_local i64 @uobj_alloc(i32, %struct.uverbs_attr_bundle*, %struct.ib_device**) #2

declare dso_local i64 @IS_ERR(%struct.ib_uverbs_completion_event_file*) #2

declare dso_local %struct.ib_uverbs_completion_event_file* @ib_uverbs_lookup_comp_file(i64, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @PTR_ERR(%struct.ib_uverbs_completion_event_file*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local %struct.ib_cq* @rdma_zalloc_drv_obj(%struct.ib_device*, i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @memset(%struct.ib_uverbs_ex_create_cq_resp*, i32, i32) #2

declare dso_local i32 @uverbs_response_length(%struct.uverbs_attr_bundle*, i32) #2

declare dso_local i32 @rdma_restrack_uadd(%struct.TYPE_12__*) #2

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_create_cq_resp*, i32) #2

declare dso_local i32 @uobj_alloc_commit(%struct.TYPE_11__*, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @ib_destroy_cq_user(%struct.ib_cq*, i32) #2

declare dso_local i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle*) #2

declare dso_local i32 @kfree(%struct.ib_cq*) #2

declare dso_local i32 @ib_uverbs_release_ucq(%struct.TYPE_13__*, %struct.ib_uverbs_completion_event_file*, %struct.ib_uverbs_completion_event_file*) #2

declare dso_local i32 @uobj_alloc_abort(%struct.TYPE_11__*, %struct.uverbs_attr_bundle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
