; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_link_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_sideband_parse_link_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_sideband_msg_rx = type { i32*, i32 }
%struct.drm_dp_sideband_msg_reply_body = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"link address reply parse length fail %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_reply_body*)* @drm_dp_sideband_parse_link_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_sideband_parse_link_address(%struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_reply_body* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_sideband_msg_rx*, align 8
  %5 = alloca %struct.drm_dp_sideband_msg_reply_body*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_dp_sideband_msg_rx* %0, %struct.drm_dp_sideband_msg_rx** %4, align 8
  store %struct.drm_dp_sideband_msg_reply_body* %1, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  store i32 1, i32* %6, align 4
  %8 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %9 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %14 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @memcpy(i32 %12, i32* %18, i32 16)
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 16
  store i32 %21, i32* %6, align 4
  %22 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %23 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 15
  %30 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %31 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %38 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %304

42:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %300, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %46 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %303

51:                                               ; preds = %43
  %52 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %53 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 128
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %51
  %62 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %63 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %61, %51
  %72 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %73 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 4
  %80 = and i32 %79, 7
  %81 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %82 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 %80, i32* %89, align 4
  %90 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %91 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 15
  %98 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %99 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %97, i32* %106, align 4
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %111 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp sgt i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %71
  br label %304

115:                                              ; preds = %71
  %116 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %117 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 7
  %124 = and i32 %123, 1
  %125 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %126 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  store i32 %124, i32* %133, align 4
  %134 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %135 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 6
  %142 = and i32 %141, 1
  %143 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %144 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  store i32 %142, i32* %151, align 4
  %152 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %153 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %182

163:                                              ; preds = %115
  %164 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %165 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = ashr i32 %170, 5
  %172 = and i32 %171, 1
  %173 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %174 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 5
  store i32 %172, i32* %181, align 4
  br label %182

182:                                              ; preds = %163, %115
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %187 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = icmp sgt i32 %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %304

191:                                              ; preds = %182
  %192 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %193 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %292

203:                                              ; preds = %191
  %204 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %205 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %212 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 6
  store i32 %210, i32* %219, align 4
  %220 = load i32, i32* %6, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %6, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %224 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = icmp sgt i32 %222, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %203
  br label %304

228:                                              ; preds = %203
  %229 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %230 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %240 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %6, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = call i32 @memcpy(i32 %238, i32* %244, i32 16)
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %246, 16
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %250 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = icmp sgt i32 %248, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %228
  br label %304

254:                                              ; preds = %228
  %255 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %256 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = ashr i32 %261, 4
  %263 = and i32 %262, 15
  %264 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %265 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 7
  store i32 %263, i32* %272, align 4
  %273 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %274 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, 15
  %281 = load %struct.drm_dp_sideband_msg_reply_body*, %struct.drm_dp_sideband_msg_reply_body** %5, align 8
  %282 = getelementptr inbounds %struct.drm_dp_sideband_msg_reply_body, %struct.drm_dp_sideband_msg_reply_body* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 8
  store i32 %280, i32* %289, align 4
  %290 = load i32, i32* %6, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %6, align 4
  br label %292

292:                                              ; preds = %254, %191
  %293 = load i32, i32* %6, align 4
  %294 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %295 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = icmp sgt i32 %293, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %292
  br label %304

299:                                              ; preds = %292
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %7, align 4
  br label %43

303:                                              ; preds = %43
  store i32 1, i32* %3, align 4
  br label %310

304:                                              ; preds = %298, %253, %227, %190, %114, %41
  %305 = load i32, i32* %6, align 4
  %306 = load %struct.drm_dp_sideband_msg_rx*, %struct.drm_dp_sideband_msg_rx** %4, align 8
  %307 = getelementptr inbounds %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %305, i32 %308)
  store i32 0, i32* %3, align 4
  br label %310

310:                                              ; preds = %304, %303
  %311 = load i32, i32* %3, align 4
  ret i32 %311
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
