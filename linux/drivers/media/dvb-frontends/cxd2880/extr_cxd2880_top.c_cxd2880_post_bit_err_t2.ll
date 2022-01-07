; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_post_bit_err_t2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_post_bit_err_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)* }

@CXD2880_DVBT2_FEC_LDPC_16K = common dso_local global i32 0, align 4
@CXD2880_DVBT2_R1_2 = common dso_local global i32 0, align 4
@cxd2880_post_bit_err_t2.n_bch_bits_lookup = internal constant [2 x [8 x i32]] [[8 x i32] [i32 7200, i32 9720, i32 10800, i32 11880, i32 12600, i32 13320, i32 5400, i32 6480], [8 x i32] [i32 32400, i32 38880, i32 43200, i32 48600, i32 51840, i32 54000, i32 21600, i32 25920]], align 16
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@CXD2880_TNRDMD_STATE_ACTIVE = common dso_local global i64 0, align 8
@CXD2880_DTV_SYS_DVBT2 = common dso_local global i64 0, align 8
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CXD2880_DVBT2_FEC_LDPC_64K = common dso_local global i32 0, align 4
@CXD2880_DVBT2_R2_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32*, i32*)* @cxd2880_post_bit_err_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_post_bit_err_t2(%struct.cxd2880_tnrdmd* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxd2880_tnrdmd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @CXD2880_DVBT2_FEC_LDPC_16K, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @CXD2880_DVBT2_R1_2, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %17 = icmp ne %struct.cxd2880_tnrdmd* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %231

27:                                               ; preds = %21
  %28 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %29 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %231

36:                                               ; preds = %27
  %37 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %38 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CXD2880_TNRDMD_STATE_ACTIVE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %231

45:                                               ; preds = %36
  %46 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %47 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CXD2880_DTV_SYS_DVBT2, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %231

54:                                               ; preds = %45
  %55 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %56 = call i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %4, align 4
  br label %231

61:                                               ; preds = %54
  %62 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %63 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %62, i32 0, i32 3
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %65, align 8
  %67 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %68 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %67, i32 0, i32 3
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %71 = call i32 %66(%struct.TYPE_7__* %69, i32 %70, i32 0, i32 11)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %61
  %75 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %76 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %75)
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %4, align 4
  br label %231

78:                                               ; preds = %61
  %79 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %80 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %79, i32 0, i32 3
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)** %82, align 8
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %85 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %84, i32 0, i32 3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %89 = call i32 %83(%struct.TYPE_7__* %86, i32 %87, i32 21, i32* %88, i32 3)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %78
  %93 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %94 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %93)
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %4, align 4
  br label %231

96:                                               ; preds = %78
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 64
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %103 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %102)
  %104 = load i32, i32* @EAGAIN, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %231

106:                                              ; preds = %96
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 63
  %110 = shl i32 %109, 16
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = or i32 %110, %113
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %114, %116
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %119 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %120 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %119, i32 0, i32 3
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)** %122, align 8
  %124 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %125 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %129 = call i32 %123(%struct.TYPE_7__* %126, i32 %127, i32 157, i32* %128, i32 1)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %106
  %133 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %134 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %133)
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %4, align 4
  br label %231

136:                                              ; preds = %106
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 7
  store i32 %139, i32* %12, align 4
  %140 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %141 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %140, i32 0, i32 3
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)** %143, align 8
  %145 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %146 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %145, i32 0, i32 3
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %150 = call i32 %144(%struct.TYPE_7__* %147, i32 %148, i32 160, i32* %149, i32 1)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %136
  %154 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %155 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %154)
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %4, align 4
  br label %231

157:                                              ; preds = %136
  %158 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 3
  store i32 %160, i32* %11, align 4
  %161 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %162 = call i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd* %161)
  %163 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %164 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %163, i32 0, i32 3
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32 (%struct.TYPE_7__*, i32, i32, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32)** %166, align 8
  %168 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %169 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %168, i32 0, i32 3
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %172 = call i32 %167(%struct.TYPE_7__* %170, i32 %171, i32 0, i32 32)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %157
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %4, align 4
  br label %231

177:                                              ; preds = %157
  %178 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %179 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %178, i32 0, i32 3
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_7__*, i32, i32, i32*, i32)** %181, align 8
  %183 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %5, align 8
  %184 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %183, i32 0, i32 3
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %188 = call i32 %182(%struct.TYPE_7__* %185, i32 %186, i32 114, i32* %187, i32 1)
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %177
  %192 = load i32, i32* %13, align 4
  store i32 %192, i32* %4, align 4
  br label %231

193:                                              ; preds = %177
  %194 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, 15
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %11, align 4
  %198 = load i32, i32* @CXD2880_DVBT2_FEC_LDPC_64K, align 4
  %199 = icmp ugt i32 %197, %198
  br i1 %199, label %204, label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @CXD2880_DVBT2_R2_5, align 4
  %203 = icmp ugt i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %200, %193
  %205 = load i32, i32* @EAGAIN, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %231

207:                                              ; preds = %200
  %208 = load i32, i32* %11, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @cxd2880_post_bit_err_t2.n_bch_bits_lookup, i64 0, i64 %209
  %211 = load i32, i32* %12, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [8 x i32], [8 x i32]* %210, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %9, align 4
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %8, align 4
  %218 = shl i32 1, %217
  %219 = load i32, i32* %9, align 4
  %220 = mul i32 %218, %219
  %221 = icmp ugt i32 %216, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %207
  %223 = load i32, i32* @EAGAIN, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %231

225:                                              ; preds = %207
  %226 = load i32, i32* %8, align 4
  %227 = shl i32 1, %226
  %228 = load i32, i32* %9, align 4
  %229 = mul i32 %227, %228
  %230 = load i32*, i32** %7, align 8
  store i32 %229, i32* %230, align 4
  store i32 0, i32* %4, align 4
  br label %231

231:                                              ; preds = %225, %222, %204, %191, %175, %153, %132, %101, %92, %74, %59, %51, %42, %33, %24
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @slvt_freeze_reg(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @slvt_unfreeze_reg(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
