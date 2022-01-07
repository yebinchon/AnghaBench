; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_mc.c_edac_mc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.dimm_info**, %struct.csrow_info**, %struct.edac_mc_layer*, i8*, i32**, i32** }
%struct.dimm_info = type { i32*, i32, i32, i8*, %struct.mem_ctl_info* }
%struct.csrow_info = type { i32, i32, %struct.rank_info**, %struct.mem_ctl_info* }
%struct.rank_info = type { i32, %struct.dimm_info*, %struct.csrow_info* }
%struct.edac_mc_layer = type { i32, i64, i64 }

@EDAC_MAX_LAYERS = common dso_local global i32 0, align 4
@EDAC_MC_LAYER_CHIP_SELECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"errcount layer %d size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"allocating %d error counters\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"allocating %u bytes for mci data (%d %s, %d csrows/channels)\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ranks\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"dimms\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"EDAC core bug: EDAC_DIMM_OFF is trying to do an illegal data access\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"mc#%u\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s#%u\00", align 1
@edac_layer_name = common dso_local global i8** null, align 8
@OP_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32 %0, i32 %1, %struct.edac_mc_layer* %2, i32 %3) #0 {
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.edac_mc_layer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_ctl_info*, align 8
  %11 = alloca %struct.edac_mc_layer*, align 8
  %12 = alloca %struct.csrow_info*, align 8
  %13 = alloca %struct.rank_info*, align 8
  %14 = alloca %struct.dimm_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.edac_mc_layer* %2, %struct.edac_mc_layer** %8, align 8
  store i32 %3, i32* %9, align 4
  %37 = load i32, i32* @EDAC_MAX_LAYERS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %15, align 8
  %40 = alloca i32*, i64 %38, align 16
  store i64 %38, i64* %16, align 8
  %41 = load i32, i32* @EDAC_MAX_LAYERS, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32*, i64 %42, align 16
  store i64 %42, i64* %17, align 8
  %44 = load i32, i32* @EDAC_MAX_LAYERS, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %18, align 8
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i8* null, i8** %27, align 8
  store i32 0, i32* %35, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EDAC_MAX_LAYERS, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %50, %4
  %54 = phi i1 [ true, %4 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  store i32 0, i32* %28, align 4
  br label %57

57:                                               ; preds = %106, %53
  %58 = load i32, i32* %28, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %109

61:                                               ; preds = %57
  %62 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %63 = load i32, i32* %28, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %62, i64 %64
  %66 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %20, align 4
  %69 = mul i32 %68, %67
  store i32 %69, i32* %20, align 4
  %70 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %71 = load i32, i32* %28, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %70, i64 %72
  %74 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %61
  %78 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %79 = load i32, i32* %28, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %78, i64 %80
  %82 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %22, align 4
  %85 = mul i32 %84, %83
  store i32 %85, i32* %22, align 4
  br label %95

86:                                               ; preds = %61
  %87 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %88 = load i32, i32* %28, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %87, i64 %89
  %91 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %23, align 4
  %94 = mul i32 %93, %92
  store i32 %94, i32* %23, align 4
  br label %95

95:                                               ; preds = %86, %77
  %96 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %97 = load i32, i32* %28, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %96, i64 %98
  %100 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @EDAC_MC_LAYER_CHIP_SELECT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  store i32 1, i32* %35, align 4
  br label %105

105:                                              ; preds = %104, %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %28, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %28, align 4
  br label %57

109:                                              ; preds = %57
  %110 = call i8* @edac_align_ptr(i8** %27, i32 80, i32 1)
  %111 = bitcast i8* %110 to %struct.mem_ctl_info*
  store %struct.mem_ctl_info* %111, %struct.mem_ctl_info** %10, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i8* @edac_align_ptr(i8** %27, i32 24, i32 %112)
  %114 = bitcast i8* %113 to %struct.edac_mc_layer*
  store %struct.edac_mc_layer* %114, %struct.edac_mc_layer** %11, align 8
  store i32 0, i32* %28, align 4
  br label %115

115:                                              ; preds = %147, %109
  %116 = load i32, i32* %28, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %115
  %120 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %121 = load i32, i32* %28, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %120, i64 %122
  %124 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %21, align 4
  %127 = mul i32 %126, %125
  store i32 %127, i32* %21, align 4
  %128 = load i32, i32* %28, align 4
  %129 = load i32, i32* %21, align 4
  %130 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load i32, i32* %21, align 4
  %132 = call i8* @edac_align_ptr(i8** %27, i32 4, i32 %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %28, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %40, i64 %135
  store i32* %133, i32** %136, align 8
  %137 = load i32, i32* %21, align 4
  %138 = call i8* @edac_align_ptr(i8** %27, i32 4, i32 %137)
  %139 = bitcast i8* %138 to i32*
  %140 = load i32, i32* %28, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %43, i64 %141
  store i32* %139, i32** %142, align 8
  %143 = load i32, i32* %21, align 4
  %144 = mul i32 2, %143
  %145 = load i32, i32* %24, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %24, align 4
  br label %147

147:                                              ; preds = %119
  %148 = load i32, i32* %28, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %28, align 4
  br label %115

150:                                              ; preds = %115
  %151 = load i32, i32* %24, align 4
  %152 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = call i8* @edac_align_ptr(i8** %27, i32 %153, i32 1)
  store i8* %154, i8** %25, align 8
  %155 = load i8*, i8** %25, align 8
  %156 = ptrtoint i8* %155 to i64
  %157 = load i32, i32* %9, align 4
  %158 = zext i32 %157 to i64
  %159 = add i64 %156, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %35, align 4
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %23, align 4
  %169 = mul i32 %167, %168
  %170 = call i32 (i32, i8*, i32, ...) @edac_dbg(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %162, i8* %166, i32 %169)
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* @GFP_KERNEL, align 4
  %173 = call i8* @kzalloc(i32 %171, i32 %172)
  %174 = bitcast i8* %173 to %struct.mem_ctl_info*
  store %struct.mem_ctl_info* %174, %struct.mem_ctl_info** %10, align 8
  %175 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %176 = icmp eq %struct.mem_ctl_info* %175, null
  br i1 %176, label %177, label %178

177:                                              ; preds = %150
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %5, align 8
  store i32 1, i32* %36, align 4
  br label %561

178:                                              ; preds = %150
  %179 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %180 = bitcast %struct.mem_ctl_info* %179 to i8*
  %181 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %11, align 8
  %182 = ptrtoint %struct.edac_mc_layer* %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = bitcast i8* %183 to %struct.edac_mc_layer*
  store %struct.edac_mc_layer* %184, %struct.edac_mc_layer** %11, align 8
  store i32 0, i32* %28, align 4
  br label %185

185:                                              ; preds = %220, %178
  %186 = load i32, i32* %28, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ult i32 %186, %187
  br i1 %188, label %189, label %223

189:                                              ; preds = %185
  %190 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %191 = bitcast %struct.mem_ctl_info* %190 to i8*
  %192 = load i32, i32* %28, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %40, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = ptrtoint i32* %195 to i64
  %197 = getelementptr inbounds i8, i8* %191, i64 %196
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %200 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %199, i32 0, i32 12
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %28, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  store i32* %198, i32** %204, align 8
  %205 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %206 = bitcast %struct.mem_ctl_info* %205 to i8*
  %207 = load i32, i32* %28, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %43, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = ptrtoint i32* %210 to i64
  %212 = getelementptr inbounds i8, i8* %206, i64 %211
  %213 = bitcast i8* %212 to i32*
  %214 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %215 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %214, i32 0, i32 11
  %216 = load i32**, i32*** %215, align 8
  %217 = load i32, i32* %28, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32*, i32** %216, i64 %218
  store i32* %213, i32** %219, align 8
  br label %220

220:                                              ; preds = %189
  %221 = load i32, i32* %28, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %28, align 4
  br label %185

223:                                              ; preds = %185
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %228 = bitcast %struct.mem_ctl_info* %227 to i8*
  %229 = load i8*, i8** %25, align 8
  %230 = ptrtoint i8* %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  br label %233

232:                                              ; preds = %223
  br label %233

233:                                              ; preds = %232, %226
  %234 = phi i8* [ %231, %226 ], [ null, %232 ]
  store i8* %234, i8** %25, align 8
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %237 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %20, align 4
  %239 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %240 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load i8*, i8** %25, align 8
  %242 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %243 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %242, i32 0, i32 10
  store i8* %241, i8** %243, align 8
  %244 = load i32, i32* %7, align 4
  %245 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %246 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %11, align 8
  %248 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %249 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %248, i32 0, i32 9
  store %struct.edac_mc_layer* %247, %struct.edac_mc_layer** %249, align 8
  %250 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %251 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %250, i32 0, i32 9
  %252 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %251, align 8
  %253 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %254 = load i32, i32* %7, align 4
  %255 = zext i32 %254 to i64
  %256 = mul i64 24, %255
  %257 = trunc i64 %256 to i32
  %258 = call i32 @memcpy(%struct.edac_mc_layer* %252, %struct.edac_mc_layer* %253, i32 %257)
  %259 = load i32, i32* %22, align 4
  %260 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %261 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* %23, align 4
  %263 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %264 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %263, i32 0, i32 4
  store i32 %262, i32* %264, align 8
  %265 = load i32, i32* %35, align 4
  %266 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %267 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 4
  %268 = load i32, i32* %22, align 4
  %269 = load i32, i32* @GFP_KERNEL, align 4
  %270 = call i8* @kcalloc(i32 %268, i32 8, i32 %269)
  %271 = bitcast i8* %270 to %struct.csrow_info**
  %272 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %273 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %272, i32 0, i32 8
  store %struct.csrow_info** %271, %struct.csrow_info*** %273, align 8
  %274 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %275 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %274, i32 0, i32 8
  %276 = load %struct.csrow_info**, %struct.csrow_info*** %275, align 8
  %277 = icmp ne %struct.csrow_info** %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %233
  br label %558

279:                                              ; preds = %233
  store i32 0, i32* %30, align 4
  br label %280

280:                                              ; preds = %349, %279
  %281 = load i32, i32* %30, align 4
  %282 = load i32, i32* %22, align 4
  %283 = icmp ult i32 %281, %282
  br i1 %283, label %284, label %352

284:                                              ; preds = %280
  %285 = load i32, i32* @GFP_KERNEL, align 4
  %286 = call i8* @kzalloc(i32 24, i32 %285)
  %287 = bitcast i8* %286 to %struct.csrow_info*
  store %struct.csrow_info* %287, %struct.csrow_info** %12, align 8
  %288 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %289 = icmp ne %struct.csrow_info* %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %284
  br label %558

291:                                              ; preds = %284
  %292 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %293 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %294 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %293, i32 0, i32 8
  %295 = load %struct.csrow_info**, %struct.csrow_info*** %294, align 8
  %296 = load i32, i32* %30, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %295, i64 %297
  store %struct.csrow_info* %292, %struct.csrow_info** %298, align 8
  %299 = load i32, i32* %30, align 4
  %300 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %301 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 8
  %302 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %303 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %304 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %303, i32 0, i32 3
  store %struct.mem_ctl_info* %302, %struct.mem_ctl_info** %304, align 8
  %305 = load i32, i32* %23, align 4
  %306 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %307 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 4
  %308 = load i32, i32* %23, align 4
  %309 = load i32, i32* @GFP_KERNEL, align 4
  %310 = call i8* @kcalloc(i32 %308, i32 8, i32 %309)
  %311 = bitcast i8* %310 to %struct.rank_info**
  %312 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %313 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %312, i32 0, i32 2
  store %struct.rank_info** %311, %struct.rank_info*** %313, align 8
  %314 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %315 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %314, i32 0, i32 2
  %316 = load %struct.rank_info**, %struct.rank_info*** %315, align 8
  %317 = icmp ne %struct.rank_info** %316, null
  br i1 %317, label %319, label %318

318:                                              ; preds = %291
  br label %558

319:                                              ; preds = %291
  store i32 0, i32* %31, align 4
  br label %320

320:                                              ; preds = %345, %319
  %321 = load i32, i32* %31, align 4
  %322 = load i32, i32* %23, align 4
  %323 = icmp ult i32 %321, %322
  br i1 %323, label %324, label %348

324:                                              ; preds = %320
  %325 = load i32, i32* @GFP_KERNEL, align 4
  %326 = call i8* @kzalloc(i32 24, i32 %325)
  %327 = bitcast i8* %326 to %struct.rank_info*
  store %struct.rank_info* %327, %struct.rank_info** %13, align 8
  %328 = load %struct.rank_info*, %struct.rank_info** %13, align 8
  %329 = icmp ne %struct.rank_info* %328, null
  br i1 %329, label %331, label %330

330:                                              ; preds = %324
  br label %558

331:                                              ; preds = %324
  %332 = load %struct.rank_info*, %struct.rank_info** %13, align 8
  %333 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %334 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %333, i32 0, i32 2
  %335 = load %struct.rank_info**, %struct.rank_info*** %334, align 8
  %336 = load i32, i32* %31, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.rank_info*, %struct.rank_info** %335, i64 %337
  store %struct.rank_info* %332, %struct.rank_info** %338, align 8
  %339 = load i32, i32* %31, align 4
  %340 = load %struct.rank_info*, %struct.rank_info** %13, align 8
  %341 = getelementptr inbounds %struct.rank_info, %struct.rank_info* %340, i32 0, i32 0
  store i32 %339, i32* %341, align 8
  %342 = load %struct.csrow_info*, %struct.csrow_info** %12, align 8
  %343 = load %struct.rank_info*, %struct.rank_info** %13, align 8
  %344 = getelementptr inbounds %struct.rank_info, %struct.rank_info* %343, i32 0, i32 2
  store %struct.csrow_info* %342, %struct.csrow_info** %344, align 8
  br label %345

345:                                              ; preds = %331
  %346 = load i32, i32* %31, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %31, align 4
  br label %320

348:                                              ; preds = %320
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %30, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %30, align 4
  br label %280

352:                                              ; preds = %280
  %353 = load i32, i32* %20, align 4
  %354 = load i32, i32* @GFP_KERNEL, align 4
  %355 = call i8* @kcalloc(i32 %353, i32 8, i32 %354)
  %356 = bitcast i8* %355 to %struct.dimm_info**
  %357 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %358 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %357, i32 0, i32 7
  store %struct.dimm_info** %356, %struct.dimm_info*** %358, align 8
  %359 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %360 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %359, i32 0, i32 7
  %361 = load %struct.dimm_info**, %struct.dimm_info*** %360, align 8
  %362 = icmp ne %struct.dimm_info** %361, null
  br i1 %362, label %364, label %363

363:                                              ; preds = %352
  br label %558

364:                                              ; preds = %352
  %365 = bitcast i32* %46 to i32**
  %366 = mul nuw i64 4, %45
  %367 = trunc i64 %366 to i32
  %368 = call i32 @memset(i32** %365, i32 0, i32 %367)
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %28, align 4
  br label %369

369:                                              ; preds = %550, %364
  %370 = load i32, i32* %28, align 4
  %371 = load i32, i32* %20, align 4
  %372 = icmp ult i32 %370, %371
  br i1 %372, label %373, label %553

373:                                              ; preds = %369
  %374 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %375 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %374, i32 0, i32 8
  %376 = load %struct.csrow_info**, %struct.csrow_info*** %375, align 8
  %377 = load i32, i32* %30, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.csrow_info*, %struct.csrow_info** %376, i64 %378
  %380 = load %struct.csrow_info*, %struct.csrow_info** %379, align 8
  %381 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %380, i32 0, i32 2
  %382 = load %struct.rank_info**, %struct.rank_info*** %381, align 8
  %383 = load i32, i32* %31, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.rank_info*, %struct.rank_info** %382, i64 %384
  %386 = load %struct.rank_info*, %struct.rank_info** %385, align 8
  store %struct.rank_info* %386, %struct.rank_info** %13, align 8
  %387 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %11, align 8
  %388 = load i32, i32* %7, align 4
  %389 = getelementptr inbounds i32, i32* %46, i64 0
  %390 = load i32, i32* %389, align 16
  %391 = getelementptr inbounds i32, i32* %46, i64 1
  %392 = load i32, i32* %391, align 4
  %393 = getelementptr inbounds i32, i32* %46, i64 2
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @EDAC_DIMM_OFF(%struct.edac_mc_layer* %387, i32 %388, i32 %390, i32 %392, i32 %394)
  store i32 %395, i32* %34, align 4
  %396 = load i32, i32* %34, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %402, label %398

398:                                              ; preds = %373
  %399 = load i32, i32* %34, align 4
  %400 = load i32, i32* %20, align 4
  %401 = icmp uge i32 %399, %400
  br i1 %401, label %402, label %406

402:                                              ; preds = %398, %373
  %403 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %404 = load i32, i32* @KERN_ERR, align 4
  %405 = call i32 @edac_mc_printk(%struct.mem_ctl_info* %403, i32 %404, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0))
  br label %558

406:                                              ; preds = %398
  %407 = load i32, i32* @GFP_KERNEL, align 4
  %408 = call i8* @kzalloc(i32 32, i32 %407)
  %409 = bitcast i8* %408 to %struct.dimm_info*
  store %struct.dimm_info* %409, %struct.dimm_info** %14, align 8
  %410 = load %struct.dimm_info*, %struct.dimm_info** %14, align 8
  %411 = icmp ne %struct.dimm_info* %410, null
  br i1 %411, label %413, label %412

412:                                              ; preds = %406
  br label %558

413:                                              ; preds = %406
  %414 = load %struct.dimm_info*, %struct.dimm_info** %14, align 8
  %415 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %416 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %415, i32 0, i32 7
  %417 = load %struct.dimm_info**, %struct.dimm_info*** %416, align 8
  %418 = load i32, i32* %34, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.dimm_info*, %struct.dimm_info** %417, i64 %419
  store %struct.dimm_info* %414, %struct.dimm_info** %420, align 8
  %421 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %422 = load %struct.dimm_info*, %struct.dimm_info** %14, align 8
  %423 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %422, i32 0, i32 4
  store %struct.mem_ctl_info* %421, %struct.mem_ctl_info** %423, align 8
  store i32 8, i32* %33, align 4
  %424 = load %struct.dimm_info*, %struct.dimm_info** %14, align 8
  %425 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %424, i32 0, i32 3
  %426 = load i8*, i8** %425, align 8
  store i8* %426, i8** %26, align 8
  %427 = load i8*, i8** %26, align 8
  %428 = load i32, i32* %33, align 4
  %429 = load i32, i32* %6, align 4
  %430 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %427, i32 %428, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %429)
  store i32 %430, i32* %32, align 4
  %431 = load i32, i32* %32, align 4
  %432 = load i8*, i8** %26, align 8
  %433 = sext i32 %431 to i64
  %434 = getelementptr i8, i8* %432, i64 %433
  store i8* %434, i8** %26, align 8
  %435 = load i32, i32* %32, align 4
  %436 = load i32, i32* %33, align 4
  %437 = sub nsw i32 %436, %435
  store i32 %437, i32* %33, align 4
  store i32 0, i32* %29, align 4
  br label %438

