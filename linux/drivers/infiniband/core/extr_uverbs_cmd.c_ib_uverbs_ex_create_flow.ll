; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_create_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_ex_create_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_create_flow = type { %struct.ib_uverbs_flow_attr, i32, i64 }
%struct.ib_uverbs_flow_attr = type { i32, i64, i32, i32, %struct.ib_uverbs_flow_spec_hdr*, i32, i32, i64* }
%struct.ib_uverbs_flow_spec_hdr = type { i32 }
%struct.ib_uverbs_create_flow_resp = type { i32 }
%struct.ib_uobject = type { i32 }
%struct.ib_flow = type { i32 }
%struct.ib_flow_attr = type { i32, i64, i32, i32, %struct.ib_uverbs_flow_spec_hdr*, i32, i32, i64* }
%struct.ib_qp = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ib_uobject*)*, %struct.ib_uobject* (%struct.ib_qp*, %struct.ib_uverbs_flow_attr*, i32, i32*)* }
%struct.ib_uflow_resources = type { i32 }
%struct.uverbs_req_iter = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_uverbs_flow_spec = type { i32 }
%union.ib_flow_spec = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_FLAGS_RESERVED = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_FLAGS_DONT_TRAP = common dso_local global i32 0, align 4
@IB_FLOW_ATTR_ALL_DEFAULT = common dso_local global i64 0, align 8
@IB_FLOW_ATTR_MC_DEFAULT = common dso_local global i64 0, align 8
@IB_FLOW_SPEC_SUPPORT_LAYERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVERBS_OBJECT_FLOW = common dso_local global i32 0, align 4
@UVERBS_OBJECT_QP = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_QPT_RAW_PACKET = common dso_local global i64 0, align 8
@flows = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"create flow failed, flow %d: %d bytes left from uverb cmd\0A\00", align 1
@IB_FLOW_DOMAIN_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_ex_create_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_ex_create_flow(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_create_flow, align 8
  %5 = alloca %struct.ib_uverbs_create_flow_resp, align 4
  %6 = alloca %struct.ib_uobject*, align 8
  %7 = alloca %struct.ib_flow*, align 8
  %8 = alloca %struct.ib_uverbs_flow_attr*, align 8
  %9 = alloca %struct.ib_flow_attr*, align 8
  %10 = alloca %struct.ib_qp*, align 8
  %11 = alloca %struct.ib_uflow_resources*, align 8
  %12 = alloca %struct.ib_uverbs_flow_spec_hdr*, align 8
  %13 = alloca %struct.uverbs_req_iter, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ib_device*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %18 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %19 = call i32 @uverbs_request_start(%struct.uverbs_attr_bundle* %18, %struct.uverbs_req_iter* %13, %struct.ib_uverbs_create_flow* %4, i32 64)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %2, align 4
  br label %433

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %433

31:                                               ; preds = %24
  %32 = load i32, i32* @CAP_NET_RAW, align 4
  %33 = call i32 @capable(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EPERM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %433

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %40 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IB_FLOW_ATTR_FLAGS_RESERVED, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %433

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %49 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IB_FLOW_ATTR_FLAGS_DONT_TRAP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %56 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IB_FLOW_ATTR_ALL_DEFAULT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %62 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IB_FLOW_ATTR_MC_DEFAULT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %54
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %433

69:                                               ; preds = %60, %47
  %70 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %71 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IB_FLOW_SPEC_SUPPORT_LAYERS, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %433

78:                                               ; preds = %69
  %79 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %80 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %84 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = icmp ugt i64 %82, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %78
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %433

92:                                               ; preds = %78
  %93 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %94 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %93, i32 0, i32 7
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %101 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %100, i32 0, i32 7
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99, %92
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %433

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %111 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %143

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %116 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add i64 48, %118
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call %struct.ib_uverbs_flow_attr* @kmalloc(i32 %120, i32 %121)
  store %struct.ib_uverbs_flow_attr* %122, %struct.ib_uverbs_flow_attr** %8, align 8
  %123 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %124 = icmp ne %struct.ib_uverbs_flow_attr* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %433

128:                                              ; preds = %114
  %129 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %130 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %131 = bitcast %struct.ib_uverbs_flow_attr* %129 to i8*
  %132 = bitcast %struct.ib_uverbs_flow_attr* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 48, i1 false)
  %133 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %134 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %136 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @uverbs_request_next(%struct.uverbs_req_iter* %13, %struct.ib_uverbs_flow_spec_hdr** %134, i32 %137)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %128
  br label %423

142:                                              ; preds = %128
  br label %145

143:                                              ; preds = %109
  %144 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  store %struct.ib_uverbs_flow_attr* %144, %struct.ib_uverbs_flow_attr** %8, align 8
  br label %145

145:                                              ; preds = %143, %142
  %146 = call i32 @uverbs_request_finish(%struct.uverbs_req_iter* %13)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %423

150:                                              ; preds = %145
  %151 = load i32, i32* @UVERBS_OBJECT_FLOW, align 4
  %152 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %153 = call %struct.ib_uobject* @uobj_alloc(i32 %151, %struct.uverbs_attr_bundle* %152, %struct.ib_device** %17)
  store %struct.ib_uobject* %153, %struct.ib_uobject** %6, align 8
  %154 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %155 = call i64 @IS_ERR(%struct.ib_uobject* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %159 = call i32 @PTR_ERR(%struct.ib_uobject* %158)
  store i32 %159, i32* %14, align 4
  br label %423

160:                                              ; preds = %150
  %161 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %162 = load i32, i32* @UVERBS_OBJECT_QP, align 4
  %163 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %166 = call %struct.ib_qp* @uobj_get_obj_read(%struct.ib_qp* %161, i32 %162, i32 %164, %struct.uverbs_attr_bundle* %165)
  store %struct.ib_qp* %166, %struct.ib_qp** %10, align 8
  %167 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %168 = icmp ne %struct.ib_qp* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %160
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %14, align 4
  br label %419

172:                                              ; preds = %160
  %173 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %174 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @IB_QPT_UD, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %172
  %179 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %180 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @IB_QPT_RAW_PACKET, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %14, align 4
  br label %416

187:                                              ; preds = %178, %172
  %188 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %189 = bitcast %struct.ib_flow_attr* %188 to %struct.ib_uverbs_flow_attr*
  %190 = load i32, i32* @flows, align 4
  %191 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %192 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @struct_size(%struct.ib_uverbs_flow_attr* %189, i32 %190, i32 %193)
  %195 = load i32, i32* @GFP_KERNEL, align 4
  %196 = call %struct.ib_uverbs_flow_attr* @kzalloc(i32 %194, i32 %195)
  %197 = bitcast %struct.ib_uverbs_flow_attr* %196 to %struct.ib_flow_attr*
  store %struct.ib_flow_attr* %197, %struct.ib_flow_attr** %9, align 8
  %198 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %199 = icmp ne %struct.ib_flow_attr* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %187
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %14, align 4
  br label %416

203:                                              ; preds = %187
  %204 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %205 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call %struct.ib_uflow_resources* @flow_resources_alloc(i32 %206)
  store %struct.ib_uflow_resources* %207, %struct.ib_uflow_resources** %11, align 8
  %208 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %11, align 8
  %209 = icmp ne %struct.ib_uflow_resources* %208, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %203
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %14, align 4
  br label %412

213:                                              ; preds = %203
  %214 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %215 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %218 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  %219 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %220 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %223 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 4
  %224 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %225 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %228 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %230 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %233 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %232, i32 0, i32 5
  store i32 %231, i32* %233, align 8
  %234 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %235 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %238 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %240 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %239, i32 0, i32 3
  store i32 48, i32* %240, align 4
  %241 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %242 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %241, i32 0, i32 4
  %243 = load %struct.ib_uverbs_flow_spec_hdr*, %struct.ib_uverbs_flow_spec_hdr** %242, align 8
  store %struct.ib_uverbs_flow_spec_hdr* %243, %struct.ib_uverbs_flow_spec_hdr** %12, align 8
  %244 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %245 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %244, i64 1
  %246 = bitcast %struct.ib_flow_attr* %245 to i8*
  store i8* %246, i8** %15, align 8
  store i32 0, i32* %16, align 4
  br label %247

247:                                              ; preds = %311, %213
  %248 = load i32, i32* %16, align 4
  %249 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %250 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp slt i32 %248, %251
  br i1 %252, label %253, label %267

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %255 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = icmp uge i64 %257, 4
  br i1 %258, label %259, label %267

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %261 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.ib_uverbs_flow_spec_hdr*, %struct.ib_uverbs_flow_spec_hdr** %12, align 8
  %264 = getelementptr inbounds %struct.ib_uverbs_flow_spec_hdr, %struct.ib_uverbs_flow_spec_hdr* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = icmp sge i32 %262, %265
  br label %267

267:                                              ; preds = %259, %253, %247
  %268 = phi i1 [ false, %253 ], [ false, %247 ], [ %266, %259 ]
  br i1 %268, label %269, label %314

269:                                              ; preds = %267
  %270 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %271 = load %struct.ib_uverbs_flow_spec_hdr*, %struct.ib_uverbs_flow_spec_hdr** %12, align 8
  %272 = bitcast %struct.ib_uverbs_flow_spec_hdr* %271 to %struct.ib_uverbs_flow_spec*
  %273 = load i8*, i8** %15, align 8
  %274 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %11, align 8
  %275 = call i32 @kern_spec_to_ib_spec(%struct.uverbs_attr_bundle* %270, %struct.ib_uverbs_flow_spec* %272, i8* %273, %struct.ib_uflow_resources* %274)
  store i32 %275, i32* %14, align 4
  %276 = load i32, i32* %14, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %269
  br label %409

279:                                              ; preds = %269
  %280 = load i8*, i8** %15, align 8
  %281 = bitcast i8* %280 to %union.ib_flow_spec*
  %282 = bitcast %union.ib_flow_spec* %281 to i64*
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %285 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, %283
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %285, align 4
  %290 = load %struct.ib_uverbs_flow_spec_hdr*, %struct.ib_uverbs_flow_spec_hdr** %12, align 8
  %291 = getelementptr inbounds %struct.ib_uverbs_flow_spec_hdr, %struct.ib_uverbs_flow_spec_hdr* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %294 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = sub nsw i32 %295, %292
  store i32 %296, i32* %294, align 4
  %297 = load %struct.ib_uverbs_flow_spec_hdr*, %struct.ib_uverbs_flow_spec_hdr** %12, align 8
  %298 = bitcast %struct.ib_uverbs_flow_spec_hdr* %297 to i8*
  %299 = load %struct.ib_uverbs_flow_spec_hdr*, %struct.ib_uverbs_flow_spec_hdr** %12, align 8
  %300 = getelementptr inbounds %struct.ib_uverbs_flow_spec_hdr, %struct.ib_uverbs_flow_spec_hdr* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr i8, i8* %298, i64 %302
  %304 = bitcast i8* %303 to %struct.ib_uverbs_flow_spec_hdr*
  store %struct.ib_uverbs_flow_spec_hdr* %304, %struct.ib_uverbs_flow_spec_hdr** %12, align 8
  %305 = load i8*, i8** %15, align 8
  %306 = bitcast i8* %305 to %union.ib_flow_spec*
  %307 = bitcast %union.ib_flow_spec* %306 to i64*
  %308 = load i64, i64* %307, align 8
  %309 = load i8*, i8** %15, align 8
  %310 = getelementptr i8, i8* %309, i64 %308
  store i8* %310, i8** %15, align 8
  br label %311

311:                                              ; preds = %279
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %16, align 4
  br label %247

314:                                              ; preds = %267
  %315 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %316 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %314
  %320 = load i32, i32* %16, align 4
  %321 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %322 = getelementptr inbounds %struct.ib_flow_attr, %struct.ib_flow_attr* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 8
  %324 = icmp ne i32 %320, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %319, %314
  %326 = load i32, i32* %16, align 4
  %327 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %328 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %326, i32 %329)
  %331 = load i32, i32* @EINVAL, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %14, align 4
  br label %409

333:                                              ; preds = %319
  %334 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %335 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %334, i32 0, i32 2
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 1
  %339 = load %struct.ib_uobject* (%struct.ib_qp*, %struct.ib_uverbs_flow_attr*, i32, i32*)*, %struct.ib_uobject* (%struct.ib_qp*, %struct.ib_uverbs_flow_attr*, i32, i32*)** %338, align 8
  %340 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %341 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %342 = bitcast %struct.ib_flow_attr* %341 to %struct.ib_uverbs_flow_attr*
  %343 = load i32, i32* @IB_FLOW_DOMAIN_USER, align 4
  %344 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %345 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %344, i32 0, i32 0
  %346 = call %struct.ib_uobject* %339(%struct.ib_qp* %340, %struct.ib_uverbs_flow_attr* %342, i32 %343, i32* %345)
  %347 = bitcast %struct.ib_uobject* %346 to %struct.ib_flow*
  store %struct.ib_flow* %347, %struct.ib_flow** %7, align 8
  %348 = load %struct.ib_flow*, %struct.ib_flow** %7, align 8
  %349 = bitcast %struct.ib_flow* %348 to %struct.ib_uobject*
  %350 = call i64 @IS_ERR(%struct.ib_uobject* %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %333
  %353 = load %struct.ib_flow*, %struct.ib_flow** %7, align 8
  %354 = bitcast %struct.ib_flow* %353 to %struct.ib_uobject*
  %355 = call i32 @PTR_ERR(%struct.ib_uobject* %354)
  store i32 %355, i32* %14, align 4
  br label %409

356:                                              ; preds = %333
  %357 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %358 = load %struct.ib_flow*, %struct.ib_flow** %7, align 8
  %359 = bitcast %struct.ib_flow* %358 to %struct.ib_uobject*
  %360 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %361 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %362 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %361, i32 0, i32 2
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  %364 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %11, align 8
  %365 = call i32 @ib_set_flow(%struct.ib_uobject* %357, %struct.ib_uobject* %359, %struct.ib_qp* %360, %struct.TYPE_4__* %363, %struct.ib_uflow_resources* %364)
  %366 = call i32 @memset(%struct.ib_uverbs_create_flow_resp* %5, i32 0, i32 4)
  %367 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %368 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = getelementptr inbounds %struct.ib_uverbs_create_flow_resp, %struct.ib_uverbs_create_flow_resp* %5, i32 0, i32 0
  store i32 %369, i32* %370, align 4
  %371 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %372 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %371, %struct.ib_uverbs_create_flow_resp* %5, i32 4)
  store i32 %372, i32* %14, align 4
  %373 = load i32, i32* %14, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %356
  br label %393

376:                                              ; preds = %356
  %377 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %378 = call i32 @uobj_put_obj_read(%struct.ib_qp* %377)
  %379 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %380 = bitcast %struct.ib_flow_attr* %379 to %struct.ib_uverbs_flow_attr*
  %381 = call i32 @kfree(%struct.ib_uverbs_flow_attr* %380)
  %382 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %383 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %376
  %387 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %388 = call i32 @kfree(%struct.ib_uverbs_flow_attr* %387)
  br label %389

389:                                              ; preds = %386, %376
  %390 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %391 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %392 = call i32 @uobj_alloc_commit(%struct.ib_uobject* %390, %struct.uverbs_attr_bundle* %391)
  store i32 %392, i32* %2, align 4
  br label %433

393:                                              ; preds = %375
  %394 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %395 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %394, i32 0, i32 2
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 0
  %399 = load i32 (%struct.ib_uobject*)*, i32 (%struct.ib_uobject*)** %398, align 8
  %400 = load %struct.ib_flow*, %struct.ib_flow** %7, align 8
  %401 = bitcast %struct.ib_flow* %400 to %struct.ib_uobject*
  %402 = call i32 %399(%struct.ib_uobject* %401)
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %393
  %405 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %406 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %405, i32 0, i32 1
  %407 = call i32 @atomic_dec(i32* %406)
  br label %408

408:                                              ; preds = %404, %393
  br label %409

409:                                              ; preds = %408, %352, %325, %278
  %410 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %11, align 8
  %411 = call i32 @ib_uverbs_flow_resources_free(%struct.ib_uflow_resources* %410)
  br label %412

412:                                              ; preds = %409, %210
  %413 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %9, align 8
  %414 = bitcast %struct.ib_flow_attr* %413 to %struct.ib_uverbs_flow_attr*
  %415 = call i32 @kfree(%struct.ib_uverbs_flow_attr* %414)
  br label %416

416:                                              ; preds = %412, %200, %184
  %417 = load %struct.ib_qp*, %struct.ib_qp** %10, align 8
  %418 = call i32 @uobj_put_obj_read(%struct.ib_qp* %417)
  br label %419

419:                                              ; preds = %416, %169
  %420 = load %struct.ib_uobject*, %struct.ib_uobject** %6, align 8
  %421 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %422 = call i32 @uobj_alloc_abort(%struct.ib_uobject* %420, %struct.uverbs_attr_bundle* %421)
  br label %423

423:                                              ; preds = %419, %157, %149, %141
  %424 = getelementptr inbounds %struct.ib_uverbs_create_flow, %struct.ib_uverbs_create_flow* %4, i32 0, i32 0
  %425 = getelementptr inbounds %struct.ib_uverbs_flow_attr, %struct.ib_uverbs_flow_attr* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %423
  %429 = load %struct.ib_uverbs_flow_attr*, %struct.ib_uverbs_flow_attr** %8, align 8
  %430 = call i32 @kfree(%struct.ib_uverbs_flow_attr* %429)
  br label %431

431:                                              ; preds = %428, %423
  %432 = load i32, i32* %14, align 4
  store i32 %432, i32* %2, align 4
  br label %433

433:                                              ; preds = %431, %389, %125, %106, %89, %75, %66, %44, %35, %28, %22
  %434 = load i32, i32* %2, align 4
  ret i32 %434
}

