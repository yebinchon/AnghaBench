; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_insert_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_mpc.c_mpc1_insert_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)* }
%struct.mpc_tree = type { i32, %struct.mpcc* }
%struct.mpcc_blnd_cfg = type { i32 }
%struct.mpcc_sm_cfg = type { i32 }
%struct.mpcc = type { i32, i32, %struct.mpcc_sm_cfg, %struct.mpcc* }
%struct.dcn10_mpc = type { i32, i32 }

@MPCC_BOT_SEL = common dso_local global i32* null, align 8
@MPCC_CONTROL = common dso_local global i32* null, align 8
@MPCC_MODE = common dso_local global i32 0, align 4
@MPCC_BLEND_MODE_TOP_BOT_BLENDING = common dso_local global i32 0, align 4
@MPCC_BLEND_MODE_TOP_LAYER_ONLY = common dso_local global i32 0, align 4
@MPCC_TOP_SEL = common dso_local global i32* null, align 8
@MPCC_OPP_ID = common dso_local global i32* null, align 8
@MUX = common dso_local global i32* null, align 8
@MPC_OUT_MUX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mpcc* @mpc1_insert_plane(%struct.mpc* %0, %struct.mpc_tree* %1, %struct.mpcc_blnd_cfg* %2, %struct.mpcc_sm_cfg* %3, %struct.mpcc* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mpcc*, align 8
  %9 = alloca %struct.mpc*, align 8
  %10 = alloca %struct.mpc_tree*, align 8
  %11 = alloca %struct.mpcc_blnd_cfg*, align 8
  %12 = alloca %struct.mpcc_sm_cfg*, align 8
  %13 = alloca %struct.mpcc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dcn10_mpc*, align 8
  %17 = alloca %struct.mpcc*, align 8
  %18 = alloca %struct.mpcc*, align 8
  %19 = alloca %struct.mpcc*, align 8
  store %struct.mpc* %0, %struct.mpc** %9, align 8
  store %struct.mpc_tree* %1, %struct.mpc_tree** %10, align 8
  store %struct.mpcc_blnd_cfg* %2, %struct.mpcc_blnd_cfg** %11, align 8
  store %struct.mpcc_sm_cfg* %3, %struct.mpcc_sm_cfg** %12, align 8
  store %struct.mpcc* %4, %struct.mpcc** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.mpc*, %struct.mpc** %9, align 8
  %21 = call %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc* %20)
  store %struct.dcn10_mpc* %21, %struct.dcn10_mpc** %16, align 8
  store %struct.mpcc* null, %struct.mpcc** %17, align 8
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %16, align 8
  %24 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %16, align 8
  %30 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %15, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %40 = icmp ne %struct.mpcc* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %7
  %42 = load %struct.mpc_tree*, %struct.mpc_tree** %10, align 8
  %43 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %42, i32 0, i32 1
  %44 = load %struct.mpcc*, %struct.mpcc** %43, align 8
  store %struct.mpcc* %44, %struct.mpcc** %18, align 8
  br label %45

45:                                               ; preds = %56, %41
  %46 = load %struct.mpcc*, %struct.mpcc** %18, align 8
  %47 = icmp ne %struct.mpcc* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.mpcc*, %struct.mpcc** %18, align 8
  %50 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %49, i32 0, i32 3
  %51 = load %struct.mpcc*, %struct.mpcc** %50, align 8
  %52 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %53 = icmp ne %struct.mpcc* %51, %52
  br label %54

