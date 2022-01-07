; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.cxd2880_tnrdmd* }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_STATE_SLEEP = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CLOCKMODE_UNKNOWN = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CLOCKMODE_C = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_set_cfg(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %13 = icmp ne %struct.cxd2880_tnrdmd* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %788

17:                                               ; preds = %3
  %18 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %788

32:                                               ; preds = %23, %17
  %33 = load i32, i32* %6, align 4
  switch i32 %33, label %767 [
    i32 147, label %34
    i32 134, label %56
    i32 135, label %78
    i32 141, label %100
    i32 148, label %122
    i32 144, label %144
    i32 142, label %160
    i32 133, label %188
    i32 140, label %216
    i32 139, label %244
    i32 138, label %266
    i32 136, label %285
    i32 137, label %307
    i32 143, label %326
    i32 145, label %348
    i32 128, label %370
    i32 132, label %398
    i32 146, label %414
    i32 151, label %463
    i32 149, label %491
    i32 150, label %505
    i32 152, label %520
    i32 161, label %535
    i32 159, label %542
    i32 158, label %549
    i32 131, label %556
    i32 130, label %584
    i32 129, label %612
    i32 162, label %640
    i32 155, label %647
    i32 153, label %667
    i32 160, label %687
    i32 157, label %707
    i32 154, label %727
    i32 156, label %747
  ]

34:                                               ; preds = %32
  %35 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %36 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %788

43:                                               ; preds = %34
  %44 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %45 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 0, i32 16
  %50 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %44, i32 %45, i32 0, i32 196, i32 %49, i32 16)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %788

55:                                               ; preds = %43
  br label %770

56:                                               ; preds = %32
  %57 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %58 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %788

65:                                               ; preds = %56
  %66 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %67 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 0, i32 2
  %72 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %66, i32 %67, i32 0, i32 197, i32 %71, i32 2)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %788

77:                                               ; preds = %65
  br label %770

78:                                               ; preds = %32
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %80 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %788

87:                                               ; preds = %78
  %88 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %89 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 0, i32 4
  %94 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %88, i32 %89, i32 0, i32 197, i32 %93, i32 4)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %788

99:                                               ; preds = %87
  br label %770

100:                                              ; preds = %32
  %101 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %102 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %788

109:                                              ; preds = %100
  %110 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %111 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 0, i32 1
  %116 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %110, i32 %111, i32 0, i32 203, i32 %115, i32 1)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %4, align 4
  br label %788

121:                                              ; preds = %109
  br label %770

122:                                              ; preds = %32
  %123 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %124 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %788

131:                                              ; preds = %122
  %132 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %133 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %132, i32 %133, i32 0, i32 197, i32 %137, i32 1)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %4, align 4
  br label %788

143:                                              ; preds = %131
  br label %770

144:                                              ; preds = %32
  %145 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %146 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %4, align 4
  br label %788

153:                                              ; preds = %144
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 1, i32 0
  %158 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %159 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  br label %770

160:                                              ; preds = %32
  %161 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %162 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %788

169:                                              ; preds = %160
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = icmp sgt i32 %173, 31
  br i1 %174, label %175, label %178

175:                                              ; preds = %172, %169
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %788

178:                                              ; preds = %172
  %179 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %180 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %179, i32 %180, i32 0, i32 198, i32 %181, i32 31)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %4, align 4
  br label %788

187:                                              ; preds = %178
  br label %770

188:                                              ; preds = %32
  %189 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %190 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %4, align 4
  br label %788

197:                                              ; preds = %188
  %198 = load i32, i32* %7, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %7, align 4
  %202 = icmp sgt i32 %201, 31
  br i1 %202, label %203, label %206

203:                                              ; preds = %200, %197
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %4, align 4
  br label %788

206:                                              ; preds = %200
  %207 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %208 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %209 = load i32, i32* %7, align 4
  %210 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %207, i32 %208, i32 0, i32 200, i32 %209, i32 31)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %206
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %4, align 4
  br label %788

215:                                              ; preds = %206
  br label %770

216:                                              ; preds = %32
  %217 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %218 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i32, i32* @EINVAL, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %788

