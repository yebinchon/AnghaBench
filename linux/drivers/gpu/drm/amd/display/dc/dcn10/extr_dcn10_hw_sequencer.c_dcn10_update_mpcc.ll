; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_update_mpcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_update_mpcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_22__*, %struct.TYPE_20__ }
%struct.TYPE_22__ = type { %struct.mpc* }
%struct.mpc = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.mpcc* (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc_blnd_cfg*, i32*, i32*, i32, i32)*, i32 (%struct.mpc*, i32)*, i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)*, %struct.mpcc* (%struct.mpc_tree*, i32)*, i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)* }
%struct.mpcc = type { i32 }
%struct.mpc_tree = type { i32 }
%struct.mpcc_blnd_cfg = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.pipe_ctx = type { %struct.TYPE_13__, %struct.TYPE_19__*, %struct.TYPE_16__*, i64, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.mpc_tree }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.hubp* }
%struct.hubp = type { i32, i32, i32 }

@VISUAL_CONFIRM_HDR = common dso_local global i64 0, align 8
@VISUAL_CONFIRM_SURFACE = common dso_local global i64 0, align 8
@MPCC_ALPHA_BLEND_MODE_PER_PIXEL_ALPHA = common dso_local global i32 0, align 4
@MPCC_ALPHA_BLEND_MODE_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dcn10_update_mpcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_update_mpcc(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.hubp*, align 8
  %6 = alloca %struct.mpcc_blnd_cfg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpcc*, align 8
  %10 = alloca %struct.mpc*, align 8
  %11 = alloca %struct.mpc_tree*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.hubp*, %struct.hubp** %14, align 8
  store %struct.hubp* %15, %struct.hubp** %5, align 8
  %16 = bitcast %struct.mpcc_blnd_cfg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 28, i1 false)
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i1 [ false, %2 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load %struct.dc*, %struct.dc** %3, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load %struct.mpc*, %struct.mpc** %34, align 8
  store %struct.mpc* %35, %struct.mpc** %10, align 8
  %36 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store %struct.mpc_tree* %40, %struct.mpc_tree** %11, align 8
  %41 = load %struct.dc*, %struct.dc** %3, align 8
  %42 = getelementptr inbounds %struct.dc, %struct.dc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VISUAL_CONFIRM_HDR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 5
  %50 = call i32 @dcn10_get_hdr_visual_confirm_color(%struct.pipe_ctx* %48, i32* %49)
  br label %72

51:                                               ; preds = %28
  %52 = load %struct.dc*, %struct.dc** %3, align 8
  %53 = getelementptr inbounds %struct.dc, %struct.dc* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VISUAL_CONFIRM_SURFACE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 5
  %61 = call i32 @dcn10_get_surface_visual_confirm_color(%struct.pipe_ctx* %59, i32* %60)
  br label %71

62:                                               ; preds = %51
  %63 = load %struct.dc*, %struct.dc** %3, align 8
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 2
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 5
  %70 = call i32 @color_space_to_black_color(%struct.dc* %63, i32 %68, i32* %69)
  br label %71

71:                                               ; preds = %62, %58
  br label %72

72:                                               ; preds = %71, %47
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* @MPCC_ALPHA_BLEND_MODE_PER_PIXEL_ALPHA, align 4
  %77 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 4
  store i32 %76, i32* %77, align 4
  br label %81

78:                                               ; preds = %72
  %79 = load i32, i32* @MPCC_ALPHA_BLEND_MODE_GLOBAL_ALPHA, align 4
  %80 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 4
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 1
  store i32 255, i32* %83, align 4
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %81
  %91 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %91, i32 0, i32 1
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 2
  store i32 %95, i32* %96, align 4
  br label %99

97:                                               ; preds = %81
  %98 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 2
  store i32 255, i32* %98, align 4
  br label %99

99:                                               ; preds = %97, %90
  %100 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %101 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %100, i32 0, i32 2
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @is_rgb_cspace(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %99
  %111 = phi i1 [ false, %99 ], [ %109, %107 ]
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 3
  store i32 %112, i32* %113, align 4
  %114 = load %struct.hubp*, %struct.hubp** %5, align 8
  %115 = getelementptr inbounds %struct.hubp, %struct.hubp* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %8, align 4
  %117 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %117, i32 0, i32 1
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %110
  %126 = load %struct.mpc*, %struct.mpc** %10, align 8
  %127 = getelementptr inbounds %struct.mpc, %struct.mpc* %126, i32 0, i32 0
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 4
  %130 = load i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)*, i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)** %129, align 8
  %131 = load %struct.mpc*, %struct.mpc** %10, align 8
  %132 = load i32, i32* %8, align 4
  %133 = call i32 %130(%struct.mpc* %131, %struct.mpcc_blnd_cfg* %6, i32 %132)
  br label %207

