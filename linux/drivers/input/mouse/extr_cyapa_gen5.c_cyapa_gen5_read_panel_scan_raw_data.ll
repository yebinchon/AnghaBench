; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_read_panel_scan_raw_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_read_panel_scan_raw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }
%struct.pip_app_cmd_head = type { i64, i64, i32, i32, i32 }
%struct.gen5_retrieve_panel_scan_data = type { i64, i32, i32 }

@GEN5_CMD_RETRIEVE_PANEL_SCAN = common dso_local global i64 0, align 8
@GEN5_PANEL_SCAN_SELF_DIFFCOUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@GEN5_RESP_DATA_STRUCTURE_OFFSET = common dso_local global i32 0, align 4
@PIP_OUTPUT_REPORT_ADDR = common dso_local global i32 0, align 4
@PIP_APP_CMD_REPORT_ID = common dso_local global i32 0, align 4
@cyapa_sort_tsg_pip_app_resp_data = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GEN5_PWC_DATA_ELEMENT_SIZE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64, i64, i32, i32*, i32*, i32*, i64*)* @cyapa_gen5_read_panel_scan_raw_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_read_panel_scan_raw_data(%struct.cyapa* %0, i64 %1, i64 %2, i32 %3, i32* %4, i32* %5, i32* %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.cyapa*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.pip_app_cmd_head*, align 8
  %19 = alloca %struct.gen5_retrieve_panel_scan_data*, align 8
  %20 = alloca [12 x i64], align 16
  %21 = alloca [256 x i64], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64* %7, i64** %17, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @GEN5_CMD_RETRIEVE_PANEL_SCAN, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @GEN5_PANEL_SCAN_SELF_DIFFCOUNT, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %14, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32*, i32** %16, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %43, %40, %36, %8
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %227

52:                                               ; preds = %46
  %53 = load i64*, i64** %17, align 8
  store i64* %53, i64** %30, align 8
  %54 = load i32, i32* @INT_MIN, align 4
  %55 = load i32*, i32** %14, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @INT_MAX, align 4
  %57 = load i32*, i32** %15, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %25, align 4
  %58 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %59 = sub nsw i32 256, %58
  %60 = sdiv i32 %59, 4
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %23, align 4
  %62 = mul nsw i32 %61, 4
  store i32 %62, i32* %24, align 4
  %63 = getelementptr inbounds [12 x i64], [12 x i64]* %20, i64 0, i64 0
  %64 = bitcast i64* %63 to %struct.pip_app_cmd_head*
  store %struct.pip_app_cmd_head* %64, %struct.pip_app_cmd_head** %18, align 8
  %65 = load i32, i32* @PIP_OUTPUT_REPORT_ADDR, align 4
  %66 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %18, align 8
  %67 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %66, i32 0, i32 4
  %68 = call i32 @put_unaligned_le16(i32 %65, i32* %67)
  %69 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %18, align 8
  %70 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %69, i32 0, i32 3
  %71 = call i32 @put_unaligned_le16(i32 94, i32* %70)
  %72 = load i32, i32* @PIP_APP_CMD_REPORT_ID, align 4
  %73 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %18, align 8
  %74 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %18, align 8
  %77 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.pip_app_cmd_head*, %struct.pip_app_cmd_head** %18, align 8
  %79 = getelementptr inbounds %struct.pip_app_cmd_head, %struct.pip_app_cmd_head* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to %struct.gen5_retrieve_panel_scan_data*
  store %struct.gen5_retrieve_panel_scan_data* %81, %struct.gen5_retrieve_panel_scan_data** %19, align 8
  br label %82

82:                                               ; preds = %215, %52
  %83 = load i32, i32* %25, align 4
  %84 = load %struct.gen5_retrieve_panel_scan_data*, %struct.gen5_retrieve_panel_scan_data** %19, align 8
  %85 = getelementptr inbounds %struct.gen5_retrieve_panel_scan_data, %struct.gen5_retrieve_panel_scan_data* %84, i32 0, i32 2
  %86 = call i32 @put_unaligned_le16(i32 %83, i32* %85)
  %87 = load i32, i32* %23, align 4
  %88 = load %struct.gen5_retrieve_panel_scan_data*, %struct.gen5_retrieve_panel_scan_data** %19, align 8
  %89 = getelementptr inbounds %struct.gen5_retrieve_panel_scan_data, %struct.gen5_retrieve_panel_scan_data* %88, i32 0, i32 1
  %90 = call i32 @put_unaligned_le16(i32 %87, i32* %89)
  %91 = load i64, i64* %12, align 8
  %92 = load %struct.gen5_retrieve_panel_scan_data*, %struct.gen5_retrieve_panel_scan_data** %19, align 8
  %93 = getelementptr inbounds %struct.gen5_retrieve_panel_scan_data, %struct.gen5_retrieve_panel_scan_data* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %95 = load i32, i32* %24, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %22, align 4
  %97 = load %struct.cyapa*, %struct.cyapa** %10, align 8
  %98 = getelementptr inbounds [12 x i64], [12 x i64]* %20, i64 0, i64 0
  %99 = getelementptr inbounds [256 x i64], [256 x i64]* %21, i64 0, i64 0
  %100 = load i32, i32* @cyapa_sort_tsg_pip_app_resp_data, align 4
  %101 = call i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa* %97, i64* %98, i32 96, i64* %99, i32* %22, i32 500, i32 %100, i32 1)
  store i32 %101, i32* %32, align 4
  %102 = load i32, i32* %32, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %82
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %122, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds [256 x i64], [256 x i64]* %21, i64 0, i64 0
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @VALID_CMD_RESP_HEADER(i64* %109, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = getelementptr inbounds [256 x i64], [256 x i64]* %21, i64 0, i64 0
  %115 = call i32 @PIP_CMD_COMPLETE_SUCCESS(i64* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = getelementptr inbounds [256 x i64], [256 x i64]* %21, i64 0, i64 6
  %119 = load i64, i64* %118, align 16
  %120 = load i64, i64* %12, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %117, %113, %108, %104, %82
  %123 = load i32, i32* %32, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32, i32* %32, align 4
  br label %130

127:                                              ; preds = %122
  %128 = load i32, i32* @EAGAIN, align 4
  %129 = sub nsw i32 0, %128
  br label %130

130:                                              ; preds = %127, %125
  %131 = phi i32 [ %126, %125 ], [ %129, %127 ]
  store i32 %131, i32* %9, align 4
  br label %227

132:                                              ; preds = %117
  %133 = getelementptr inbounds [256 x i64], [256 x i64]* %21, i64 0, i64 7
  %134 = call i32 @get_unaligned_le16(i64* %133)
  store i32 %134, i32* %23, align 4
  %135 = load i32, i32* %23, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %216

138:                                              ; preds = %132
  %139 = getelementptr inbounds [256 x i64], [256 x i64]* %21, i64 0, i64 9
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @GEN5_PWC_DATA_ELEMENT_SIZE_MASK, align 8
  %142 = and i64 %140, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %29, align 4
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %23, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %199

149:                                              ; preds = %138
  %150 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  store i32 %150, i32* %31, align 4
  br label %151

151:                                              ; preds = %194, %149
  %152 = load i32, i32* %31, align 4
  %153 = load i32, i32* %23, align 4
  %154 = load i32, i32* %29, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %157 = add nsw i32 %155, %156
  %158 = icmp slt i32 %152, %157
  br i1 %158, label %159, label %198

159:                                              ; preds = %151
  %160 = getelementptr inbounds [256 x i64], [256 x i64]* %21, i64 0, i64 9
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %31, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [256 x i64], [256 x i64]* %21, i64 0, i64 %163
  %165 = load i32, i32* %29, align 4
  %166 = call i64 @cyapa_parse_structure_data(i64 %161, i64* %164, i32 %165)
  store i64 %166, i64* %26, align 8
  %167 = load i64, i64* %26, align 8
  %168 = load i32*, i32** %15, align 8
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @min(i64 %167, i32 %169)
  %171 = load i32*, i32** %15, align 8
  store i32 %170, i32* %171, align 4
  %172 = load i64, i64* %26, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @max(i64 %172, i32 %174)
  %176 = load i32*, i32** %14, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i64*, i64** %30, align 8
  %178 = icmp ne i64* %177, null
  br i1 %178, label %179, label %186

179:                                              ; preds = %159
  %180 = load i64, i64* %26, align 8
  %181 = load i64*, i64** %30, align 8
  %182 = load i32, i32* %28, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = call i32 @put_unaligned_le32(i64 %180, i64* %184)
  br label %186

186:                                              ; preds = %179, %159
  %187 = load i64, i64* %26, align 8
  %188 = load i32, i32* %27, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %27, align 4
  %192 = load i32, i32* %28, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %28, align 4
  br label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %29, align 4
  %196 = load i32, i32* %31, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %31, align 4
  br label %151

198:                                              ; preds = %151
  br label %199

199:                                              ; preds = %198, %138
  %200 = load i32, i32* %28, align 4
  %201 = load i32, i32* %13, align 4
  %202 = icmp sge i32 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %216

204:                                              ; preds = %199
  %205 = load i32, i32* @GEN5_RESP_DATA_STRUCTURE_OFFSET, align 4
  %206 = sext i32 %205 to i64
  %207 = sub i64 2048, %206
  %208 = load i32, i32* %29, align 4
  %209 = sext i32 %208 to i64
  %210 = udiv i64 %207, %209
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %23, align 4
  %212 = load i32, i32* %23, align 4
  %213 = load i32, i32* %29, align 4
  %214 = mul nsw i32 %212, %213
  store i32 %214, i32* %24, align 4
  br label %215

215:                                              ; preds = %204
  br i1 true, label %82, label %216

216:                                              ; preds = %215, %203, %137
  %217 = load i32, i32* %28, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %216
  %220 = load i32, i32* %27, align 4
  %221 = load i32, i32* %28, align 4
  %222 = sdiv i32 %220, %221
  br label %224

223:                                              ; preds = %216
  br label %224

224:                                              ; preds = %223, %219
  %225 = phi i32 [ %222, %219 ], [ 0, %223 ]
  %226 = load i32*, i32** %16, align 8
  store i32 %225, i32* %226, align 4
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %224, %130, %49
  %228 = load i32, i32* %9, align 4
  ret i32 %228
}

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(%struct.cyapa*, i64*, i32, i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @VALID_CMD_RESP_HEADER(i64*, i64) #1

declare dso_local i32 @PIP_CMD_COMPLETE_SUCCESS(i64*) #1

declare dso_local i32 @get_unaligned_le16(i64*) #1

declare dso_local i64 @cyapa_parse_structure_data(i64, i64*, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @max(i64, i32) #1

declare dso_local i32 @put_unaligned_le32(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
