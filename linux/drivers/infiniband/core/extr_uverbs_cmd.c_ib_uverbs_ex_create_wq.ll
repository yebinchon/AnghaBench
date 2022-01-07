; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_create_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_create_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32, i32 }
%struct.ib_uverbs_ex_create_wq = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.ib_uverbs_ex_create_wq_resp = type { i32, i32, i32, i32, i32 }
%struct.ib_uwq_object = type { %struct.TYPE_8__, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_7__*, %struct.ib_pd*, %struct.ib_pd*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i32, %struct.ib_wq* }
%struct.ib_wq = type { %struct.TYPE_8__, i32, %struct.TYPE_9__*, i32, i32, %struct.TYPE_7__*, %struct.ib_pd*, %struct.ib_pd*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)* }
%struct.ib_wq_init_attr = type { i32, i32, i32, i32, i32, i32, %struct.ib_pd* }
%struct.ib_pd = type { i32, %struct.TYPE_7__* }
%struct.ib_cq = type { i32, %struct.TYPE_7__* }
%struct.ib_device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@UVERBS_OBJECT_WQ = common dso_local global i32 0, align 4
@UVERBS_OBJECT_PD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVERBS_OBJECT_CQ = common dso_local global i32 0, align 4
@ib_uverbs_wq_event_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_ex_create_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_ex_create_wq(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_ex_create_wq, align 8
  %5 = alloca %struct.ib_uverbs_ex_create_wq_resp, align 4
  %6 = alloca %struct.ib_uwq_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_cq*, align 8
  %9 = alloca %struct.ib_pd*, align 8
  %10 = alloca %struct.ib_wq*, align 8
  %11 = alloca %struct.ib_wq_init_attr, align 8
  %12 = alloca %struct.ib_device*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %13 = bitcast %struct.ib_uverbs_ex_create_wq_resp* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 20, i1 false)
  store i32 0, i32* %7, align 4
  %14 = bitcast %struct.ib_wq_init_attr* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %16 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %15, %struct.ib_uverbs_ex_create_wq* %4, i32 32)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %217

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, %struct.ib_uverbs_ex_create_wq* %4, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %217

28:                                               ; preds = %21
  %29 = load i32, i32* @UVERBS_OBJECT_WQ, align 4
  %30 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %31 = call i64 @uobj_alloc(i32 %29, %struct.uverbs_attr_bundle* %30, %struct.ib_device** %12)
  %32 = inttoptr i64 %31 to %struct.ib_uwq_object*
  store %struct.ib_uwq_object* %32, %struct.ib_uwq_object** %6, align 8
  %33 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %34 = bitcast %struct.ib_uwq_object* %33 to %struct.ib_wq*
  %35 = call i64 @IS_ERR(%struct.ib_wq* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %39 = bitcast %struct.ib_uwq_object* %38 to %struct.ib_wq*
  %40 = call i32 @PTR_ERR(%struct.ib_wq* %39)
  store i32 %40, i32* %2, align 4
  br label %217

41:                                               ; preds = %28
  %42 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %43 = load i32, i32* @UVERBS_OBJECT_PD, align 4
  %44 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, %struct.ib_uverbs_ex_create_wq* %4, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %47 = call %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd* %42, i32 %43, i32 %45, %struct.uverbs_attr_bundle* %46)
  store %struct.ib_pd* %47, %struct.ib_pd** %9, align 8
  %48 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %49 = icmp ne %struct.ib_pd* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %210

53:                                               ; preds = %41
  %54 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %55 = bitcast %struct.ib_cq* %54 to %struct.ib_pd*
  %56 = load i32, i32* @UVERBS_OBJECT_CQ, align 4
  %57 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, %struct.ib_uverbs_ex_create_wq* %4, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %60 = call %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd* %55, i32 %56, i32 %58, %struct.uverbs_attr_bundle* %59)
  %61 = bitcast %struct.ib_pd* %60 to %struct.ib_cq*
  store %struct.ib_cq* %61, %struct.ib_cq** %8, align 8
  %62 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %63 = icmp ne %struct.ib_cq* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %53
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %207