438:                                              ; preds = %480, %413
  %439 = load i32, i32* %29, align 4
  %440 = load i32, i32* %7, align 4
  %441 = icmp ult i32 %439, %440
  br i1 %441, label %442, label %483

442:                                              ; preds = %438
  %443 = load i8*, i8** %26, align 8
  %444 = load i32, i32* %33, align 4
  %445 = load i8**, i8*** @edac_layer_name, align 8
  %446 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %447 = load i32, i32* %29, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %446, i64 %448
  %450 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %449, i32 0, i32 1
  %451 = load i64, i64* %450, align 8
  %452 = getelementptr inbounds i8*, i8** %445, i64 %451
  %453 = load i8*, i8** %452, align 8
  %454 = load i32, i32* %29, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %46, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %443, i32 %444, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %453, i32 %457)
  store i32 %458, i32* %32, align 4
  %459 = load i32, i32* %32, align 4
  %460 = load i8*, i8** %26, align 8
  %461 = sext i32 %459 to i64
  %462 = getelementptr i8, i8* %460, i64 %461
  store i8* %462, i8** %26, align 8
  %463 = load i32, i32* %32, align 4
  %464 = load i32, i32* %33, align 4
  %465 = sub nsw i32 %464, %463
  store i32 %465, i32* %33, align 4
  %466 = load i32, i32* %29, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %46, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.dimm_info*, %struct.dimm_info** %14, align 8
  %471 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %470, i32 0, i32 0
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %29, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  store i32 %469, i32* %475, align 4
  %476 = load i32, i32* %33, align 4
  %477 = icmp sle i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %442
  br label %483

