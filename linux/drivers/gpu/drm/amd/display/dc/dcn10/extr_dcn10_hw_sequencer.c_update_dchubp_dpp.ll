; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_update_dchubp_dpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_update_dchubp_dpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_37__, %struct.TYPE_30__*, %struct.TYPE_27__* }
%struct.TYPE_37__ = type { i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.1*, %struct.pipe_ctx*, i32, i32, i32)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)*, i32 (%struct.dc.2*, %struct.pipe_ctx*)* }
%struct.dc.0 = type opaque
%struct.dc.1 = type opaque
%struct.dc.2 = type opaque
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_40__* }
%struct.TYPE_40__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_40__*, i32, i32, i32)* }
%struct.pipe_ctx = type { %struct.TYPE_32__, %struct.TYPE_43__*, %struct.TYPE_36__, i32, i32, i32, i32, %struct.dc_plane_state* }
%struct.TYPE_32__ = type { %struct.TYPE_44__*, %struct.TYPE_31__* }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__, i32, %struct.TYPE_41__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_36__ = type { %struct.TYPE_34__, %struct.TYPE_28__, %struct.dpp*, %struct.hubp* }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.dpp = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.dpp*, i32, i32)* }
%struct.hubp = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32, i32*, %struct.plane_size*, i32, i32*, i32, i32)*, i32 (%struct.hubp*, i32*, i32*)*, i32 (%struct.hubp*, i32*, i32*)*, i32 (%struct.hubp*, i32*, i32*, i32*, i32*)*, i32 (%struct.hubp*, i32)* }
%struct.plane_size = type { i32 }
%struct.dc_plane_state = type { i32, i32, i32, i32, i32, %struct.TYPE_39__, %struct.plane_size }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.dc_state = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_dchubp_dpp(%struct.dc* %0, %struct.pipe_ctx* %1, %struct.dc_state* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca %struct.dc_state*, align 8
  %7 = alloca %struct.hubp*, align 8
  %8 = alloca %struct.dpp*, align 8
  %9 = alloca %struct.dc_plane_state*, align 8
  %10 = alloca %struct.plane_size, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.pipe_ctx* %1, %struct.pipe_ctx** %5, align 8
  store %struct.dc_state* %2, %struct.dc_state** %6, align 8
  %13 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %14, i32 0, i32 3
  %16 = load %struct.hubp*, %struct.hubp** %15, align 8
  store %struct.hubp* %16, %struct.hubp** %7, align 8
  %17 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 2
  %20 = load %struct.dpp*, %struct.dpp** %19, align 8
  store %struct.dpp* %20, %struct.dpp** %8, align 8
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %21, i32 0, i32 7
  %23 = load %struct.dc_plane_state*, %struct.dc_plane_state** %22, align 8
  store %struct.dc_plane_state* %23, %struct.dc_plane_state** %9, align 8
  %24 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %25 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %24, i32 0, i32 6
  %26 = bitcast %struct.plane_size* %10 to i8*
  %27 = bitcast %struct.plane_size* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 8 %27, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  %28 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %29 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %30, i32 0, i32 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %115

34:                                               ; preds = %3
  %35 = load %struct.dc_state*, %struct.dc_state** %6, align 8
  %36 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dc*, %struct.dc** %4, align 8
  %43 = getelementptr inbounds %struct.dc, %struct.dc* %42, i32 0, i32 1
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 2
  %49 = icmp sle i32 %41, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load %struct.dpp*, %struct.dpp** %8, align 8
  %52 = getelementptr inbounds %struct.dpp, %struct.dpp* %51, i32 0, i32 1
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i32 (%struct.dpp*, i32, i32)*, i32 (%struct.dpp*, i32, i32)** %54, align 8
  %56 = load %struct.dpp*, %struct.dpp** %8, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 %55(%struct.dpp* %56, i32 %57, i32 1)
  %59 = load %struct.dc*, %struct.dc** %4, align 8
  %60 = getelementptr inbounds %struct.dc, %struct.dc* %59, i32 0, i32 2
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_40__*, %struct.TYPE_40__** %62, align 8
  %64 = icmp ne %struct.TYPE_40__* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %34
  %66 = load %struct.dc*, %struct.dc** %4, align 8
  %67 = getelementptr inbounds %struct.dc, %struct.dc* %66, i32 0, i32 2
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_40__*, %struct.TYPE_40__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_40__*, i32, i32, i32)*, i32 (%struct.TYPE_40__*, i32, i32, i32)** %73, align 8
  %75 = load %struct.dc*, %struct.dc** %4, align 8
  %76 = getelementptr inbounds %struct.dc, %struct.dc* %75, i32 0, i32 2
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_40__*, %struct.TYPE_40__** %78, align 8
  %80 = load %struct.dpp*, %struct.dpp** %8, align 8
  %81 = getelementptr inbounds %struct.dpp, %struct.dpp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %84 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 %74(%struct.TYPE_40__* %79, i32 %82, i32 %87, i32 0)
  br label %114

