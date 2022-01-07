; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_create_qp_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_verbs.c_ib_create_qp_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, i32, i32, i32, %struct.TYPE_12__*, i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_pd = type { i32, %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.ib_qp_init_attr = type { i32, i64, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i32, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.ib_device* }
%struct.ib_udata = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_QP_CREATE_INTEGRITY_EN = common dso_local global i32 0, align 4
@IB_DEVICE_INTEGRITY_HANDOVER = common dso_local global i32 0, align 4
@IB_QPT_XRC_TGT = common dso_local global i64 0, align 8
@IB_QPT_XRC_INI = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @ib_create_qp_user(%struct.ib_pd* %0, %struct.ib_qp_init_attr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.ib_device*, align 8
  %9 = alloca %struct.ib_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_qp*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %12 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %13 = icmp ne %struct.ib_pd* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %16 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %15, i32 0, i32 1
  %17 = load %struct.ib_device*, %struct.ib_device** %16, align 8
  br label %24

18:                                               ; preds = %3
  %19 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %19, i32 0, i32 9
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.ib_device*, %struct.ib_device** %22, align 8
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi %struct.ib_device* [ %17, %14 ], [ %23, %18 ]
  store %struct.ib_device* %25, %struct.ib_device** %8, align 8
  %26 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %27 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %26, i32 0, i32 3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %32 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %31, i32 0, i32 6
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = icmp ne %struct.TYPE_9__* %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  %36 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %36, i32 0, i32 5
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %42 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %48 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %40, %35, %30
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.ib_qp* @ERR_PTR(i32 %54)
  store %struct.ib_qp* %55, %struct.ib_qp** %4, align 8
  br label %282

56:                                               ; preds = %46, %24
  %57 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %58 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IB_QP_CREATE_INTEGRITY_EN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  %64 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %65 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IB_DEVICE_INTEGRITY_HANDOVER, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %63
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  %74 = call %struct.ib_qp* @ERR_PTR(i32 %73)
  store %struct.ib_qp* %74, %struct.ib_qp** %4, align 8
  br label %282

75:                                               ; preds = %63, %56
  %76 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %77 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %83 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %84 = call i32 @rdma_rw_init_qp(%struct.ib_device* %82, %struct.ib_qp_init_attr* %83)
  br label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %87 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %88 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %89 = call %struct.ib_qp* @_ib_create_qp(%struct.ib_device* %86, %struct.ib_pd* %87, %struct.ib_qp_init_attr* %88, i32* null, i32* null)
  store %struct.ib_qp* %89, %struct.ib_qp** %9, align 8
  %90 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %91 = call i64 @IS_ERR(%struct.ib_qp* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  store %struct.ib_qp* %94, %struct.ib_qp** %4, align 8
  br label %282

95:                                               ; preds = %85
  %96 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %97 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %98 = call i32 @ib_create_qp_security(%struct.ib_qp* %96, %struct.ib_device* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %277

102:                                              ; preds = %95
  %103 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %107 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %109 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %108, i32 0, i32 3
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %112 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %111, i32 0, i32 4
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %112, align 8
  %113 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %114 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %113, i32 0, i32 16
  %115 = call i32 @atomic_set(i32* %114, i32 0)
  %116 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %117 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %116, i32 0, i32 15
  store i64 0, i64* %117, align 8
  %118 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %119 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %118, i32 0, i32 14
  %120 = call i32 @spin_lock_init(i32* %119)
  %121 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %122 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %121, i32 0, i32 13
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %125 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %124, i32 0, i32 12
  %126 = call i32 @INIT_LIST_HEAD(i32* %125)
  %127 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %128 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %127, i32 0, i32 11
  store i64 0, i64* %128, align 8
  %129 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %130 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @IB_QPT_XRC_TGT, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %102
  %135 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %136 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %137 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %138 = call %struct.ib_qp* @create_xrc_qp_user(%struct.ib_qp* %135, %struct.ib_qp_init_attr* %136, %struct.ib_udata* %137)
  store %struct.ib_qp* %138, %struct.ib_qp** %11, align 8
  %139 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %140 = call i64 @IS_ERR(%struct.ib_qp* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %144 = call i32 @PTR_ERR(%struct.ib_qp* %143)
  store i32 %144, i32* %10, align 4
  br label %277

145:                                              ; preds = %134
  %146 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  store %struct.ib_qp* %146, %struct.ib_qp** %4, align 8
  br label %282

147:                                              ; preds = %102
  %148 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %149 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %148, i32 0, i32 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %152 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 4
  %153 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %154 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %157 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %156, i32 0, i32 9
  store i32 %155, i32* %157, align 8
  %158 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %159 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @IB_QPT_XRC_INI, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %147
  %164 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %165 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %164, i32 0, i32 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %165, align 8
  %166 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %167 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %166, i32 0, i32 7
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %167, align 8
  br label %201

168:                                              ; preds = %147
  %169 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %170 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %169, i32 0, i32 6
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %173 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %172, i32 0, i32 8
  store %struct.TYPE_9__* %171, %struct.TYPE_9__** %173, align 8
  %174 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %175 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %174, i32 0, i32 6
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = icmp ne %struct.TYPE_9__* %176, null
  br i1 %177, label %178, label %184

178:                                              ; preds = %168
  %179 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %180 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %179, i32 0, i32 6
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = call i32 @atomic_inc(i32* %182)
  br label %184

184:                                              ; preds = %178, %168
  %185 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %186 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %185, i32 0, i32 5
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %189 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %188, i32 0, i32 7
  store %struct.TYPE_10__* %187, %struct.TYPE_10__** %189, align 8
  %190 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %191 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %190, i32 0, i32 7
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = icmp ne %struct.TYPE_10__* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %184
  %195 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %196 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %195, i32 0, i32 5
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  %199 = call i32 @atomic_inc(i32* %198)
  br label %200

200:                                              ; preds = %194, %184
  br label %201

201:                                              ; preds = %200, %163
  %202 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %203 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %202, i32 0, i32 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %206 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %205, i32 0, i32 6
  store %struct.TYPE_11__* %204, %struct.TYPE_11__** %206, align 8
  %207 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %208 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %207, i32 0, i32 5
  store i32* null, i32** %208, align 8
  %209 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %210 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %209, i32 0, i32 0
  %211 = call i32 @atomic_inc(i32* %210)
  %212 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %213 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %212, i32 0, i32 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = icmp ne %struct.TYPE_11__* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %201
  %217 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %218 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %217, i32 0, i32 4
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = call i32 @atomic_inc(i32* %220)
  br label %222

222:                                              ; preds = %216, %201
  %223 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %224 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %223, i32 0, i32 3
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = icmp ne %struct.TYPE_12__* %225, null
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %229 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %228, i32 0, i32 4
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 0
  %232 = call i32 @atomic_inc(i32* %231)
  br label %233

233:                                              ; preds = %227, %222
  %234 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %235 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %233
  %240 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %241 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %242 = call i32 @rdma_rw_init_mrs(%struct.ib_qp* %240, %struct.ib_qp_init_attr* %241)
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %10, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %239
  br label %277

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246, %233
  %248 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %249 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %253 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 8
  %254 = load i32, i32* @u32, align 4
  %255 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %256 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.ib_device*, %struct.ib_device** %8, align 8
  %260 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @min_t(i32 %254, i32 %258, i32 %262)
  %264 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %265 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %264, i32 0, i32 2
  store i32 %263, i32* %265, align 4
  %266 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %267 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @IB_QP_CREATE_INTEGRITY_EN, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %247
  %273 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %274 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %273, i32 0, i32 1
  store i32 1, i32* %274, align 8
  br label %275

275:                                              ; preds = %272, %247
  %276 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  store %struct.ib_qp* %276, %struct.ib_qp** %4, align 8
  br label %282

277:                                              ; preds = %245, %142, %101
  %278 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %279 = call i32 @ib_destroy_qp(%struct.ib_qp* %278)
  %280 = load i32, i32* %10, align 4
  %281 = call %struct.ib_qp* @ERR_PTR(i32 %280)
  store %struct.ib_qp* %281, %struct.ib_qp** %4, align 8
  br label %282

282:                                              ; preds = %277, %275, %145, %93, %71, %52
  %283 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  ret %struct.ib_qp* %283
}

declare dso_local %struct.ib_qp* @ERR_PTR(i32) #1

declare dso_local i32 @rdma_rw_init_qp(%struct.ib_device*, %struct.ib_qp_init_attr*) #1

declare dso_local %struct.ib_qp* @_ib_create_qp(%struct.ib_device*, %struct.ib_pd*, %struct.ib_qp_init_attr*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ib_qp*) #1

declare dso_local i32 @ib_create_qp_security(%struct.ib_qp*, %struct.ib_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.ib_qp* @create_xrc_qp_user(%struct.ib_qp*, %struct.ib_qp_init_attr*, %struct.ib_udata*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_qp*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rdma_rw_init_mrs(%struct.ib_qp*, %struct.ib_qp_init_attr*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @ib_destroy_qp(%struct.ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
