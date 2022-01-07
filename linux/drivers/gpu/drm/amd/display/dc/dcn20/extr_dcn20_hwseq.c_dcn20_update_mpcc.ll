; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_update_mpcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_update_mpcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_19__*, %struct.TYPE_17__ }
%struct.TYPE_19__ = type { %struct.mpc* }
%struct.mpc = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.mpcc* (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc_blnd_cfg*, i32*, i32*, i32, i32)*, i32 (%struct.mpc*, i32)*, i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)*, %struct.mpcc* (%struct.mpc_tree*, i32)*, i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)* }
%struct.mpcc = type { i32 }
%struct.mpc_tree = type { i32 }
%struct.mpcc_blnd_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.pipe_ctx = type { %struct.TYPE_11__, %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.mpc_tree }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.hubp* }
%struct.hubp = type { i32, i32, i32 }

@VISUAL_CONFIRM_HDR = common dso_local global i64 0, align 8
@VISUAL_CONFIRM_SURFACE = common dso_local global i64 0, align 8
@MPCC_ALPHA_BLEND_MODE_PER_PIXEL_ALPHA = common dso_local global i32 0, align 4
@MPCC_ALPHA_BLEND_MODE_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.pipe_ctx*)* @dcn20_update_mpcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_update_mpcc(%struct.dc* %0, %struct.pipe_ctx* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca %struct.hubp*, align 8
  %6 = alloca %struct.mpcc_blnd_cfg, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mpcc*, align 8
  %10 = alloca %struct.mpc*, align 8
  %11 = alloca %struct.mpc_tree*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %4, align 8
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.hubp*, %struct.hubp** %14, align 8
  store %struct.hubp* %15, %struct.hubp** %5, align 8
  %16 = bitcast %struct.mpcc_blnd_cfg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 56, i1 false)
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.dc*, %struct.dc** %3, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.mpc*, %struct.mpc** %25, align 8
  store %struct.mpc* %26, %struct.mpc** %10, align 8
  %27 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  store %struct.mpc_tree* %31, %struct.mpc_tree** %11, align 8
  %32 = load %struct.dc*, %struct.dc** %3, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VISUAL_CONFIRM_HDR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 10
  %41 = call i32 @dcn10_get_hdr_visual_confirm_color(%struct.pipe_ctx* %39, i32* %40)
  br label %54

42:                                               ; preds = %2
  %43 = load %struct.dc*, %struct.dc** %3, align 8
  %44 = getelementptr inbounds %struct.dc, %struct.dc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VISUAL_CONFIRM_SURFACE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 10
  %52 = call i32 @dcn10_get_surface_visual_confirm_color(%struct.pipe_ctx* %50, i32* %51)
  br label %53

53:                                               ; preds = %49, %42
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* @MPCC_ALPHA_BLEND_MODE_PER_PIXEL_ALPHA, align 4
  %59 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 9
  store i32 %58, i32* %59, align 8
  br label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @MPCC_ALPHA_BLEND_MODE_GLOBAL_ALPHA, align 4
  %62 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 9
  store i32 %61, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 1
  store i32 255, i32* %65, align 4
  %66 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %67 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  br label %81

79:                                               ; preds = %63
  %80 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 2
  store i32 255, i32* %80, align 8
  br label %81

81:                                               ; preds = %79, %72
  %82 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 3
  store i32 4, i32* %82, align 4
  %83 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 8
  store i64 0, i64* %83, align 8
  %84 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 4
  store i32 126976, i32* %84, align 8
  %85 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 5
  store i32 126976, i32* %85, align 4
  %86 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 6
  store i32 126976, i32* %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = getelementptr inbounds %struct.mpcc_blnd_cfg, %struct.mpcc_blnd_cfg* %6, i32 0, i32 7
  store i32 %87, i32* %88, align 4
  %89 = load %struct.hubp*, %struct.hubp** %5, align 8
  %90 = getelementptr inbounds %struct.hubp, %struct.hubp* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %8, align 4
  %92 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %93 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %92, i32 0, i32 1
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %81
  %101 = load %struct.mpc*, %struct.mpc** %10, align 8
  %102 = getelementptr inbounds %struct.mpc, %struct.mpc* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 4
  %105 = load i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)*, i32 (%struct.mpc*, %struct.mpcc_blnd_cfg*, i32)** %104, align 8
  %106 = load %struct.mpc*, %struct.mpc** %10, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 %105(%struct.mpc* %106, %struct.mpcc_blnd_cfg* %6, i32 %107)
  br label %182