225:                                              ; preds = %216
  %226 = load i32, i32* %7, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %7, align 4
  %230 = icmp sgt i32 %229, 31
  br i1 %230, label %231, label %234

231:                                              ; preds = %228, %225
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %4, align 4
  br label %788

234:                                              ; preds = %228
  %235 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %236 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %235, i32 %236, i32 0, i32 201, i32 %237, i32 31)
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  %242 = load i32, i32* %8, align 4
  store i32 %242, i32* %4, align 4
  br label %788

243:                                              ; preds = %234
  br label %770

244:                                              ; preds = %32
  %245 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %246 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %4, align 4
  br label %788

253:                                              ; preds = %244
  %254 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %255 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 1, i32 0
  %260 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %254, i32 %255, i32 0, i32 145, i32 %259, i32 1)
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %253
  %264 = load i32, i32* %8, align 4
  store i32 %264, i32* %4, align 4
  br label %788

265:                                              ; preds = %253
  br label %770

266:                                              ; preds = %32
  %267 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %268 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %266
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %4, align 4
  br label %788

275:                                              ; preds = %266
  %276 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %277 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %278 = load i32, i32* %7, align 4
  %279 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %276, i32 %277, i32 0, i32 81, i32 %278, i32 63)
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %8, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* %8, align 4
  store i32 %283, i32* %4, align 4
  br label %788

284:                                              ; preds = %275
  br label %770

285:                                              ; preds = %32
  %286 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %287 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %290 = icmp ne i64 %288, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %285
  %292 = load i32, i32* @EINVAL, align 4
  %293 = sub nsw i32 0, %292
  store i32 %293, i32* %4, align 4
  br label %788

294:                                              ; preds = %285
  %295 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %296 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %297 = load i32, i32* %7, align 4
  %298 = icmp ne i32 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i32 128, i32 0
  %301 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %295, i32 %296, i32 0, i32 80, i32 %300, i32 128)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %306

304:                                              ; preds = %294
  %305 = load i32, i32* %8, align 4
  store i32 %305, i32* %4, align 4
  br label %788

306:                                              ; preds = %294
  br label %770

307:                                              ; preds = %32
  %308 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %309 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %307
  %314 = load i32, i32* @EINVAL, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %4, align 4
  br label %788

316:                                              ; preds = %307
  %317 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %318 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %319 = load i32, i32* %7, align 4
  %320 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %317, i32 %318, i32 0, i32 80, i32 %319, i32 63)
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %316
  %324 = load i32, i32* %8, align 4
  store i32 %324, i32* %4, align 4
  br label %788

325:                                              ; preds = %316
  br label %770

326:                                              ; preds = %32
  %327 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %328 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %326
  %333 = load i32, i32* @EINVAL, align 4
  %334 = sub nsw i32 0, %333
  store i32 %334, i32* %4, align 4
  br label %788

335:                                              ; preds = %326
  %336 = load i32, i32* %7, align 4
  %337 = icmp slt i32 %336, 0
  br i1 %337, label %341, label %338

338:                                              ; preds = %335
  %339 = load i32, i32* %7, align 4
  %340 = icmp sgt i32 %339, 1
  br i1 %340, label %341, label %344

341:                                              ; preds = %338, %335
  %342 = load i32, i32* @EINVAL, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %4, align 4
  br label %788

344:                                              ; preds = %338
  %345 = load i32, i32* %7, align 4
  %346 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %347 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %346, i32 0, i32 2
  store i32 %345, i32* %347, align 4
  br label %770

348:                                              ; preds = %32
  %349 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %350 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %353 = icmp ne i64 %351, %352
  br i1 %353, label %354, label %357

354:                                              ; preds = %348
  %355 = load i32, i32* @EINVAL, align 4
  %356 = sub nsw i32 0, %355
  store i32 %356, i32* %4, align 4
  br label %788

357:                                              ; preds = %348
  %358 = load i32, i32* %7, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %357
  %361 = load i32, i32* %7, align 4
  %362 = icmp sgt i32 %361, 255
  br i1 %362, label %363, label %366

363:                                              ; preds = %360, %357
  %364 = load i32, i32* @EINVAL, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %4, align 4
  br label %788