479:                                              ; preds = %442
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %29, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %29, align 4
  br label %438

483:                                              ; preds = %478, %438
  %484 = load %struct.dimm_info*, %struct.dimm_info** %14, align 8
  %485 = load %struct.rank_info*, %struct.rank_info** %13, align 8
  %486 = getelementptr inbounds %struct.rank_info, %struct.rank_info* %485, i32 0, i32 1
  store %struct.dimm_info* %484, %struct.dimm_info** %486, align 8
  %487 = load i32, i32* %30, align 4
  %488 = load %struct.dimm_info*, %struct.dimm_info** %14, align 8
  %489 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %488, i32 0, i32 1
  store i32 %487, i32* %489, align 8
  %490 = load i32, i32* %31, align 4
  %491 = load %struct.dimm_info*, %struct.dimm_info** %14, align 8
  %492 = getelementptr inbounds %struct.dimm_info, %struct.dimm_info* %491, i32 0, i32 2
  store i32 %490, i32* %492, align 4
  %493 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %494 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %493, i64 0
  %495 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %494, i32 0, i32 2
  %496 = load i64, i64* %495, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %508

498:                                              ; preds = %483
  %499 = load i32, i32* %31, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %31, align 4
  %501 = load i32, i32* %31, align 4
  %502 = load i32, i32* %23, align 4
  %503 = icmp eq i32 %501, %502
  br i1 %503, label %504, label %507