89:                                               ; preds = %34
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.dc*, %struct.dc** %4, align 8
  %94 = getelementptr inbounds %struct.dc, %struct.dc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 2
  br label %107

100:                                              ; preds = %89
  %101 = load %struct.dc*, %struct.dc** %4, align 8
  %102 = getelementptr inbounds %struct.dc, %struct.dc* %101, i32 0, i32 1
  %103 = load %struct.TYPE_30__*, %struct.TYPE_30__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  br label %107

107:                                              ; preds = %100, %92
  %108 = phi i32 [ %99, %92 ], [ %106, %100 ]
  %109 = load %struct.dc*, %struct.dc** %4, align 8
  %110 = getelementptr inbounds %struct.dc, %struct.dc* %109, i32 0, i32 1
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %107, %65
  br label %115

115:                                              ; preds = %114, %3
  %116 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %117 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %162

122:                                              ; preds = %115
  %123 = load %struct.hubp*, %struct.hubp** %7, align 8
  %124 = getelementptr inbounds %struct.hubp, %struct.hubp* %123, i32 0, i32 1
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 5
  %127 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %126, align 8
  %128 = load %struct.hubp*, %struct.hubp** %7, align 8
  %129 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %130 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 %127(%struct.hubp* %128, i32 %134)
  %136 = load %struct.hubp*, %struct.hubp** %7, align 8
  %137 = getelementptr inbounds %struct.hubp, %struct.hubp* %136, i32 0, i32 1
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 4
  %140 = load i32 (%struct.hubp*, i32*, i32*, i32*, i32*)*, i32 (%struct.hubp*, i32*, i32*, i32*, i32*)** %139, align 8
  %141 = load %struct.hubp*, %struct.hubp** %7, align 8
  %142 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %143 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %142, i32 0, i32 4
  %144 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %145 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %144, i32 0, i32 3
  %146 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %147 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %146, i32 0, i32 6
  %148 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %149 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %148, i32 0, i32 5
  %150 = call i32 %140(%struct.hubp* %141, i32* %143, i32* %145, i32* %147, i32* %149)
  %151 = load %struct.hubp*, %struct.hubp** %7, align 8
  %152 = getelementptr inbounds %struct.hubp, %struct.hubp* %151, i32 0, i32 1
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 3
  %155 = load i32 (%struct.hubp*, i32*, i32*)*, i32 (%struct.hubp*, i32*, i32*)** %154, align 8
  %156 = load %struct.hubp*, %struct.hubp** %7, align 8
  %157 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %158 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %157, i32 0, i32 4
  %159 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %160 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %159, i32 0, i32 3
  %161 = call i32 %155(%struct.hubp* %156, i32* %158, i32* %160)
  br label %162

162:                                              ; preds = %122, %115
  %163 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %164 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.plane_size, %struct.plane_size* %10, i32 0, i32 0
  store i32 %167, i32* %168, align 4
  %169 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %170 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %171, i32 0, i32 8
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %162
  %176 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %177 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175, %162
  %183 = load %struct.dpp*, %struct.dpp** %8, align 8
  %184 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %185 = call i32 @update_dpp(%struct.dpp* %183, %struct.dc_plane_state* %184)
  br label %186

186:                                              ; preds = %182, %175
  %187 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %188 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %189, i32 0, i32 8
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %207, label %193

193:                                              ; preds = %186
  %194 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %195 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %196, i32 0, i32 11
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %207, label %200

200:                                              ; preds = %193
  %201 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %202 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 10
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %200, %193, %186
  %208 = load %struct.dc*, %struct.dc** %4, align 8
  %209 = getelementptr inbounds %struct.dc, %struct.dc* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %209, i32 0, i32 6
  %211 = load i32 (%struct.dc.2*, %struct.pipe_ctx*)*, i32 (%struct.dc.2*, %struct.pipe_ctx*)** %210, align 8
  %212 = load %struct.dc*, %struct.dc** %4, align 8
  %213 = bitcast %struct.dc* %212 to %struct.dc.2*
  %214 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %215 = call i32 %211(%struct.dc.2* %213, %struct.pipe_ctx* %214)
  br label %216

