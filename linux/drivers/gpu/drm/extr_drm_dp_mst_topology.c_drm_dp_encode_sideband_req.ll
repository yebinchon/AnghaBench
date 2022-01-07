; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_encode_sideband_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_encode_sideband_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_req_body = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_18__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32* }
%struct.drm_dp_sideband_msg_tx = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_tx*)* @drm_dp_encode_sideband_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_dp_encode_sideband_req(%struct.drm_dp_sideband_msg_req_body* %0, %struct.drm_dp_sideband_msg_tx* %1) #0 {
  %3 = alloca %struct.drm_dp_sideband_msg_req_body*, align 8
  %4 = alloca %struct.drm_dp_sideband_msg_tx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.drm_dp_sideband_msg_req_body* %0, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  store %struct.drm_dp_sideband_msg_tx* %1, %struct.drm_dp_sideband_msg_tx** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %9 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %12 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 127
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 %14, i32* %19, align 4
  %20 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %21 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %588 [
    i32 135, label %23
    i32 136, label %37
    i32 132, label %171
    i32 131, label %197
    i32 130, label %261
    i32 129, label %347
    i32 128, label %515
    i32 134, label %574
    i32 133, label %574
  ]

23:                                               ; preds = %2
  %24 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %25 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 15
  %30 = shl i32 %29, 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %588

37:                                               ; preds = %2
  %38 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %39 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 6
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 4
  %45 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %46 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = or i32 %44, %50
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %59 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, 127
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %71 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  %82 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %83 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 255
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %135, %37
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %97 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 2
  %102 = icmp slt i32 %95, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %94
  %104 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %105 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = mul nsw i32 %109, 2
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 15
  %115 = shl i32 %114, 4
  %116 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %117 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 6
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = mul nsw i32 %121, 2
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %120, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 15
  %128 = or i32 %115, %127
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %128, i32* %132, align 4
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %103
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %6, align 4
  br label %94

138:                                              ; preds = %94
  %139 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %140 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %138
  %147 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %148 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 6
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  %153 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %154 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 15
  %163 = shl i32 %162, 4
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  %168 = load i32, i32* %5, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %146, %138
  br label %588

171:                                              ; preds = %2
  %172 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %173 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 15
  %178 = shl i32 %177, 4
  %179 = load i32*, i32** %7, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 %178, i32* %182, align 4
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %5, align 4
  %185 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %186 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 127
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %190, i32* %194, align 4
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %588

197:                                              ; preds = %2
  %198 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %199 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, 15
  %204 = shl i32 %203, 4
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %204, i32* %208, align 4
  %209 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %210 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 983040
  %215 = ashr i32 %214, 16
  %216 = and i32 %215, 15
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %216
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %5, align 4
  %225 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %226 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 65280
  %231 = ashr i32 %230, 8
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %231, i32* %235, align 4
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  %238 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %239 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = and i32 %242, 255
  %244 = load i32*, i32** %7, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %243, i32* %247, align 4
  %248 = load i32, i32* %5, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %5, align 4
  %250 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %251 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 4
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = load i32*, i32** %7, align 8
  %256 = load i32, i32* %5, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  store i32 %254, i32* %258, align 4
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %5, align 4
  br label %588

261:                                              ; preds = %2
  %262 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %263 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, 15
  %268 = shl i32 %267, 4
  %269 = load i32*, i32** %7, align 8
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %268, i32* %272, align 4
  %273 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %274 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 983040
  %279 = ashr i32 %278, 16
  %280 = and i32 %279, 15
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = or i32 %285, %280
  store i32 %286, i32* %284, align 4
  %287 = load i32, i32* %5, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %5, align 4
  %289 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %290 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, 65280
  %295 = ashr i32 %294, 8
  %296 = load i32*, i32** %7, align 8
  %297 = load i32, i32* %5, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  store i32 %295, i32* %299, align 4
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %5, align 4
  %302 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %303 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = and i32 %306, 255
  %308 = load i32*, i32** %7, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %307, i32* %311, align 4
  %312 = load i32, i32* %5, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %5, align 4
  %314 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %315 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = load i32*, i32** %7, align 8
  %320 = load i32, i32* %5, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  store i32 %318, i32* %322, align 4
  %323 = load i32, i32* %5, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %5, align 4
  %325 = load i32*, i32** %7, align 8
  %326 = load i32, i32* %5, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %330 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %335 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @memcpy(i32* %328, i32 %333, i32 %338)
  %340 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %341 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %5, align 4
  %346 = add nsw i32 %345, %344
  store i32 %346, i32* %5, align 4
  br label %588

347:                                              ; preds = %2
  %348 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %349 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = and i32 %352, 15
  %354 = shl i32 %353, 4
  %355 = load i32*, i32** %7, align 8
  %356 = load i32, i32* %5, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  store i32 %354, i32* %358, align 4
  %359 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %360 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 2
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = and i32 %363, 3
  %365 = load i32*, i32** %7, align 8
  %366 = load i32, i32* %5, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %364
  store i32 %370, i32* %368, align 4
  %371 = load i32, i32* %5, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %373

373:                                              ; preds = %488, %347
  %374 = load i32, i32* %6, align 4
  %375 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %376 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, 3
  %381 = icmp slt i32 %374, %380
  br i1 %381, label %382, label %491