54:                                               ; preds = %48, %45
  %55 = phi i1 [ false, %45 ], [ %53, %48 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load %struct.mpcc*, %struct.mpcc** %18, align 8
  %58 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %57, i32 0, i32 3
  %59 = load %struct.mpcc*, %struct.mpcc** %58, align 8
  store %struct.mpcc* %59, %struct.mpcc** %18, align 8
  br label %45

60:                                               ; preds = %54
  %61 = load %struct.mpcc*, %struct.mpcc** %18, align 8
  %62 = icmp eq %struct.mpcc* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store %struct.mpcc* null, %struct.mpcc** %8, align 8
  br label %239

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %7
  %66 = load %struct.mpc*, %struct.mpc** %9, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call %struct.mpcc* @mpc1_get_mpcc(%struct.mpc* %66, i32 %67)
  store %struct.mpcc* %68, %struct.mpcc** %17, align 8
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.mpcc*, %struct.mpcc** %17, align 8
  %71 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %73 = icmp ne %struct.mpcc* %72, null
  br i1 %73, label %74, label %96

74:                                               ; preds = %65
  %75 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %76 = load %struct.mpcc*, %struct.mpcc** %17, align 8
  %77 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %76, i32 0, i32 3
  store %struct.mpcc* %75, %struct.mpcc** %77, align 8
  %78 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %84 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %85 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @REG_SET(i32 %82, i32 0, i32* %83, i32 %86)
  %88 = load i32*, i32** @MPCC_CONTROL, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MPCC_MODE, align 4
  %94 = load i32, i32* @MPCC_BLEND_MODE_TOP_BOT_BLENDING, align 4
  %95 = call i32 @REG_UPDATE(i32 %92, i32 %93, i32 %94)
  br label %114

96:                                               ; preds = %65
  %97 = load %struct.mpcc*, %struct.mpcc** %17, align 8
  %98 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %97, i32 0, i32 3
  store %struct.mpcc* null, %struct.mpcc** %98, align 8
  %99 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %105 = call i32 @REG_SET(i32 %103, i32 0, i32* %104, i32 15)
  %106 = load i32*, i32** @MPCC_CONTROL, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MPCC_MODE, align 4
  %112 = load i32, i32* @MPCC_BLEND_MODE_TOP_LAYER_ONLY, align 4
  %113 = call i32 @REG_UPDATE(i32 %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %96, %74
  %115 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** @MPCC_TOP_SEL, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @REG_SET(i32 %119, i32 0, i32* %120, i32 %121)
  %123 = load i32*, i32** @MPCC_OPP_ID, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** @MPCC_OPP_ID, align 8
  %129 = load %struct.mpc_tree*, %struct.mpc_tree** %10, align 8
  %130 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @REG_SET(i32 %127, i32 0, i32* %128, i32 %131)
  %133 = load %struct.mpc_tree*, %struct.mpc_tree** %10, align 8
  %134 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %133, i32 0, i32 1
  %135 = load %struct.mpcc*, %struct.mpcc** %134, align 8
  %136 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %137 = icmp eq %struct.mpcc* %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %114
  %139 = load %struct.mpcc*, %struct.mpcc** %17, align 8
  %140 = load %struct.mpc_tree*, %struct.mpc_tree** %10, align 8
  %141 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %140, i32 0, i32 1
  store %struct.mpcc* %139, %struct.mpcc** %141, align 8
  %142 = load i32*, i32** @MUX, align 8
  %143 = load %struct.mpc_tree*, %struct.mpc_tree** %10, align 8
  %144 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @MPC_OUT_MUX, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @REG_UPDATE(i32 %148, i32 %149, i32 %150)
  br label %209

152:                                              ; preds = %114
  %153 = load %struct.mpc_tree*, %struct.mpc_tree** %10, align 8
  %154 = getelementptr inbounds %struct.mpc_tree, %struct.mpc_tree* %153, i32 0, i32 1
  %155 = load %struct.mpcc*, %struct.mpcc** %154, align 8
  store %struct.mpcc* %155, %struct.mpcc** %19, align 8
  br label %156

156:                                              ; preds = %167, %152
  %157 = load %struct.mpcc*, %struct.mpcc** %19, align 8
  %158 = icmp ne %struct.mpcc* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load %struct.mpcc*, %struct.mpcc** %19, align 8
  %161 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %160, i32 0, i32 3
  %162 = load %struct.mpcc*, %struct.mpcc** %161, align 8
  %163 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %164 = icmp ne %struct.mpcc* %162, %163
  br label %165

165:                                              ; preds = %159, %156
  %166 = phi i1 [ false, %156 ], [ %164, %159 ]
  br i1 %166, label %167, label %171

167:                                              ; preds = %165
  %168 = load %struct.mpcc*, %struct.mpcc** %19, align 8
  %169 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %168, i32 0, i32 3
  %170 = load %struct.mpcc*, %struct.mpcc** %169, align 8
  store %struct.mpcc* %170, %struct.mpcc** %19, align 8
  br label %156

171:                                              ; preds = %165
  %172 = load %struct.mpcc*, %struct.mpcc** %19, align 8
  %173 = icmp ne %struct.mpcc* %172, null
  br i1 %173, label %174, label %208

174:                                              ; preds = %171
  %175 = load %struct.mpcc*, %struct.mpcc** %19, align 8
  %176 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %175, i32 0, i32 3
  %177 = load %struct.mpcc*, %struct.mpcc** %176, align 8
  %178 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %179 = icmp eq %struct.mpcc* %177, %178
  br i1 %179, label %180, label %208

180:                                              ; preds = %174
  %181 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %182 = load %struct.mpcc*, %struct.mpcc** %19, align 8
  %183 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** @MPCC_BOT_SEL, align 8
  %189 = load i32, i32* %15, align 4
  %190 = call i32 @REG_SET(i32 %187, i32 0, i32* %188, i32 %189)
  %191 = load %struct.mpcc*, %struct.mpcc** %17, align 8
  %192 = load %struct.mpcc*, %struct.mpcc** %19, align 8
  %193 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %192, i32 0, i32 3
  store %struct.mpcc* %191, %struct.mpcc** %193, align 8
  %194 = load %struct.mpcc*, %struct.mpcc** %13, align 8
  %195 = icmp ne %struct.mpcc* %194, null
  br i1 %195, label %207, label %196

196:                                              ; preds = %180
  %197 = load i32*, i32** @MPCC_CONTROL, align 8
  %198 = load %struct.mpcc*, %struct.mpcc** %19, align 8
  %199 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @MPCC_MODE, align 4
  %205 = load i32, i32* @MPCC_BLEND_MODE_TOP_BOT_BLENDING, align 4
  %206 = call i32 @REG_UPDATE(i32 %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %196, %180
  br label %208

208:                                              ; preds = %207, %174, %171
  br label %209

209:                                              ; preds = %208, %138
  %210 = load %struct.mpc*, %struct.mpc** %9, align 8
  %211 = getelementptr inbounds %struct.mpc, %struct.mpc* %210, i32 0, i32 0
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 0
  %214 = load i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)*, i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)** %213, align 8
  %215 = load %struct.mpc*, %struct.mpc** %9, align 8
  %216 = load %struct.mpcc_blnd_cfg*, %struct.mpcc_blnd_cfg** %11, align 8
  %217 = load i32, i32* %15, align 4
  %218 = call i32 %214(%struct.mpc* %215, %struct.mpcc_blnd_cfg* %216, i32 %217)
  %219 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %12, align 8
  %220 = icmp ne %struct.mpcc_sm_cfg* %219, null
  br i1 %220, label %221, label %231

221:                                              ; preds = %209
  %222 = load %struct.mpcc*, %struct.mpcc** %17, align 8
  %223 = getelementptr inbounds %struct.mpcc, %struct.mpcc* %222, i32 0, i32 2
  %224 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %12, align 8
  %225 = bitcast %struct.mpcc_sm_cfg* %223 to i8*
  %226 = bitcast %struct.mpcc_sm_cfg* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %225, i8* align 4 %226, i64 4, i1 false)
  %227 = load %struct.mpc*, %struct.mpc** %9, align 8
  %228 = load %struct.mpcc_sm_cfg*, %struct.mpcc_sm_cfg** %12, align 8
  %229 = load i32, i32* %15, align 4
  %230 = call i32 @mpc1_update_stereo_mix(%struct.mpc* %227, %struct.mpcc_sm_cfg* %228, i32 %229)
  br label %231

231:                                              ; preds = %221, %209
  %232 = load i32, i32* %15, align 4
  %233 = shl i32 1, %232
  %234 = load %struct.dcn10_mpc*, %struct.dcn10_mpc** %16, align 8
  %235 = getelementptr inbounds %struct.dcn10_mpc, %struct.dcn10_mpc* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load %struct.mpcc*, %struct.mpcc** %17, align 8
  store %struct.mpcc* %238, %struct.mpcc** %8, align 8
  br label %239

239:                                              ; preds = %231, %63
  %240 = load %struct.mpcc*, %struct.mpcc** %8, align 8
  ret %struct.mpcc* %240
}

declare dso_local %struct.dcn10_mpc* @TO_DCN10_MPC(%struct.mpc*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mpcc* @mpc1_get_mpcc(%struct.mpc*, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32*, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mpc1_update_stereo_mix(%struct.mpc*, %struct.mpcc_sm_cfg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