67:                                               ; preds = %53
  %68 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %69 = bitcast %struct.ib_cq* %68 to %struct.ib_pd*
  %70 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 6
  store %struct.ib_pd* %69, %struct.ib_pd** %70, align 8
  %71 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, %struct.ib_uverbs_ex_create_wq* %4, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, %struct.ib_uverbs_ex_create_wq* %4, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %78 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 2
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, %struct.ib_uverbs_ex_create_wq* %4, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 3
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @ib_uverbs_wq_event_handler, align 4
  %85 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 5
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq, %struct.ib_uverbs_ex_create_wq* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 4
  store i32 %87, i32* %88, align 8
  %89 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %90 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %93 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  %96 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %97 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)*, %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)** %100, align 8
  %102 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %103 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %104 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %103, i32 0, i32 0
  %105 = call %struct.ib_wq* %101(%struct.ib_pd* %102, %struct.ib_wq_init_attr* %11, i32* %104)
  store %struct.ib_wq* %105, %struct.ib_wq** %10, align 8
  %106 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %107 = call i64 @IS_ERR(%struct.ib_wq* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %67
  %110 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %111 = call i32 @PTR_ERR(%struct.ib_wq* %110)
  store i32 %111, i32* %7, align 4
  br label %203

112:                                              ; preds = %67
  %113 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %114 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %117 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %116, i32 0, i32 2
  store %struct.TYPE_9__* %115, %struct.TYPE_9__** %117, align 8
  %118 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %119 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %120 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  store %struct.ib_wq* %118, %struct.ib_wq** %122, align 8
  %123 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %126 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %128 = bitcast %struct.ib_cq* %127 to %struct.ib_pd*
  %129 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %130 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %129, i32 0, i32 7
  store %struct.ib_pd* %128, %struct.ib_pd** %130, align 8
  %131 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %132 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %133 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %132, i32 0, i32 6
  store %struct.ib_pd* %131, %struct.ib_pd** %133, align 8
  %134 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %135 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %134, i32 0, i32 1
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %138 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %137, i32 0, i32 5
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %138, align 8
  %139 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %142 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 4
  %143 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %144 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %143, i32 0, i32 3
  %145 = call i32 @atomic_set(i32* %144, i32 0)
  %146 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %147 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %146, i32 0, i32 0
  %148 = call i32 @atomic_inc(i32* %147)
  %149 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %150 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %149, i32 0, i32 0
  %151 = call i32 @atomic_inc(i32* %150)
  %152 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %153 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %156 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %155, i32 0, i32 2
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %156, align 8
  %157 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %158 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %159 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  store %struct.ib_wq* %157, %struct.ib_wq** %161, align 8
  %162 = call i32 @memset(%struct.ib_uverbs_ex_create_wq_resp* %5, i32 0, i32 20)
  %163 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %164 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, %struct.ib_uverbs_ex_create_wq_resp* %5, i32 0, i32 4
  store i32 %167, i32* %168, align 4
  %169 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, %struct.ib_uverbs_ex_create_wq_resp* %5, i32 0, i32 3
  store i32 %170, i32* %171, align 4
  %172 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %11, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, %struct.ib_uverbs_ex_create_wq_resp* %5, i32 0, i32 2
  store i32 %173, i32* %174, align 4
  %175 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %176 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, %struct.ib_uverbs_ex_create_wq_resp* %5, i32 0, i32 1
  store i32 %177, i32* %178, align 4
  %179 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %180 = call i32 @uverbs_response_length(%struct.uverbs_attr_bundle* %179, i32 20)
  %181 = getelementptr inbounds %struct.ib_uverbs_ex_create_wq_resp, %struct.ib_uverbs_ex_create_wq_resp* %5, i32 0, i32 0
  store i32 %180, i32* %181, align 4
  %182 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %183 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %182, %struct.ib_uverbs_ex_create_wq_resp* %5, i32 20)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %112
  br label %198

187:                                              ; preds = %112
  %188 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %189 = call i32 @uobj_put_obj_read(%struct.ib_pd* %188)
  %190 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %191 = bitcast %struct.ib_cq* %190 to %struct.ib_pd*
  %192 = call i32 @uobj_put_obj_read(%struct.ib_pd* %191)
  %193 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %194 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %197 = call i32 @uobj_alloc_commit(%struct.TYPE_9__* %195, %struct.uverbs_attr_bundle* %196)
  store i32 %197, i32* %2, align 4
  br label %217

198:                                              ; preds = %186
  %199 = load %struct.ib_wq*, %struct.ib_wq** %10, align 8
  %200 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %201 = call i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle* %200)
  %202 = call i32 @ib_destroy_wq(%struct.ib_wq* %199, i32 %201)
  br label %203

203:                                              ; preds = %198, %109
  %204 = load %struct.ib_cq*, %struct.ib_cq** %8, align 8
  %205 = bitcast %struct.ib_cq* %204 to %struct.ib_pd*
  %206 = call i32 @uobj_put_obj_read(%struct.ib_pd* %205)
  br label %207

207:                                              ; preds = %203, %64
  %208 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %209 = call i32 @uobj_put_obj_read(%struct.ib_pd* %208)
  br label %210

210:                                              ; preds = %207, %50
  %211 = load %struct.ib_uwq_object*, %struct.ib_uwq_object** %6, align 8
  %212 = getelementptr inbounds %struct.ib_uwq_object, %struct.ib_uwq_object* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %215 = call i32 @uobj_alloc_abort(%struct.TYPE_9__* %213, %struct.uverbs_attr_bundle* %214)
  %216 = load i32, i32* %7, align 4
  store i32 %216, i32* %2, align 4
  br label %217

217:                                              ; preds = %210, %187, %37, %25, %19
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_create_wq*, i32) #2

declare dso_local i64 @uobj_alloc(i32, %struct.uverbs_attr_bundle*, %struct.ib_device**) #2

declare dso_local i64 @IS_ERR(%struct.ib_wq*) #2

declare dso_local i32 @PTR_ERR(%struct.ib_wq*) #2

declare dso_local %struct.ib_pd* @uobj_get_obj_read(%struct.ib_pd*, i32, i32, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @memset(%struct.ib_uverbs_ex_create_wq_resp*, i32, i32) #2

declare dso_local i32 @uverbs_response_length(%struct.uverbs_attr_bundle*, i32) #2

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_ex_create_wq_resp*, i32) #2

declare dso_local i32 @uobj_put_obj_read(%struct.ib_pd*) #2

declare dso_local i32 @uobj_alloc_commit(%struct.TYPE_9__*, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @ib_destroy_wq(%struct.ib_wq*, i32) #2

declare dso_local i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle*) #2

declare dso_local i32 @uobj_alloc_abort(%struct.TYPE_9__*, %struct.uverbs_attr_bundle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