366:                                              ; preds = %360
  %367 = load i32, i32* %7, align 4
  %368 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %369 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %368, i32 0, i32 3
  store i32 %367, i32* %369, align 8
  br label %770

370:                                              ; preds = %32
  %371 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %372 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %375 = icmp ne i64 %373, %374
  br i1 %375, label %376, label %379

376:                                              ; preds = %370
  %377 = load i32, i32* @EINVAL, align 4
  %378 = sub nsw i32 0, %377
  store i32 %378, i32* %4, align 4
  br label %788

379:                                              ; preds = %370
  %380 = load i32, i32* %7, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %379
  %383 = load i32, i32* %7, align 4
  %384 = icmp sgt i32 %383, 7
  br i1 %384, label %385, label %388

385:                                              ; preds = %382, %379
  %386 = load i32, i32* @EINVAL, align 4
  %387 = sub nsw i32 0, %386
  store i32 %387, i32* %4, align 4
  br label %788

388:                                              ; preds = %382
  %389 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %390 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %391 = load i32, i32* %7, align 4
  %392 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %389, i32 %390, i32 0, i32 214, i32 %391, i32 7)
  store i32 %392, i32* %8, align 4
  %393 = load i32, i32* %8, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %388
  %396 = load i32, i32* %8, align 4
  store i32 %396, i32* %4, align 4
  br label %788

397:                                              ; preds = %388
  br label %770

398:                                              ; preds = %32
  %399 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %400 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @CXD2880_TNRDMD_STATE_SLEEP, align 8
  %403 = icmp ne i64 %401, %402
  br i1 %403, label %404, label %407

404:                                              ; preds = %398
  %405 = load i32, i32* @EINVAL, align 4
  %406 = sub nsw i32 0, %405
  store i32 %406, i32* %4, align 4
  br label %788

407:                                              ; preds = %398
  %408 = load i32, i32* %7, align 4
  %409 = icmp ne i32 %408, 0
  %410 = zext i1 %409 to i64
  %411 = select i1 %409, i32 1, i32 0
  %412 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %413 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %412, i32 0, i32 4
  store i32 %411, i32* %413, align 4
  br label %770

414:                                              ; preds = %32
  %415 = load i32, i32* %7, align 4
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %420, label %417

417:                                              ; preds = %414
  %418 = load i32, i32* %7, align 4
  %419 = icmp sgt i32 %418, 4096
  br i1 %419, label %420, label %423

420:                                              ; preds = %417, %414
  %421 = load i32, i32* @EINVAL, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %4, align 4
  br label %788

423:                                              ; preds = %417
  %424 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %425 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %426 = load i32, i32* %7, align 4
  %427 = icmp ne i32 %426, 0
  %428 = zext i1 %427 to i64
  %429 = select i1 %427, i32 1, i32 0
  %430 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %424, i32 %425, i32 0, i32 34, i32 %429, i32 1)
  store i32 %430, i32* %8, align 4
  %431 = load i32, i32* %8, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %435

433:                                              ; preds = %423
  %434 = load i32, i32* %8, align 4
  store i32 %434, i32* %4, align 4
  br label %788

435:                                              ; preds = %423
  %436 = load i32, i32* %7, align 4
  %437 = ashr i32 %436, 8
  %438 = and i32 %437, 31
  %439 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %438, i32* %439, align 4
  %440 = load i32, i32* %7, align 4
  %441 = and i32 %440, 255
  %442 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %441, i32* %442, align 4
  %443 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %444 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %445 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %446 = load i32, i32* %445, align 4
  %447 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %443, i32 %444, i32 0, i32 35, i32 %446, i32 31)
  store i32 %447, i32* %8, align 4
  %448 = load i32, i32* %8, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %452

450:                                              ; preds = %435
  %451 = load i32, i32* %8, align 4
  store i32 %451, i32* %4, align 4
  br label %788

452:                                              ; preds = %435
  %453 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %454 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %455 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %453, i32 %454, i32 0, i32 36, i32 %456, i32 255)
  store i32 %457, i32* %8, align 4
  %458 = load i32, i32* %8, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %462

460:                                              ; preds = %452
  %461 = load i32, i32* %8, align 4
  store i32 %461, i32* %4, align 4
  br label %788

