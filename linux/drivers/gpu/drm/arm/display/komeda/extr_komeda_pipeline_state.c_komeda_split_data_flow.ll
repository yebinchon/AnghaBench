; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_split_data_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_split_data_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_scaler = type { i64, i64 }
%struct.komeda_data_flow_cfg = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.komeda_scaler*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*)* @komeda_split_data_flow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @komeda_split_data_flow(%struct.komeda_scaler* %0, %struct.komeda_data_flow_cfg* %1, %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg* %3) #0 {
  %5 = alloca %struct.komeda_scaler*, align 8
  %6 = alloca %struct.komeda_data_flow_cfg*, align 8
  %7 = alloca %struct.komeda_data_flow_cfg*, align 8
  %8 = alloca %struct.komeda_data_flow_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.komeda_scaler* %0, %struct.komeda_scaler** %5, align 8
  store %struct.komeda_data_flow_cfg* %1, %struct.komeda_data_flow_cfg** %6, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %7, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %8, align 8
  %14 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %15 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @drm_rotation_90_or_270(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %19 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @has_flip_h(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %23 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %24 = call i32 @memcpy(%struct.komeda_data_flow_cfg* %22, %struct.komeda_data_flow_cfg* %23, i32 96)
  %25 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %26 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %27 = call i32 @memcpy(%struct.komeda_data_flow_cfg* %25, %struct.komeda_data_flow_cfg* %26, i32 96)
  %28 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %29 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %31 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %33 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %32, i32 0, i32 13
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %37 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %36, i32 0, i32 13
  store i64 %35, i64* %37, align 8
  store i64 0, i64* %13, align 8
  %38 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %39 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %4
  %43 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %44 = icmp ne %struct.komeda_scaler* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %47 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %13, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %45, %42, %4
  %52 = load i64, i64* %13, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %55 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %57 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %56, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  %61 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %62 = icmp ne %struct.komeda_scaler* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.komeda_scaler*, %struct.komeda_scaler** %5, align 8
  %65 = getelementptr inbounds %struct.komeda_scaler, %struct.komeda_scaler* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %63, %60, %51
  %70 = load i64, i64* %13, align 8
  %71 = trunc i64 %70 to i32
  %72 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %73 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i64, i64* %13, align 8
  %75 = trunc i64 %74 to i32
  %76 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %77 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %205

80:                                               ; preds = %69
  %81 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %82 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %80
  %86 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %87 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ALIGN(i32 %88, i32 2)
  %90 = sdiv i32 %89, 2
  %91 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %92 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %96 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %98 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %101 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %148

102:                                              ; preds = %80
  %103 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %104 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %102
  %108 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %109 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ALIGN(i32 %110, i32 2)
  %112 = sdiv i32 %111, 2
  %113 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %114 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %112, %115
  %117 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %118 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %120 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = sdiv i32 %121, 2
  %123 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %124 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %122, %125
  %127 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %128 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  br label %147

129:                                              ; preds = %102
  %130 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %131 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  %134 = ashr i32 %133, 1
  %135 = call i32 @ALIGN(i32 %134, i32 2)
  %136 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %137 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %139 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %142 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %140, %143
  %145 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %146 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %129, %107
  br label %148

148:                                              ; preds = %147, %85
  %149 = load i64, i64* %13, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %153 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %152, i32 0, i32 11
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %151
  %157 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %158 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ALIGN(i32 %159, i32 2)
  %161 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %162 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %164 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @ALIGN(i32 %165, i32 2)
  %167 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %168 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %156, %151, %148
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %188

172:                                              ; preds = %169
  %173 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %174 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %173, i32 0, i32 12
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %177 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %175, %179
  %181 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %182 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = sub nsw i64 %180, %184
  %186 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %187 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %186, i32 0, i32 12
  store i64 %185, i64* %187, align 8
  br label %204

188:                                              ; preds = %169
  %189 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %190 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %189, i32 0, i32 12
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %193 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %191, %195
  %197 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %198 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = sub nsw i64 %196, %200
  %202 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %203 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %202, i32 0, i32 12
  store i64 %201, i64* %203, align 8
  br label %204

204:                                              ; preds = %188, %172
  br label %330

205:                                              ; preds = %69
  %206 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %207 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %206, i32 0, i32 9
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %205
  %211 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %212 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ALIGN(i32 %213, i32 2)
  %215 = sdiv i32 %214, 2
  %216 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %217 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %215, %218
  %220 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %221 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %223 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %226 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 4
  br label %273

227:                                              ; preds = %205
  %228 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %229 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %228, i32 0, i32 8
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %254

232:                                              ; preds = %227
  %233 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %234 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @ALIGN(i32 %235, i32 2)
  %237 = sdiv i32 %236, 2
  %238 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %239 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %237, %240
  %242 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %243 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 4
  %244 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %245 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = sdiv i32 %246, 2
  %248 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %249 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %247, %250
  %252 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %253 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %252, i32 0, i32 3
  store i32 %251, i32* %253, align 4
  br label %272

254:                                              ; preds = %227
  %255 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %256 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  %259 = ashr i32 %258, 1
  %260 = call i32 @ALIGN(i32 %259, i32 2)
  %261 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %262 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %261, i32 0, i32 3
  store i32 %260, i32* %262, align 4
  %263 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %264 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %267 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = sub nsw i32 %265, %268
  %270 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %271 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %254, %232
  br label %273

273:                                              ; preds = %272, %210
  %274 = load i64, i64* %13, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %294

276:                                              ; preds = %273
  %277 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %278 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %277, i32 0, i32 11
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %276
  %282 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %283 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @ALIGN(i32 %284, i32 2)
  %286 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %287 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  %288 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %289 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @ALIGN(i32 %290, i32 2)
  %292 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %293 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 4
  br label %294

294:                                              ; preds = %281, %276, %273
  %295 = load i32, i32* %10, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %313

297:                                              ; preds = %294
  %298 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %299 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %303 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %302, i32 0, i32 10
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %301, %304
  %306 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %307 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = sub nsw i64 %305, %309
  %311 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %312 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %311, i32 0, i32 10
  store i64 %310, i64* %312, align 8
  br label %329

313:                                              ; preds = %294
  %314 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %315 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = sext i32 %316 to i64
  %318 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %319 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %318, i32 0, i32 10
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %317, %320
  %322 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %323 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = sub nsw i64 %321, %325
  %327 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %328 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %327, i32 0, i32 10
  store i64 %326, i64* %328, align 8
  br label %329

329:                                              ; preds = %313, %297
  br label %330

330:                                              ; preds = %329, %204
  %331 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %332 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %331, i32 0, i32 9
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %340, label %335

335:                                              ; preds = %330
  %336 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %337 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %336, i32 0, i32 8
  %338 = load i64, i64* %337, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %335, %330
  %341 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %342 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = add nsw i32 %343, 1
  %345 = ashr i32 %344, 1
  %346 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %347 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %346, i32 0, i32 4
  store i32 %345, i32* %347, align 8
  br label %357

348:                                              ; preds = %335
  %349 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %350 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = add nsw i32 %351, 1
  %353 = ashr i32 %352, 1
  %354 = call i32 @ALIGN(i32 %353, i32 2)
  %355 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %356 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %355, i32 0, i32 4
  store i32 %354, i32* %356, align 8
  br label %357

357:                                              ; preds = %348, %340
  %358 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %359 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %362 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 8
  %364 = sub nsw i32 %360, %363
  %365 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %366 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %365, i32 0, i32 4
  store i32 %364, i32* %366, align 8
  %367 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %368 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %371 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %370, i32 0, i32 5
  store i32 %369, i32* %371, align 4
  %372 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %373 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %376 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %374, %377
  %379 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %380 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %379, i32 0, i32 5
  store i32 %378, i32* %380, align 4
  %381 = load i32, i32* %9, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %408

383:                                              ; preds = %357
  %384 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %385 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %388 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = mul nsw i32 %386, %389
  %391 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %392 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = sdiv i32 %390, %393
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %11, align 8
  %396 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %397 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %396, i32 0, i32 4
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %400 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = mul nsw i32 %398, %401
  %403 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %404 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %403, i32 0, i32 2
  %405 = load i32, i32* %404, align 8
  %406 = sdiv i32 %402, %405
  %407 = sext i32 %406 to i64
  store i64 %407, i64* %12, align 8
  br label %433

408:                                              ; preds = %357
  %409 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %410 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %413 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = mul nsw i32 %411, %414
  %416 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %417 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 4
  %419 = sdiv i32 %415, %418
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %11, align 8
  %421 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %422 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %425 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = mul nsw i32 %423, %426
  %428 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %6, align 8
  %429 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 4
  %431 = sdiv i32 %427, %430
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %12, align 8
  br label %433

433:                                              ; preds = %408, %383
  %434 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %435 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %434, i32 0, i32 6
  store i64 0, i64* %435, align 8
  %436 = load i64, i64* %11, align 8
  %437 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %438 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 8
  %440 = sext i32 %439 to i64
  %441 = sub nsw i64 %436, %440
  %442 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %443 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %442, i32 0, i32 7
  store i64 %441, i64* %443, align 8
  %444 = load i64, i64* %12, align 8
  %445 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %446 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 8
  %448 = sext i32 %447 to i64
  %449 = sub nsw i64 %444, %448
  %450 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %451 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %450, i32 0, i32 6
  store i64 %449, i64* %451, align 8
  %452 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %453 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %452, i32 0, i32 7
  store i64 0, i64* %453, align 8
  %454 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %455 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %454, i32 0, i32 7
  %456 = load i64, i64* %455, align 8
  %457 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %458 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %457, i32 0, i32 6
  %459 = load i64, i64* %458, align 8
  %460 = add nsw i64 %456, %459
  %461 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %7, align 8
  %462 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %461, i32 0, i32 4
  %463 = load i32, i32* %462, align 8
  %464 = sext i32 %463 to i64
  %465 = add nsw i64 %464, %460
  %466 = trunc i64 %465 to i32
  store i32 %466, i32* %462, align 8
  %467 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %468 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %467, i32 0, i32 7
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %471 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %470, i32 0, i32 6
  %472 = load i64, i64* %471, align 8
  %473 = add nsw i64 %469, %472
  %474 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %8, align 8
  %475 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %474, i32 0, i32 4
  %476 = load i32, i32* %475, align 8
  %477 = sext i32 %476 to i64
  %478 = add nsw i64 %477, %473
  %479 = trunc i64 %478 to i32
  store i32 %479, i32* %475, align 8
  ret void
}

declare dso_local i32 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @has_flip_h(i32) #1

declare dso_local i32 @memcpy(%struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