504:                                              ; preds = %498
  store i32 0, i32* %31, align 4
  %505 = load i32, i32* %30, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %30, align 4
  br label %507

507:                                              ; preds = %504, %498
  br label %518

508:                                              ; preds = %483
  %509 = load i32, i32* %30, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %30, align 4
  %511 = load i32, i32* %30, align 4
  %512 = load i32, i32* %22, align 4
  %513 = icmp eq i32 %511, %512
  br i1 %513, label %514, label %517

514:                                              ; preds = %508
  store i32 0, i32* %30, align 4
  %515 = load i32, i32* %31, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %31, align 4
  br label %517

517:                                              ; preds = %514, %508
  br label %518

518:                                              ; preds = %517, %507
  %519 = load i32, i32* %7, align 4
  %520 = sub i32 %519, 1
  store i32 %520, i32* %29, align 4
  br label %521

521:                                              ; preds = %546, %518
  %522 = load i32, i32* %29, align 4
  %523 = icmp sge i32 %522, 0
  br i1 %523, label %524, label %549

524:                                              ; preds = %521
  %525 = load i32, i32* %29, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %46, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = add i32 %528, 1
  store i32 %529, i32* %527, align 4
  %530 = load i32, i32* %29, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %46, i64 %531
  %533 = load i32, i32* %532, align 4
  %534 = load %struct.edac_mc_layer*, %struct.edac_mc_layer** %8, align 8
  %535 = load i32, i32* %29, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %534, i64 %536
  %538 = getelementptr inbounds %struct.edac_mc_layer, %struct.edac_mc_layer* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = icmp ult i32 %533, %539
  br i1 %540, label %541, label %542