462:                                              ; preds = %452
  br label %770

463:                                              ; preds = %32
  %464 = load i32, i32* %7, align 4
  %465 = ashr i32 %464, 8
  %466 = and i32 %465, 255
  %467 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %466, i32* %467, align 4
  %468 = load i32, i32* %7, align 4
  %469 = and i32 %468, 255
  %470 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %469, i32* %470, align 4
  %471 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %472 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %473 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %474 = load i32, i32* %473, align 4
  %475 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %471, i32 %472, i32 0, i32 72, i32 %474, i32 255)
  store i32 %475, i32* %8, align 4
  %476 = load i32, i32* %8, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %463
  %479 = load i32, i32* %8, align 4
  store i32 %479, i32* %4, align 4
  br label %788

480:                                              ; preds = %463
  %481 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %482 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %483 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %484 = load i32, i32* %483, align 4
  %485 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %481, i32 %482, i32 0, i32 73, i32 %484, i32 255)
  store i32 %485, i32* %8, align 4
  %486 = load i32, i32* %8, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %480
  %489 = load i32, i32* %8, align 4
  store i32 %489, i32* %4, align 4
  br label %788

490:                                              ; preds = %480
  br label %770

491:                                              ; preds = %32
  %492 = load i32, i32* %7, align 4
  %493 = and i32 %492, 7
  %494 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %493, i32* %494, align 4
  %495 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %496 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %497 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %495, i32 %496, i32 0, i32 74, i32 %498, i32 7)
  store i32 %499, i32* %8, align 4
  %500 = load i32, i32* %8, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %504

502:                                              ; preds = %491
  %503 = load i32, i32* %8, align 4
  store i32 %503, i32* %4, align 4
  br label %788

504:                                              ; preds = %491
  br label %770

505:                                              ; preds = %32
  %506 = load i32, i32* %7, align 4
  %507 = and i32 %506, 7
  %508 = shl i32 %507, 3
  %509 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %508, i32* %509, align 4
  %510 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %511 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %512 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %510, i32 %511, i32 0, i32 74, i32 %513, i32 56)
  store i32 %514, i32* %8, align 4
  %515 = load i32, i32* %8, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %519

517:                                              ; preds = %505
  %518 = load i32, i32* %8, align 4
  store i32 %518, i32* %4, align 4
  br label %788

519:                                              ; preds = %505
  br label %770

520:                                              ; preds = %32
  %521 = load i32, i32* %7, align 4
  %522 = load i32, i32* @CXD2880_TNRDMD_CLOCKMODE_UNKNOWN, align 4
  %523 = icmp slt i32 %521, %522
  br i1 %523, label %528, label %524

524:                                              ; preds = %520
  %525 = load i32, i32* %7, align 4
  %526 = load i32, i32* @CXD2880_TNRDMD_CLOCKMODE_C, align 4
  %527 = icmp sgt i32 %525, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %524, %520
  %529 = load i32, i32* @EINVAL, align 4
  %530 = sub nsw i32 0, %529
  store i32 %530, i32* %4, align 4
  br label %788

531:                                              ; preds = %524
  %532 = load i32, i32* %7, align 4
  %533 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %534 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %533, i32 0, i32 5
  store i32 %532, i32* %534, align 8
  br label %770

535:                                              ; preds = %32
  %536 = load i32, i32* %7, align 4
  %537 = icmp ne i32 %536, 0
  %538 = zext i1 %537 to i64
  %539 = select i1 %537, i32 1, i32 0
  %540 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %541 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %540, i32 0, i32 6
  store i32 %539, i32* %541, align 4
  br label %770

542:                                              ; preds = %32
  %543 = load i32, i32* %7, align 4
  %544 = icmp ne i32 %543, 0
  %545 = zext i1 %544 to i64
  %546 = select i1 %544, i32 1, i32 0
  %547 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %548 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %547, i32 0, i32 7
  store i32 %546, i32* %548, align 8
  br label %770

549:                                              ; preds = %32
  %550 = load i32, i32* %7, align 4
  %551 = icmp ne i32 %550, 0
  %552 = zext i1 %551 to i64
  %553 = select i1 %551, i32 1, i32 0
  %554 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %555 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %554, i32 0, i32 8
  store i32 %553, i32* %555, align 4
  br label %770