216:                                              ; preds = %207, %200
  %217 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %218 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %219, i32 0, i32 8
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %251, label %223

223:                                              ; preds = %216
  %224 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %225 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %226, i32 0, i32 11
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %251, label %230

230:                                              ; preds = %223
  %231 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %232 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %233, i32 0, i32 10
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %251, label %237

237:                                              ; preds = %230
  %238 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %239 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %237
  %245 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %246 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %247, i32 0, i32 9
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %244, %237, %230, %223, %216
  %252 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %253 = call i32 @update_scaler(%struct.pipe_ctx* %252)
  br label %254

254:                                              ; preds = %251, %244
  %255 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %256 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %257, i32 0, i32 8
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %275, label %261

261:                                              ; preds = %254
  %262 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %263 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %262, i32 0, i32 5
  %264 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %275, label %268

268:                                              ; preds = %261
  %269 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %270 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %271, i32 0, i32 9
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %291

275:                                              ; preds = %268, %261, %254
  %276 = load %struct.hubp*, %struct.hubp** %7, align 8
  %277 = getelementptr inbounds %struct.hubp, %struct.hubp* %276, i32 0, i32 1
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 2
  %280 = load i32 (%struct.hubp*, i32*, i32*)*, i32 (%struct.hubp*, i32*, i32*)** %279, align 8
  %281 = load %struct.hubp*, %struct.hubp** %7, align 8
  %282 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %283 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %284, i32 0, i32 1
  %286 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %287 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 0
  %290 = call i32 %280(%struct.hubp* %281, i32* %285, i32* %289)
  br label %291

291:                                              ; preds = %275, %268
  %292 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %293 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %292, i32 0, i32 1
  %294 = load %struct.TYPE_43__*, %struct.TYPE_43__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %326

300:                                              ; preds = %291
  %301 = load %struct.dc*, %struct.dc** %4, align 8
  %302 = getelementptr inbounds %struct.dc, %struct.dc* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %302, i32 0, i32 5
  %304 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %303, align 8
  %305 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %306 = call i32 %304(%struct.pipe_ctx* %305)
  %307 = load %struct.dc*, %struct.dc** %4, align 8
  %308 = getelementptr inbounds %struct.dc, %struct.dc* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %308, i32 0, i32 4
  %310 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %309, align 8
  %311 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %312 = call i32 %310(%struct.pipe_ctx* %311)
  %313 = load %struct.dc*, %struct.dc** %4, align 8
  %314 = getelementptr inbounds %struct.dc, %struct.dc* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %314, i32 0, i32 3
  %316 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %315, align 8
  %317 = icmp ne i32 (%struct.pipe_ctx*)* %316, null
  br i1 %317, label %318, label %325

318:                                              ; preds = %300
  %319 = load %struct.dc*, %struct.dc** %4, align 8
  %320 = getelementptr inbounds %struct.dc, %struct.dc* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %320, i32 0, i32 3
  %322 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %321, align 8
  %323 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %324 = call i32 %322(%struct.pipe_ctx* %323)
  br label %325

325:                                              ; preds = %318, %300
  br label %326

326:                                              ; preds = %325, %291
  %327 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %328 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %329, i32 0, i32 8
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %365

333:                                              ; preds = %326
  %334 = load %struct.dc*, %struct.dc** %4, align 8
  %335 = getelementptr inbounds %struct.dc, %struct.dc* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %335, i32 0, i32 2
  %337 = load i32 (%struct.pipe_ctx*)*, i32 (%struct.pipe_ctx*)** %336, align 8
  %338 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %339 = call i32 %337(%struct.pipe_ctx* %338)
  %340 = load %struct.dc*, %struct.dc** %4, align 8
  %341 = getelementptr inbounds %struct.dc, %struct.dc* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %341, i32 0, i32 1
  %343 = load i32 (%struct.dc.1*, %struct.pipe_ctx*, i32, i32, i32)*, i32 (%struct.dc.1*, %struct.pipe_ctx*, i32, i32, i32)** %342, align 8
  %344 = load %struct.dc*, %struct.dc** %4, align 8
  %345 = bitcast %struct.dc* %344 to %struct.dc.1*
  %346 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %347 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %348 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %347, i32 0, i32 1
  %349 = load %struct.TYPE_43__*, %struct.TYPE_43__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %353 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %352, i32 0, i32 1
  %354 = load %struct.TYPE_43__*, %struct.TYPE_43__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %359 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %359, i32 0, i32 0
  %361 = load %struct.TYPE_44__*, %struct.TYPE_44__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = call i32 %343(%struct.dc.1* %345, %struct.pipe_ctx* %346, i32 %351, i32 %357, i32 %363)
  br label %365