134:                                              ; preds = %110
  %135 = load %struct.mpc*, %struct.mpc** %10, align 8
  %136 = getelementptr inbounds %struct.mpc, %struct.mpc* %135, i32 0, i32 0
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 3
  %139 = load %struct.mpcc* (%struct.mpc_tree*, i32)*, %struct.mpcc* (%struct.mpc_tree*, i32)** %138, align 8
  %140 = load %struct.mpc_tree*, %struct.mpc_tree** %11, align 8
  %141 = load i32, i32* %8, align 4
  %142 = call %struct.mpcc* %139(%struct.mpc_tree* %140, i32 %141)
  store %struct.mpcc* %142, %struct.mpcc** %9, align 8
  %143 = load %struct.mpcc*, %struct.mpcc** %9, align 8
  %144 = icmp ne %struct.mpcc* %143, null
  br i1 %144, label %145, label %155

145:                                              ; preds = %134
  %146 = load %struct.mpc*, %struct.mpc** %10, align 8
  %147 = getelementptr inbounds %struct.mpc, %struct.mpc* %146, i32 0, i32 0
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  %150 = load i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)*, i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)** %149, align 8
  %151 = load %struct.mpc*, %struct.mpc** %10, align 8
  %152 = load %struct.mpc_tree*, %struct.mpc_tree** %11, align 8
  %153 = load %struct.mpcc*, %struct.mpcc** %9, align 8
  %154 = call i32 %150(%struct.mpc* %151, %struct.mpc_tree* %152, %struct.mpcc* %153)
  br label %175

155:                                              ; preds = %134
  %156 = load %struct.dc*, %struct.dc** %3, align 8
  %157 = getelementptr inbounds %struct.dc, %struct.dc* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %155
  %162 = load %struct.mpc*, %struct.mpc** %10, align 8
  %163 = getelementptr inbounds %struct.mpc, %struct.mpc* %162, i32 0, i32 0
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 1
  %166 = load i32 (%struct.mpc*, i32)*, i32 (%struct.mpc*, i32)** %165, align 8
  %167 = load %struct.dc*, %struct.dc** %3, align 8
  %168 = getelementptr inbounds %struct.dc, %struct.dc* %167, i32 0, i32 0
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load %struct.mpc*, %struct.mpc** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 %166(%struct.mpc* %171, i32 %172)
  br label %174

174:                                              ; preds = %161, %155
  br label %175

175:                                              ; preds = %174, %145
  %176 = load %struct.mpc*, %struct.mpc** %10, align 8
  %177 = getelementptr inbounds %struct.mpc, %struct.mpc* %176, i32 0, i32 0
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load %struct.mpcc* (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc_blnd_cfg*, i32*, i32*, i32, i32)*, %struct.mpcc* (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc_blnd_cfg*, i32*, i32*, i32, i32)** %179, align 8
  %181 = load %struct.dc*, %struct.dc** %3, align 8
  %182 = getelementptr inbounds %struct.dc, %struct.dc* %181, i32 0, i32 0
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 0
  %185 = load %struct.mpc*, %struct.mpc** %184, align 8
  %186 = load %struct.mpc_tree*, %struct.mpc_tree** %11, align 8
  %187 = load %struct.hubp*, %struct.hubp** %5, align 8
  %188 = getelementptr inbounds %struct.hubp, %struct.hubp* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %8, align 4
  %191 = call %struct.mpcc* %180(%struct.mpc* %185, %struct.mpc_tree* %186, %struct.mpcc_blnd_cfg* %6, i32* null, i32* null, i32 %189, i32 %190)
  store %struct.mpcc* %191, %struct.mpcc** %9, align 8
  %192 = load %struct.mpcc*, %struct.mpcc** %9, align 8
  %193 = icmp ne %struct.mpcc* %192, null
  %194 = zext i1 %193 to i32
  %195 = call i32 @ASSERT(i32 %194)
  %196 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %197 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.hubp*, %struct.hubp** %5, align 8
  %203 = getelementptr inbounds %struct.hubp, %struct.hubp* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.hubp*, %struct.hubp** %5, align 8
  %206 = getelementptr inbounds %struct.hubp, %struct.hubp* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %175, %125
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dcn10_get_hdr_visual_confirm_color(%struct.pipe_ctx*, i32*) #2

declare dso_local i32 @dcn10_get_surface_visual_confirm_color(%struct.pipe_ctx*, i32*) #2

declare dso_local i32 @color_space_to_black_color(%struct.dc*, i32, i32*) #2

declare dso_local i64 @is_rgb_cspace(i32) #2

declare dso_local i32 @ASSERT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
