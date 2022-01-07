; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_chk_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_qp.c_rxe_qp_chk_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { %struct.TYPE_8__, %struct.rxe_port, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.rxe_port = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.rxe_qp = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IB_QP_CUR_STATE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid mask or state for qp\0A\00", align 1
@IB_QPS_SQD = common dso_local global i32 0, align 4
@QP_STATE_DRAIN = common dso_local global i64 0, align 8
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid port %d\0A\00", align 1
@IB_QP_CAP = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QP_ALT_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid alt port %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid QP alt timeout %d > 31\0A\00", align 1
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid mtu (%d) > (%d)\0A\00", align 1
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid max_rd_atomic %d > %d\0A\00", align 1
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"invalid QP timeout %d > 31\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_qp_chk_attr(%struct.rxe_dev* %0, %struct.rxe_qp* %1, %struct.ib_qp_attr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rxe_dev*, align 8
  %7 = alloca %struct.rxe_qp*, align 8
  %8 = alloca %struct.ib_qp_attr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rxe_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rxe_dev* %0, %struct.rxe_dev** %6, align 8
  store %struct.rxe_qp* %1, %struct.rxe_qp** %7, align 8
  store %struct.ib_qp_attr* %2, %struct.ib_qp_attr** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @IB_QP_CUR_STATE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %21 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %25 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi i32 [ %22, %19 ], [ %27, %23 ]
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @IB_QP_STATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %36 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  br label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ]
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %45 = call i32 @qp_type(%struct.rxe_qp* %44)
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ib_modify_qp_is_ok(i32 %42, i32 %43, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %226

51:                                               ; preds = %40
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @IB_QP_STATE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @IB_QPS_SQD, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %62 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @QP_STATE_DRAIN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @IB_QPS_ERR, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %226

72:                                               ; preds = %67, %60
  br label %73

73:                                               ; preds = %72, %56
  br label %74

74:                                               ; preds = %73, %51
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @IB_QP_PORT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %81 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %80, i32 0, i32 2
  %82 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %83 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rdma_is_port_valid(i32* %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %89 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %226

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %74
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @IB_QP_CAP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  %99 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %100 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %101 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %100, i32 0, i32 10
  %102 = load %struct.rxe_qp*, %struct.rxe_qp** %7, align 8
  %103 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @rxe_qp_chk_cap(%struct.rxe_dev* %99, i32* %101, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %226

112:                                              ; preds = %98, %93
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @IB_QP_AV, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %119 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %120 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %119, i32 0, i32 9
  %121 = call i64 @rxe_av_chk_attr(%struct.rxe_dev* %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %226

124:                                              ; preds = %117, %112
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @IB_QP_ALT_PATH, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %160

129:                                              ; preds = %124
  %130 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %131 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %132 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %131, i32 0, i32 8
  %133 = call i64 @rxe_av_chk_attr(%struct.rxe_dev* %130, i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %226

136:                                              ; preds = %129
  %137 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %138 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %137, i32 0, i32 2
  %139 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %140 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @rdma_is_port_valid(i32* %138, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %136
  %145 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %146 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  br label %226

149:                                              ; preds = %136
  %150 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %151 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 31
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %156 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %226

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %124
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %160
  %166 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %167 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %166, i32 0, i32 1
  store %struct.rxe_port* %167, %struct.rxe_port** %12, align 8
  %168 = load %struct.rxe_port*, %struct.rxe_port** %12, align 8
  %169 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %13, align 4
  %172 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %173 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp ugt i32 %175, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %165
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @ib_mtu_enum_to_int(i32 %179)
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @ib_mtu_enum_to_int(i32 %181)
  %183 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %180, i32 %182)
  br label %226

184:                                              ; preds = %165
  br label %185

185:                                              ; preds = %184, %160
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %209

190:                                              ; preds = %185
  %191 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %192 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %195 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp sgt i32 %193, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %190
  %200 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %201 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.rxe_dev*, %struct.rxe_dev** %6, align 8
  %204 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %202, i32 %206)
  br label %226

208:                                              ; preds = %190
  br label %209

209:                                              ; preds = %208, %185
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %209
  %215 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %216 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %217, 31
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %8, align 8
  %221 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %222)
  br label %226

224:                                              ; preds = %214
  br label %225

225:                                              ; preds = %224, %209
  store i32 0, i32* %5, align 4
  br label %229

226:                                              ; preds = %219, %199, %178, %154, %144, %135, %123, %111, %87, %71, %49
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %5, align 4
  br label %229

229:                                              ; preds = %226, %225
  %230 = load i32, i32* %5, align 4
  ret i32 %230
}

declare dso_local i32 @ib_modify_qp_is_ok(i32, i32, i32, i32) #1

declare dso_local i32 @qp_type(%struct.rxe_qp*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @rdma_is_port_valid(i32*, i32) #1

declare dso_local i64 @rxe_qp_chk_cap(%struct.rxe_dev*, i32*, i32) #1

declare dso_local i64 @rxe_av_chk_attr(%struct.rxe_dev*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @ib_mtu_enum_to_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