556:                                              ; preds = %32
  %557 = load i32, i32* %7, align 4
  %558 = ashr i32 %557, 8
  %559 = and i32 %558, 7
  %560 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %559, i32* %560, align 4
  %561 = load i32, i32* %7, align 4
  %562 = and i32 %561, 255
  %563 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %562, i32* %563, align 4
  %564 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %565 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %566 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %564, i32 %565, i32 0, i32 153, i32 %567, i32 7)
  store i32 %568, i32* %8, align 4
  %569 = load i32, i32* %8, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %573

571:                                              ; preds = %556
  %572 = load i32, i32* %8, align 4
  store i32 %572, i32* %4, align 4
  br label %788

573:                                              ; preds = %556
  %574 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %575 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %576 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %577 = load i32, i32* %576, align 4
  %578 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %574, i32 %575, i32 0, i32 154, i32 %577, i32 255)
  store i32 %578, i32* %8, align 4
  %579 = load i32, i32* %8, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %583

581:                                              ; preds = %573
  %582 = load i32, i32* %8, align 4
  store i32 %582, i32* %4, align 4
  br label %788

583:                                              ; preds = %573
  br label %770

584:                                              ; preds = %32
  %585 = load i32, i32* %7, align 4
  %586 = ashr i32 %585, 8
  %587 = and i32 %586, 7
  %588 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %587, i32* %588, align 4
  %589 = load i32, i32* %7, align 4
  %590 = and i32 %589, 255
  %591 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %590, i32* %591, align 4
  %592 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %593 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %594 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %595 = load i32, i32* %594, align 4
  %596 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %592, i32 %593, i32 0, i32 155, i32 %595, i32 7)
  store i32 %596, i32* %8, align 4
  %597 = load i32, i32* %8, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %601

599:                                              ; preds = %584
  %600 = load i32, i32* %8, align 4
  store i32 %600, i32* %4, align 4
  br label %788

601:                                              ; preds = %584
  %602 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %603 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %604 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %605 = load i32, i32* %604, align 4
  %606 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %602, i32 %603, i32 0, i32 156, i32 %605, i32 255)
  store i32 %606, i32* %8, align 4
  %607 = load i32, i32* %8, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %611

609:                                              ; preds = %601
  %610 = load i32, i32* %8, align 4
  store i32 %610, i32* %4, align 4
  br label %788

611:                                              ; preds = %601
  br label %770

612:                                              ; preds = %32
  %613 = load i32, i32* %7, align 4
  %614 = ashr i32 %613, 8
  %615 = and i32 %614, 7
  %616 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %615, i32* %616, align 4
  %617 = load i32, i32* %7, align 4
  %618 = and i32 %617, 255
  %619 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %618, i32* %619, align 4
  %620 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %621 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %622 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %623 = load i32, i32* %622, align 4
  %624 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %620, i32 %621, i32 0, i32 157, i32 %623, i32 7)
  store i32 %624, i32* %8, align 4
  %625 = load i32, i32* %8, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %629

627:                                              ; preds = %612
  %628 = load i32, i32* %8, align 4
  store i32 %628, i32* %4, align 4
  br label %788

629:                                              ; preds = %612
  %630 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %631 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %632 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %633 = load i32, i32* %632, align 4
  %634 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %630, i32 %631, i32 0, i32 158, i32 %633, i32 255)
  store i32 %634, i32* %8, align 4
  %635 = load i32, i32* %8, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %639

637:                                              ; preds = %629
  %638 = load i32, i32* %8, align 4
  store i32 %638, i32* %4, align 4
  br label %788

639:                                              ; preds = %629
  br label %770

640:                                              ; preds = %32
  %641 = load i32, i32* %7, align 4
  %642 = icmp ne i32 %641, 0
  %643 = zext i1 %642 to i64
  %644 = select i1 %642, i32 1, i32 0
  %645 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %646 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %645, i32 0, i32 9
  store i32 %644, i32* %646, align 8
  br label %770

647:                                              ; preds = %32
  %648 = load i32, i32* %7, align 4
  %649 = icmp slt i32 %648, 0
  br i1 %649, label %653, label %650