382:                                              ; preds = %373
  %383 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %384 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 4
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %386, align 8
  %388 = load i32, i32* %6, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = and i32 %392, 127
  %394 = load i32*, i32** %7, align 8
  %395 = load i32, i32* %5, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  store i32 %393, i32* %397, align 4
  %398 = load i32, i32* %5, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %5, align 4
  %400 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %401 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 4
  %404 = load %struct.TYPE_13__*, %struct.TYPE_13__** %403, align 8
  %405 = load i32, i32* %6, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = load i32*, i32** %7, align 8
  %411 = load i32, i32* %5, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  store i32 %409, i32* %413, align 4
  %414 = load i32, i32* %5, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %5, align 4
  %416 = load i32*, i32** %7, align 8
  %417 = load i32, i32* %5, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %421 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 4
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %423, align 8
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %431 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 2
  %433 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %432, i32 0, i32 4
  %434 = load %struct.TYPE_13__*, %struct.TYPE_13__** %433, align 8
  %435 = load i32, i32* %6, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @memcpy(i32* %419, i32 %429, i32 %439)
  %441 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %442 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %443, i32 0, i32 4
  %445 = load %struct.TYPE_13__*, %struct.TYPE_13__** %444, align 8
  %446 = load i32, i32* %6, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %5, align 4
  %452 = add nsw i32 %451, %450
  store i32 %452, i32* %5, align 4
  %453 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %454 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %455, i32 0, i32 4
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %456, align 8
  %458 = load i32, i32* %6, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 4
  %463 = and i32 %462, 1
  %464 = shl i32 %463, 5
  %465 = load i32*, i32** %7, align 8
  %466 = load i32, i32* %5, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  store i32 %464, i32* %468, align 4
  %469 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %470 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %470, i32 0, i32 2
  %472 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %471, i32 0, i32 4
  %473 = load %struct.TYPE_13__*, %struct.TYPE_13__** %472, align 8
  %474 = load i32, i32* %6, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %476, i32 0, i32 3
  %478 = load i32, i32* %477, align 4
  %479 = and i32 %478, 15
  %480 = load i32*, i32** %7, align 8
  %481 = load i32, i32* %5, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = or i32 %484, %479
  store i32 %485, i32* %483, align 4
  %486 = load i32, i32* %5, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %5, align 4
  br label %488

488:                                              ; preds = %382
  %489 = load i32, i32* %6, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %6, align 4
  br label %373

491:                                              ; preds = %373
  %492 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %493 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %493, i32 0, i32 2
  %495 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = and i32 %496, 127
  %498 = load i32*, i32** %7, align 8
  %499 = load i32, i32* %5, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  store i32 %497, i32* %501, align 4
  %502 = load i32, i32* %5, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %5, align 4
  %504 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %505 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %505, i32 0, i32 2
  %507 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %506, i32 0, i32 3
  %508 = load i32, i32* %507, align 4
  %509 = load i32*, i32** %7, align 8
  %510 = load i32, i32* %5, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %509, i64 %511
  store i32 %508, i32* %512, align 4
  %513 = load i32, i32* %5, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %5, align 4
  br label %588

515:                                              ; preds = %2
  %516 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %517 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = and i32 %520, 15
  %522 = shl i32 %521, 4
  %523 = load i32*, i32** %7, align 8
  %524 = load i32, i32* %5, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  store i32 %522, i32* %526, align 4
  %527 = load i32, i32* %5, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %5, align 4
  %529 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %530 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %530, i32 0, i32 1
  %532 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %531, i32 0, i32 1
  %533 = load i32, i32* %532, align 4
  %534 = and i32 %533, 127
  %535 = load i32*, i32** %7, align 8
  %536 = load i32, i32* %5, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %535, i64 %537
  store i32 %534, i32* %538, align 4
  %539 = load i32, i32* %5, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %5, align 4
  %541 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %542 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %541, i32 0, i32 1
  %543 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 4
  %546 = load i32*, i32** %7, align 8
  %547 = load i32, i32* %5, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  store i32 %545, i32* %549, align 4
  %550 = load i32, i32* %5, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %5, align 4
  %552 = load i32*, i32** %7, align 8
  %553 = load i32, i32* %5, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, i32* %552, i64 %554
  %556 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %557 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %557, i32 0, i32 1
  %559 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %558, i32 0, i32 3
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %562 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %563, i32 0, i32 2
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @memcpy(i32* %555, i32 %560, i32 %565)
  %567 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %568 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %567, i32 0, i32 1
  %569 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %569, i32 0, i32 2
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %5, align 4
  %573 = add nsw i32 %572, %571
  store i32 %573, i32* %5, align 4
  br label %588

574:                                              ; preds = %2, %2
  %575 = load %struct.drm_dp_sideband_msg_req_body*, %struct.drm_dp_sideband_msg_req_body** %3, align 8
  %576 = getelementptr inbounds %struct.drm_dp_sideband_msg_req_body, %struct.drm_dp_sideband_msg_req_body* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %577, i32 0, i32 0
  %579 = load i32, i32* %578, align 8
  %580 = and i32 %579, 15
  %581 = shl i32 %580, 4
  %582 = load i32*, i32** %7, align 8
  %583 = load i32, i32* %5, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32, i32* %582, i64 %584
  store i32 %581, i32* %585, align 4
  %586 = load i32, i32* %5, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %5, align 4
  br label %588

588:                                              ; preds = %2, %574, %515, %491, %261, %197, %171, %170, %23
  %589 = load i32, i32* %5, align 4
  %590 = load %struct.drm_dp_sideband_msg_tx*, %struct.drm_dp_sideband_msg_tx** %4, align 8
  %591 = getelementptr inbounds %struct.drm_dp_sideband_msg_tx, %struct.drm_dp_sideband_msg_tx* %590, i32 0, i32 1
  store i32 %589, i32* %591, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
