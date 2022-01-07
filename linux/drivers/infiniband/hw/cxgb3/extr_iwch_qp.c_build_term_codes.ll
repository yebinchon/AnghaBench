; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_term_codes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_term_codes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.respQ_msg_t = type { i32 }

@T3_SEND_WITH_INV = common dso_local global i32 0, align 4
@T3_SEND_WITH_SE_INV = common dso_local global i32 0, align 4
@T3_RDMA_WRITE = common dso_local global i32 0, align 4
@T3_READ_RESP = common dso_local global i32 0, align 4
@LAYER_RDMAP = common dso_local global i32 0, align 4
@RDMAP_REMOTE_OP = common dso_local global i32 0, align 4
@RDMAP_CANT_INV_STAG = common dso_local global i32 0, align 4
@RDMAP_REMOTE_PROT = common dso_local global i32 0, align 4
@RDMAP_INV_STAG = common dso_local global i32 0, align 4
@RDMAP_STAG_NOT_ASSOC = common dso_local global i32 0, align 4
@RDMAP_ACC_VIOL = common dso_local global i32 0, align 4
@RDMAP_TO_WRAP = common dso_local global i32 0, align 4
@LAYER_DDP = common dso_local global i32 0, align 4
@DDP_TAGGED_ERR = common dso_local global i32 0, align 4
@DDPT_BASE_BOUNDS = common dso_local global i32 0, align 4
@RDMAP_BASE_BOUNDS = common dso_local global i32 0, align 4
@RDMAP_LOCAL_CATA = common dso_local global i32 0, align 4
@DDP_UNTAGGED_ERR = common dso_local global i32 0, align 4
@DDPU_INV_MSN_NOBUF = common dso_local global i32 0, align 4
@LAYER_MPA = common dso_local global i32 0, align 4
@DDP_LLP = common dso_local global i32 0, align 4
@MPA_CRC_ERR = common dso_local global i32 0, align 4
@MPA_MARKER_ERR = common dso_local global i32 0, align 4
@DDPU_MSG_TOOBIG = common dso_local global i32 0, align 4
@DDPT_INV_VERS = common dso_local global i32 0, align 4
@DDPU_INV_VERS = common dso_local global i32 0, align 4
@RDMAP_INV_VERS = common dso_local global i32 0, align 4
@RDMAP_INV_OPCODE = common dso_local global i32 0, align 4
@DDPU_INV_QN = common dso_local global i32 0, align 4
@DDPU_INV_MSN_RANGE = common dso_local global i32 0, align 4
@DDP_LOCAL_CATA = common dso_local global i32 0, align 4
@DDPU_INV_MO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.respQ_msg_t*, i32*, i32*)* @build_term_codes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_term_codes(%struct.respQ_msg_t* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.respQ_msg_t*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.respQ_msg_t* %0, %struct.respQ_msg_t** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 146, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.respQ_msg_t*, %struct.respQ_msg_t** %4, align 8
  %13 = icmp ne %struct.respQ_msg_t* %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %3
  %15 = load %struct.respQ_msg_t*, %struct.respQ_msg_t** %4, align 8
  %16 = getelementptr inbounds %struct.respQ_msg_t, %struct.respQ_msg_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CQE_STATUS(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.respQ_msg_t*, %struct.respQ_msg_t** %4, align 8
  %20 = getelementptr inbounds %struct.respQ_msg_t, %struct.respQ_msg_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CQE_OPCODE(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.respQ_msg_t*, %struct.respQ_msg_t** %4, align 8
  %24 = getelementptr inbounds %struct.respQ_msg_t, %struct.respQ_msg_t* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RQ_TYPE(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @T3_SEND_WITH_INV, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @T3_SEND_WITH_SE_INV, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %14
  %35 = phi i1 [ true, %14 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @T3_RDMA_WRITE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @T3_READ_RESP, align 4
  %46 = icmp eq i32 %44, %45
  br label %47

47:                                               ; preds = %43, %40
  %48 = phi i1 [ false, %40 ], [ %46, %43 ]
  br label %49

49:                                               ; preds = %47, %34
  %50 = phi i1 [ true, %34 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %3
  %53 = load i32, i32* %7, align 4
  switch i32 %53, label %237 [
    i32 130, label %54
    i32 134, label %72
    i32 132, label %91
    i32 153, label %98
    i32 128, label %105
    i32 152, label %112
    i32 144, label %130
    i32 145, label %130
    i32 148, label %137
    i32 147, label %137
    i32 146, label %137
    i32 136, label %143
    i32 135, label %150
    i32 151, label %157
    i32 142, label %164
    i32 133, label %171
    i32 149, label %178
    i32 131, label %196
    i32 137, label %203
    i32 150, label %210
    i32 140, label %217
    i32 139, label %217
    i32 138, label %217
    i32 143, label %217
    i32 129, label %224
    i32 141, label %230
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* @LAYER_RDMAP, align 4
  %59 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @RDMAP_CANT_INV_STAG, align 4
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  br label %71

64:                                               ; preds = %54
  %65 = load i32, i32* @LAYER_RDMAP, align 4
  %66 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %67 = or i32 %65, %66
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @RDMAP_INV_STAG, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %57
  br label %243

72:                                               ; preds = %52
  %73 = load i32, i32* @LAYER_RDMAP, align 4
  %74 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %75 = or i32 %73, %74
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @T3_SEND_WITH_INV, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @T3_SEND_WITH_SE_INV, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %72
  %85 = load i32, i32* @RDMAP_CANT_INV_STAG, align 4
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  br label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @RDMAP_STAG_NOT_ASSOC, align 4
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %243

91:                                               ; preds = %52
  %92 = load i32, i32* @LAYER_RDMAP, align 4
  %93 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %94 = or i32 %92, %93
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @RDMAP_STAG_NOT_ASSOC, align 4
  %97 = load i32*, i32** %6, align 8
  store i32 %96, i32* %97, align 4
  br label %243

98:                                               ; preds = %52
  %99 = load i32, i32* @LAYER_RDMAP, align 4
  %100 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @RDMAP_ACC_VIOL, align 4
  %104 = load i32*, i32** %6, align 8
  store i32 %103, i32* %104, align 4
  br label %243

105:                                              ; preds = %52
  %106 = load i32, i32* @LAYER_RDMAP, align 4
  %107 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %108 = or i32 %106, %107
  %109 = load i32*, i32** %5, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* @RDMAP_TO_WRAP, align 4
  %111 = load i32*, i32** %6, align 8
  store i32 %110, i32* %111, align 4
  br label %243

112:                                              ; preds = %52
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* @LAYER_DDP, align 4
  %117 = load i32, i32* @DDP_TAGGED_ERR, align 4
  %118 = or i32 %116, %117
  %119 = load i32*, i32** %5, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* @DDPT_BASE_BOUNDS, align 4
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %129

122:                                              ; preds = %112
  %123 = load i32, i32* @LAYER_RDMAP, align 4
  %124 = load i32, i32* @RDMAP_REMOTE_PROT, align 4
  %125 = or i32 %123, %124
  %126 = load i32*, i32** %5, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @RDMAP_BASE_BOUNDS, align 4
  %128 = load i32*, i32** %6, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %122, %115
  br label %243

130:                                              ; preds = %52, %52
  %131 = load i32, i32* @LAYER_RDMAP, align 4
  %132 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %133 = or i32 %131, %132
  %134 = load i32*, i32** %5, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @RDMAP_CANT_INV_STAG, align 4
  %136 = load i32*, i32** %6, align 8
  store i32 %135, i32* %136, align 4
  br label %243

137:                                              ; preds = %52, %52, %52
  %138 = load i32, i32* @LAYER_RDMAP, align 4
  %139 = load i32, i32* @RDMAP_LOCAL_CATA, align 4
  %140 = or i32 %138, %139
  %141 = load i32*, i32** %5, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %6, align 8
  store i32 0, i32* %142, align 4
  br label %243

143:                                              ; preds = %52
  %144 = load i32, i32* @LAYER_DDP, align 4
  %145 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %146 = or i32 %144, %145
  %147 = load i32*, i32** %5, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @DDPU_INV_MSN_NOBUF, align 4
  %149 = load i32*, i32** %6, align 8
  store i32 %148, i32* %149, align 4
  br label %243

150:                                              ; preds = %52
  %151 = load i32, i32* @LAYER_DDP, align 4
  %152 = load i32, i32* @DDP_TAGGED_ERR, align 4
  %153 = or i32 %151, %152
  %154 = load i32*, i32** %5, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @DDPT_BASE_BOUNDS, align 4
  %156 = load i32*, i32** %6, align 8
  store i32 %155, i32* %156, align 4
  br label %243

157:                                              ; preds = %52
  %158 = load i32, i32* @LAYER_MPA, align 4
  %159 = load i32, i32* @DDP_LLP, align 4
  %160 = or i32 %158, %159
  %161 = load i32*, i32** %5, align 8
  store i32 %160, i32* %161, align 4
  %162 = load i32, i32* @MPA_CRC_ERR, align 4
  %163 = load i32*, i32** %6, align 8
  store i32 %162, i32* %163, align 4
  br label %243

164:                                              ; preds = %52
  %165 = load i32, i32* @LAYER_MPA, align 4
  %166 = load i32, i32* @DDP_LLP, align 4
  %167 = or i32 %165, %166
  %168 = load i32*, i32** %5, align 8
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* @MPA_MARKER_ERR, align 4
  %170 = load i32*, i32** %6, align 8
  store i32 %169, i32* %170, align 4
  br label %243

171:                                              ; preds = %52
  %172 = load i32, i32* @LAYER_DDP, align 4
  %173 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %174 = or i32 %172, %173
  %175 = load i32*, i32** %5, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i32, i32* @DDPU_MSG_TOOBIG, align 4
  %177 = load i32*, i32** %6, align 8
  store i32 %176, i32* %177, align 4
  br label %243

178:                                              ; preds = %52
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %178
  %182 = load i32, i32* @LAYER_DDP, align 4
  %183 = load i32, i32* @DDP_TAGGED_ERR, align 4
  %184 = or i32 %182, %183
  %185 = load i32*, i32** %5, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* @DDPT_INV_VERS, align 4
  %187 = load i32*, i32** %6, align 8
  store i32 %186, i32* %187, align 4
  br label %195

188:                                              ; preds = %178
  %189 = load i32, i32* @LAYER_DDP, align 4
  %190 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %191 = or i32 %189, %190
  %192 = load i32*, i32** %5, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32, i32* @DDPU_INV_VERS, align 4
  %194 = load i32*, i32** %6, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %188, %181
  br label %243

196:                                              ; preds = %52
  %197 = load i32, i32* @LAYER_RDMAP, align 4
  %198 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %199 = or i32 %197, %198
  %200 = load i32*, i32** %5, align 8
  store i32 %199, i32* %200, align 4
  %201 = load i32, i32* @RDMAP_INV_VERS, align 4
  %202 = load i32*, i32** %6, align 8
  store i32 %201, i32* %202, align 4
  br label %243

203:                                              ; preds = %52
  %204 = load i32, i32* @LAYER_RDMAP, align 4
  %205 = load i32, i32* @RDMAP_REMOTE_OP, align 4
  %206 = or i32 %204, %205
  %207 = load i32*, i32** %5, align 8
  store i32 %206, i32* %207, align 4
  %208 = load i32, i32* @RDMAP_INV_OPCODE, align 4
  %209 = load i32*, i32** %6, align 8
  store i32 %208, i32* %209, align 4
  br label %243

210:                                              ; preds = %52
  %211 = load i32, i32* @LAYER_DDP, align 4
  %212 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %213 = or i32 %211, %212
  %214 = load i32*, i32** %5, align 8
  store i32 %213, i32* %214, align 4
  %215 = load i32, i32* @DDPU_INV_QN, align 4
  %216 = load i32*, i32** %6, align 8
  store i32 %215, i32* %216, align 4
  br label %243

217:                                              ; preds = %52, %52, %52, %52
  %218 = load i32, i32* @LAYER_DDP, align 4
  %219 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %220 = or i32 %218, %219
  %221 = load i32*, i32** %5, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* @DDPU_INV_MSN_RANGE, align 4
  %223 = load i32*, i32** %6, align 8
  store i32 %222, i32* %223, align 4
  br label %243

224:                                              ; preds = %52
  %225 = load i32, i32* @LAYER_DDP, align 4
  %226 = load i32, i32* @DDP_LOCAL_CATA, align 4
  %227 = or i32 %225, %226
  %228 = load i32*, i32** %5, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32*, i32** %6, align 8
  store i32 0, i32* %229, align 4
  br label %243

230:                                              ; preds = %52
  %231 = load i32, i32* @LAYER_DDP, align 4
  %232 = load i32, i32* @DDP_UNTAGGED_ERR, align 4
  %233 = or i32 %231, %232
  %234 = load i32*, i32** %5, align 8
  store i32 %233, i32* %234, align 4
  %235 = load i32, i32* @DDPU_INV_MO, align 4
  %236 = load i32*, i32** %6, align 8
  store i32 %235, i32* %236, align 4
  br label %243

237:                                              ; preds = %52
  %238 = load i32, i32* @LAYER_RDMAP, align 4
  %239 = load i32, i32* @DDP_LOCAL_CATA, align 4
  %240 = or i32 %238, %239
  %241 = load i32*, i32** %5, align 8
  store i32 %240, i32* %241, align 4
  %242 = load i32*, i32** %6, align 8
  store i32 0, i32* %242, align 4
  br label %243

243:                                              ; preds = %237, %230, %224, %217, %210, %203, %196, %195, %171, %164, %157, %150, %143, %137, %130, %129, %105, %98, %91, %90, %71
  ret void
}

declare dso_local i32 @CQE_STATUS(i32) #1

declare dso_local i32 @CQE_OPCODE(i32) #1

declare dso_local i32 @RQ_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