650:                                              ; preds = %647
  %651 = load i32, i32* %7, align 4
  %652 = icmp sgt i32 %651, 31
  br i1 %652, label %653, label %656

653:                                              ; preds = %650, %647
  %654 = load i32, i32* @EINVAL, align 4
  %655 = sub nsw i32 0, %654
  store i32 %655, i32* %4, align 4
  br label %788

656:                                              ; preds = %650
  %657 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %658 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %659 = load i32, i32* %7, align 4
  %660 = and i32 %659, 31
  %661 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %657, i32 %658, i32 16, i32 96, i32 %660, i32 31)
  store i32 %661, i32* %8, align 4
  %662 = load i32, i32* %8, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %666

664:                                              ; preds = %656
  %665 = load i32, i32* %8, align 4
  store i32 %665, i32* %4, align 4
  br label %788

666:                                              ; preds = %656
  br label %770

667:                                              ; preds = %32
  %668 = load i32, i32* %7, align 4
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %673, label %670

670:                                              ; preds = %667
  %671 = load i32, i32* %7, align 4
  %672 = icmp sgt i32 %671, 7
  br i1 %672, label %673, label %676

673:                                              ; preds = %670, %667
  %674 = load i32, i32* @EINVAL, align 4
  %675 = sub nsw i32 0, %674
  store i32 %675, i32* %4, align 4
  br label %788

676:                                              ; preds = %670
  %677 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %678 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %679 = load i32, i32* %7, align 4
  %680 = and i32 %679, 7
  %681 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %677, i32 %678, i32 16, i32 111, i32 %680, i32 7)
  store i32 %681, i32* %8, align 4
  %682 = load i32, i32* %8, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %686

684:                                              ; preds = %676
  %685 = load i32, i32* %8, align 4
  store i32 %685, i32* %4, align 4
  br label %788

686:                                              ; preds = %676
  br label %770

687:                                              ; preds = %32
  %688 = load i32, i32* %7, align 4
  %689 = icmp slt i32 %688, 0
  br i1 %689, label %693, label %690

690:                                              ; preds = %687
  %691 = load i32, i32* %7, align 4
  %692 = icmp sgt i32 %691, 15
  br i1 %692, label %693, label %696

693:                                              ; preds = %690, %687
  %694 = load i32, i32* @EINVAL, align 4
  %695 = sub nsw i32 0, %694
  store i32 %695, i32* %4, align 4
  br label %788

696:                                              ; preds = %690
  %697 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %698 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %699 = load i32, i32* %7, align 4
  %700 = and i32 %699, 15
  %701 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %697, i32 %698, i32 32, i32 114, i32 %700, i32 15)
  store i32 %701, i32* %8, align 4
  %702 = load i32, i32* %8, align 4
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %706

704:                                              ; preds = %696
  %705 = load i32, i32* %8, align 4
  store i32 %705, i32* %4, align 4
  br label %788

706:                                              ; preds = %696
  br label %770

707:                                              ; preds = %32
  %708 = load i32, i32* %7, align 4
  %709 = icmp slt i32 %708, 0
  br i1 %709, label %713, label %710

710:                                              ; preds = %707
  %711 = load i32, i32* %7, align 4
  %712 = icmp sgt i32 %711, 15
  br i1 %712, label %713, label %716

713:                                              ; preds = %710, %707
  %714 = load i32, i32* @EINVAL, align 4
  %715 = sub nsw i32 0, %714
  store i32 %715, i32* %4, align 4
  br label %788

716:                                              ; preds = %710
  %717 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %718 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %719 = load i32, i32* %7, align 4
  %720 = and i32 %719, 15
  %721 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %717, i32 %718, i32 32, i32 111, i32 %720, i32 15)
  store i32 %721, i32* %8, align 4
  %722 = load i32, i32* %8, align 4
  %723 = icmp ne i32 %722, 0
  br i1 %723, label %724, label %726

724:                                              ; preds = %716
  %725 = load i32, i32* %8, align 4
  store i32 %725, i32* %4, align 4
  br label %788

726:                                              ; preds = %716
  br label %770

727:                                              ; preds = %32
  %728 = load i32, i32* %7, align 4
  %729 = icmp slt i32 %728, 0
  br i1 %729, label %733, label %730