365:                                              ; preds = %333, %326
  %366 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %367 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %368, i32 0, i32 8
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %428, label %372

372:                                              ; preds = %365
  %373 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %374 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %375, i32 0, i32 7
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %428, label %379

379:                                              ; preds = %372
  %380 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %381 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %380, i32 0, i32 5
  %382 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %382, i32 0, i32 6
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %428, label %386

386:                                              ; preds = %379
  %387 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %388 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %389, i32 0, i32 5
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %428, label %393

393:                                              ; preds = %386
  %394 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %395 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %396, i32 0, i32 4
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %428, label %400

400:                                              ; preds = %393
  %401 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %402 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %401, i32 0, i32 5
  %403 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %403, i32 0, i32 3
  %405 = load i64, i64* %404, align 8
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %428, label %407

407:                                              ; preds = %400
  %408 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %409 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %408, i32 0, i32 5
  %410 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %410, i32 0, i32 2
  %412 = load i64, i64* %411, align 8
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %428, label %414

414:                                              ; preds = %407
  %415 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %416 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %415, i32 0, i32 5
  %417 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %417, i32 0, i32 1
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %428, label %421

421:                                              ; preds = %414
  %422 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %423 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %422, i32 0, i32 5
  %424 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %450

428:                                              ; preds = %421, %414, %407, %400, %393, %386, %379, %372, %365
  %429 = load %struct.hubp*, %struct.hubp** %7, align 8
  %430 = getelementptr inbounds %struct.hubp, %struct.hubp* %429, i32 0, i32 1
  %431 = load %struct.TYPE_33__*, %struct.TYPE_33__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %431, i32 0, i32 1
  %433 = load i32 (%struct.hubp*, i32, i32*, %struct.plane_size*, i32, i32*, i32, i32)*, i32 (%struct.hubp*, i32, i32*, %struct.plane_size*, i32, i32*, i32, i32)** %432, align 8
  %434 = load %struct.hubp*, %struct.hubp** %7, align 8
  %435 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %436 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %435, i32 0, i32 4
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %439 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %438, i32 0, i32 3
  %440 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %441 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %444 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %443, i32 0, i32 1
  %445 = load %struct.dc_plane_state*, %struct.dc_plane_state** %9, align 8
  %446 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = load i32, i32* %11, align 4
  %449 = call i32 %433(%struct.hubp* %434, i32 %437, i32* %439, %struct.plane_size* %10, i32 %442, i32* %444, i32 %447, i32 %448)
  br label %450

450:                                              ; preds = %428, %421
  %451 = load %struct.hubp*, %struct.hubp** %7, align 8
  %452 = getelementptr inbounds %struct.hubp, %struct.hubp* %451, i32 0, i32 0
  store i32 0, i32* %452, align 8
  %453 = load %struct.dc*, %struct.dc** %4, align 8
  %454 = getelementptr inbounds %struct.dc, %struct.dc* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %454, i32 0, i32 0
  %456 = load i32 (%struct.dc.0*, %struct.pipe_ctx*)*, i32 (%struct.dc.0*, %struct.pipe_ctx*)** %455, align 8
  %457 = load %struct.dc*, %struct.dc** %4, align 8
  %458 = bitcast %struct.dc* %457 to %struct.dc.0*
  %459 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %460 = call i32 %456(%struct.dc.0* %458, %struct.pipe_ctx* %459)
  %461 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %462 = call i64 @is_pipe_tree_visible(%struct.pipe_ctx* %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %472

464:                                              ; preds = %450
  %465 = load %struct.hubp*, %struct.hubp** %7, align 8
  %466 = getelementptr inbounds %struct.hubp, %struct.hubp* %465, i32 0, i32 1
  %467 = load %struct.TYPE_33__*, %struct.TYPE_33__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %467, i32 0, i32 0
  %469 = load i32 (%struct.hubp*, i32)*, i32 (%struct.hubp*, i32)** %468, align 8
  %470 = load %struct.hubp*, %struct.hubp** %7, align 8
  %471 = call i32 %469(%struct.hubp* %470, i32 0)
  br label %472

472:                                              ; preds = %464, %450
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @update_dpp(%struct.dpp*, %struct.dc_plane_state*) #2

declare dso_local i32 @update_scaler(%struct.pipe_ctx*) #2

declare dso_local i64 @is_pipe_tree_visible(%struct.pipe_ctx*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