541:                                              ; preds = %524
  br label %549

542:                                              ; preds = %524
  %543 = load i32, i32* %29, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32, i32* %46, i64 %544
  store i32 0, i32* %545, align 4
  br label %546

546:                                              ; preds = %542
  %547 = load i32, i32* %29, align 4
  %548 = add nsw i32 %547, -1
  store i32 %548, i32* %29, align 4
  br label %521

549:                                              ; preds = %541, %521
  br label %550

550:                                              ; preds = %549
  %551 = load i32, i32* %28, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %28, align 4
  br label %369

553:                                              ; preds = %369
  %554 = load i32, i32* @OP_ALLOC, align 4
  %555 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %556 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %555, i32 0, i32 6
  store i32 %554, i32* %556, align 8
  %557 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  store %struct.mem_ctl_info* %557, %struct.mem_ctl_info** %5, align 8
  store i32 1, i32* %36, align 4
  br label %561

558:                                              ; preds = %412, %402, %363, %330, %318, %290, %278
  %559 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %10, align 8
  %560 = call i32 @_edac_mc_free(%struct.mem_ctl_info* %559)
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %5, align 8
  store i32 1, i32* %36, align 4
  br label %561

561:                                              ; preds = %558, %553, %177
  %562 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %562)
  %563 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  ret %struct.mem_ctl_info* %563
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i8* @edac_align_ptr(i8**, i32, i32) #2

declare dso_local i32 @edac_dbg(i32, i8*, i32, ...) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @memcpy(%struct.edac_mc_layer*, %struct.edac_mc_layer*, i32) #2

declare dso_local i8* @kcalloc(i32, i32, i32) #2

declare dso_local i32 @memset(i32**, i32, i32) #2

declare dso_local i32 @EDAC_DIMM_OFF(%struct.edac_mc_layer*, i32, i32, i32, i32) #2

declare dso_local i32 @edac_mc_printk(%struct.mem_ctl_info*, i32, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @_edac_mc_free(%struct.mem_ctl_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