730:                                              ; preds = %727
  %731 = load i32, i32* %7, align 4
  %732 = icmp sgt i32 %731, 15
  br i1 %732, label %733, label %736

733:                                              ; preds = %730, %727
  %734 = load i32, i32* @EINVAL, align 4
  %735 = sub nsw i32 0, %734
  store i32 %735, i32* %4, align 4
  br label %788

736:                                              ; preds = %730
  %737 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %738 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %739 = load i32, i32* %7, align 4
  %740 = and i32 %739, 15
  %741 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %737, i32 %738, i32 16, i32 92, i32 %740, i32 15)
  store i32 %741, i32* %8, align 4
  %742 = load i32, i32* %8, align 4
  %743 = icmp ne i32 %742, 0
  br i1 %743, label %744, label %746

744:                                              ; preds = %736
  %745 = load i32, i32* %8, align 4
  store i32 %745, i32* %4, align 4
  br label %788

746:                                              ; preds = %736
  br label %770

747:                                              ; preds = %32
  %748 = load i32, i32* %7, align 4
  %749 = icmp slt i32 %748, 0
  br i1 %749, label %753, label %750

750:                                              ; preds = %747
  %751 = load i32, i32* %7, align 4
  %752 = icmp sgt i32 %751, 15
  br i1 %752, label %753, label %756

753:                                              ; preds = %750, %747
  %754 = load i32, i32* @EINVAL, align 4
  %755 = sub nsw i32 0, %754
  store i32 %755, i32* %4, align 4
  br label %788

756:                                              ; preds = %750
  %757 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %758 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %759 = load i32, i32* %7, align 4
  %760 = and i32 %759, 15
  %761 = call i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd* %757, i32 %758, i32 36, i32 220, i32 %760, i32 15)
  store i32 %761, i32* %8, align 4
  %762 = load i32, i32* %8, align 4
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %766

764:                                              ; preds = %756
  %765 = load i32, i32* %8, align 4
  store i32 %765, i32* %4, align 4
  br label %788

766:                                              ; preds = %756
  br label %770

767:                                              ; preds = %32
  %768 = load i32, i32* @EINVAL, align 4
  %769 = sub nsw i32 0, %768
  store i32 %769, i32* %4, align 4
  br label %788

770:                                              ; preds = %766, %746, %726, %706, %686, %666, %640, %639, %611, %583, %549, %542, %535, %531, %519, %504, %490, %462, %407, %397, %366, %344, %325, %306, %284, %265, %243, %215, %187, %153, %143, %121, %99, %77, %55
  %771 = load i32, i32* %10, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %786

773:                                              ; preds = %770
  %774 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %775 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %774, i32 0, i32 10
  %776 = load i64, i64* %775, align 8
  %777 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %778 = icmp eq i64 %776, %777
  br i1 %778, label %779, label %786

779:                                              ; preds = %773
  %780 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %781 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %780, i32 0, i32 11
  %782 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %781, align 8
  %783 = load i32, i32* %6, align 4
  %784 = load i32, i32* %7, align 4
  %785 = call i32 @cxd2880_tnrdmd_set_cfg(%struct.cxd2880_tnrdmd* %782, i32 %783, i32 %784)
  store i32 %785, i32* %8, align 4
  br label %786

786:                                              ; preds = %779, %773, %770
  %787 = load i32, i32* %8, align 4
  store i32 %787, i32* %4, align 4
  br label %788

788:                                              ; preds = %786, %767, %764, %753, %744, %733, %724, %713, %704, %693, %684, %673, %664, %653, %637, %627, %609, %599, %581, %571, %528, %517, %502, %488, %478, %460, %450, %433, %420, %404, %395, %385, %376, %363, %354, %341, %332, %323, %313, %304, %291, %282, %272, %263, %250, %241, %231, %222, %213, %203, %194, %185, %175, %166, %150, %141, %128, %119, %106, %97, %84, %75, %62, %53, %40, %29, %14
  %789 = load i32, i32* %4, align 4
  ret i32 %789
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cxd2880_tnrdmd_set_and_save_reg_bits(%struct.cxd2880_tnrdmd*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