109:                                              ; preds = %81
  %110 = load %struct.mpc*, %struct.mpc** %10, align 8
  %111 = getelementptr inbounds %struct.mpc, %struct.mpc* %110, i32 0, i32 0
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  %114 = load %struct.mpcc* (%struct.mpc_tree*, i32)*, %struct.mpcc* (%struct.mpc_tree*, i32)** %113, align 8
  %115 = load %struct.mpc_tree*, %struct.mpc_tree** %11, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call %struct.mpcc* %114(%struct.mpc_tree* %115, i32 %116)
  store %struct.mpcc* %117, %struct.mpcc** %9, align 8
  %118 = load %struct.mpcc*, %struct.mpcc** %9, align 8
  %119 = icmp ne %struct.mpcc* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %109
  %121 = load %struct.mpc*, %struct.mpc** %10, align 8
  %122 = getelementptr inbounds %struct.mpc, %struct.mpc* %121, i32 0, i32 0
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 2
  %125 = load i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)*, i32 (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc*)** %124, align 8
  %126 = load %struct.mpc*, %struct.mpc** %10, align 8
  %127 = load %struct.mpc_tree*, %struct.mpc_tree** %11, align 8
  %128 = load %struct.mpcc*, %struct.mpcc** %9, align 8
  %129 = call i32 %125(%struct.mpc* %126, %struct.mpc_tree* %127, %struct.mpcc* %128)
  br label %150

130:                                              ; preds = %109
  %131 = load %struct.dc*, %struct.dc** %3, align 8
  %132 = getelementptr inbounds %struct.dc, %struct.dc* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %130
  %137 = load %struct.mpc*, %struct.mpc** %10, align 8
  %138 = getelementptr inbounds %struct.mpc, %struct.mpc* %137, i32 0, i32 0
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i32 (%struct.mpc*, i32)*, i32 (%struct.mpc*, i32)** %140, align 8
  %142 = load %struct.dc*, %struct.dc** %3, align 8
  %143 = getelementptr inbounds %struct.dc, %struct.dc* %142, i32 0, i32 0
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load %struct.mpc*, %struct.mpc** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 %141(%struct.mpc* %146, i32 %147)
  br label %149

149:                                              ; preds = %136, %130
  br label %150

150:                                              ; preds = %149, %120
  %151 = load %struct.mpc*, %struct.mpc** %10, align 8
  %152 = getelementptr inbounds %struct.mpc, %struct.mpc* %151, i32 0, i32 0
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load %struct.mpcc* (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc_blnd_cfg*, i32*, i32*, i32, i32)*, %struct.mpcc* (%struct.mpc*, %struct.mpc_tree*, %struct.mpcc_blnd_cfg*, i32*, i32*, i32, i32)** %154, align 8
  %156 = load %struct.dc*, %struct.dc** %3, align 8
  %157 = getelementptr inbounds %struct.dc, %struct.dc* %156, i32 0, i32 0
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = load %struct.mpc*, %struct.mpc** %159, align 8
  %161 = load %struct.mpc_tree*, %struct.mpc_tree** %11, align 8
  %162 = load %struct.hubp*, %struct.hubp** %5, align 8
  %163 = getelementptr inbounds %struct.hubp, %struct.hubp* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call %struct.mpcc* %155(%struct.mpc* %160, %struct.mpc_tree* %161, %struct.mpcc_blnd_cfg* %6, i32* null, i32* null, i32 %164, i32 %165)
  store %struct.mpcc* %166, %struct.mpcc** %9, align 8
  %167 = load %struct.mpcc*, %struct.mpcc** %9, align 8
  %168 = icmp ne %struct.mpcc* %167, null
  %169 = zext i1 %168 to i32
  %170 = call i32 @ASSERT(i32 %169)
  %171 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %172 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.hubp*, %struct.hubp** %5, align 8
  %178 = getelementptr inbounds %struct.hubp, %struct.hubp* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.hubp*, %struct.hubp** %5, align 8
  %181 = getelementptr inbounds %struct.hubp, %struct.hubp* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  br label %182

182:                                              ; preds = %150, %100
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dcn10_get_hdr_visual_confirm_color(%struct.pipe_ctx*, i32*) #2

declare dso_local i32 @dcn10_get_surface_visual_confirm_color(%struct.pipe_ctx*, i32*) #2

declare dso_local i32 @ASSERT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