declare dso_local i32 @uverbs_request_start(%struct.uverbs_attr_bundle*, %struct.uverbs_req_iter*, %struct.ib_uverbs_create_flow*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.ib_uverbs_flow_attr* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uverbs_request_next(%struct.uverbs_req_iter*, %struct.ib_uverbs_flow_spec_hdr**, i32) #1

declare dso_local i32 @uverbs_request_finish(%struct.uverbs_req_iter*) #1

declare dso_local %struct.ib_uobject* @uobj_alloc(i32, %struct.uverbs_attr_bundle*, %struct.ib_device**) #1

declare dso_local i64 @IS_ERR(%struct.ib_uobject*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_uobject*) #1

declare dso_local %struct.ib_qp* @uobj_get_obj_read(%struct.ib_qp*, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local %struct.ib_uverbs_flow_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.ib_uverbs_flow_attr*, i32, i32) #1

declare dso_local %struct.ib_uflow_resources* @flow_resources_alloc(i32) #1

declare dso_local i32 @kern_spec_to_ib_spec(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_flow_spec*, i8*, %struct.ib_uflow_resources*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @ib_set_flow(%struct.ib_uobject*, %struct.ib_uobject*, %struct.ib_qp*, %struct.TYPE_4__*, %struct.ib_uflow_resources*) #1

declare dso_local i32 @memset(%struct.ib_uverbs_create_flow_resp*, i32, i32) #1

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_create_flow_resp*, i32) #1

declare dso_local i32 @uobj_put_obj_read(%struct.ib_qp*) #1

declare dso_local i32 @kfree(%struct.ib_uverbs_flow_attr*) #1

declare dso_local i32 @uobj_alloc_commit(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ib_uverbs_flow_resources_free(%struct.ib_uflow_resources*) #1

declare dso_local i32 @uobj_alloc_abort(%struct.ib_uobject*, %struct.uverbs_attr_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
