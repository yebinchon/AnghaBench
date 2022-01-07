; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_x_tune2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_x_tune2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)* }
%struct.TYPE_13__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_SYS = common dso_local global i32 0, align 4
@x_tune2_seq1 = common dso_local global i32 0, align 4
@x_tune2_seq2 = common dso_local global i32 0, align 4
@CXD2880_IO_TGT_DMD = common dso_local global i32 0, align 4
@x_tune2_seq3 = common dso_local global i32 0, align 4
@CXD2880_DTV_BW_1_7_MHZ = common dso_local global i32 0, align 4
@x_tune2_seq4 = common dso_local global i32 0, align 4
@x_tune2_seq5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd2880_tnrdmd*, i32, i32, i32)* @x_tune2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x_tune2(%struct.cxd2880_tnrdmd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxd2880_tnrdmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %15 = icmp ne %struct.cxd2880_tnrdmd* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %398

19:                                               ; preds = %4
  %20 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %21 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32)** %23, align 8
  %25 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %26 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %29 = call i32 %24(%struct.TYPE_14__* %27, i32 %28, i32 0, i32 17)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %398

34:                                               ; preds = %19
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 14, i32* %36, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 1, i32* %37, align 4
  %38 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %39 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)** %41, align 8
  %43 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %44 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %43, i32 0, i32 0
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  %46 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %48 = call i32 %42(%struct.TYPE_14__* %45, i32 %46, i32 45, i32* %47, i32 3)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %398

53:                                               ; preds = %34
  %54 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %55 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %58 = load i32, i32* @x_tune2_seq1, align 4
  %59 = load i32, i32* @x_tune2_seq1, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_14__* %56, i32 %57, i32 %58, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %398

66:                                               ; preds = %53
  %67 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %68 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)** %70, align 8
  %72 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %73 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %77 = call i32 %71(%struct.TYPE_14__* %74, i32 %75, i32 44, i32* %76, i32 1)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %398

82:                                               ; preds = %66
  %83 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %84 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32)** %86, align 8
  %88 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %89 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %92 = call i32 %87(%struct.TYPE_14__* %90, i32 %91, i32 0, i32 16)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %398

97:                                               ; preds = %82
  %98 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %99 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32)** %101, align 8
  %103 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %104 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %103, i32 0, i32 0
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  %106 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 %102(%struct.TYPE_14__* %105, i32 %106, i32 96, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %97
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %5, align 4
  br label %398

114:                                              ; preds = %97
  %115 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %116 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load i32, i32* @CXD2880_IO_TGT_SYS, align 4
  %119 = load i32, i32* @x_tune2_seq2, align 4
  %120 = load i32, i32* @x_tune2_seq2, align 4
  %121 = call i32 @ARRAY_SIZE(i32 %120)
  %122 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_14__* %117, i32 %118, i32 %119, i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %5, align 4
  br label %398

127:                                              ; preds = %114
  %128 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %129 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %132 = load i32, i32* @x_tune2_seq3, align 4
  %133 = load i32, i32* @x_tune2_seq3, align 4
  %134 = call i32 @ARRAY_SIZE(i32 %133)
  %135 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_14__* %130, i32 %131, i32 %132, i32 %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %5, align 4
  br label %398

140:                                              ; preds = %127
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %369

143:                                              ; preds = %140
  store i32 0, i32* %12, align 4
  %144 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %145 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32)** %147, align 8
  %149 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %150 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %149, i32 0, i32 0
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %153 = call i32 %148(%struct.TYPE_14__* %151, i32 %152, i32 0, i32 225)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %143
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* %5, align 4
  br label %398

158:                                              ; preds = %143
  %159 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %160 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %159, i32 0, i32 0
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = load i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)** %162, align 8
  %164 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %165 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %164, i32 0, i32 0
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %165, align 8
  %167 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %169 = call i32 %163(%struct.TYPE_14__* %166, i32 %167, i32 96, i32* %168, i32 2)
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %158
  %173 = load i32, i32* %11, align 4
  store i32 %173, i32* %5, align 4
  br label %398

174:                                              ; preds = %158
  %175 = load i32, i32* %9, align 4
  %176 = mul nsw i32 %175, 1000
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %8, align 4
  switch i32 %177, label %179 [
    i32 130, label %178
    i32 128, label %178
    i32 129, label %191
  ]

178:                                              ; preds = %174, %174
  br label %179

179:                                              ; preds = %174, %178
  %180 = load i32, i32* %12, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 91
  %185 = sdiv i32 %184, 183
  store i32 %185, i32* %12, align 4
  br label %190

186:                                              ; preds = %179
  %187 = load i32, i32* %12, align 4
  %188 = sub nsw i32 %187, 91
  %189 = sdiv i32 %188, 183
  store i32 %189, i32* %12, align 4
  br label %190

190:                                              ; preds = %186, %182
  br label %203

191:                                              ; preds = %174
  %192 = load i32, i32* %12, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %191
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 89
  %197 = sdiv i32 %196, 178
  store i32 %197, i32* %12, align 4
  br label %202

198:                                              ; preds = %191
  %199 = load i32, i32* %12, align 4
  %200 = sub nsw i32 %199, 89
  %201 = sdiv i32 %200, 178
  store i32 %201, i32* %12, align 4
  br label %202

202:                                              ; preds = %198, %194
  br label %203

203:                                              ; preds = %202, %190
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = shl i32 %205, 8
  %207 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %206, %208
  %210 = call i64 @cxd2880_convert2s_complement(i32 %209, i32 16)
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = icmp sgt i32 %215, 32767
  br i1 %216, label %217, label %218

217:                                              ; preds = %203
  store i32 32767, i32* %12, align 4
  br label %223

218:                                              ; preds = %203
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %219, -32768
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 -32768, i32* %12, align 4
  br label %222

222:                                              ; preds = %221, %218
  br label %223

223:                                              ; preds = %222, %217
  %224 = load i32, i32* %12, align 4
  %225 = ashr i32 %224, 8
  %226 = and i32 %225, 255
  %227 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %226, i32* %227, align 4
  %228 = load i32, i32* %12, align 4
  %229 = and i32 %228, 255
  %230 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %229, i32* %230, align 4
  %231 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %232 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %231, i32 0, i32 0
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 1
  %235 = load i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)** %234, align 8
  %236 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %237 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %236, i32 0, i32 0
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %241 = call i32 %235(%struct.TYPE_14__* %238, i32 %239, i32 96, i32* %240, i32 2)
  store i32 %241, i32* %11, align 4
  %242 = load i32, i32* %11, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %223
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %5, align 4
  br label %398

246:                                              ; preds = %223
  %247 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %248 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %247, i32 0, i32 0
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 2
  %251 = load i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32*, i32)** %250, align 8
  %252 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %253 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %252, i32 0, i32 0
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %253, align 8
  %255 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %256 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %257 = call i32 %251(%struct.TYPE_14__* %254, i32 %255, i32 105, i32* %256, i32 1)
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %11, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %246
  %261 = load i32, i32* %11, align 4
  store i32 %261, i32* %5, align 4
  br label %398

262:                                              ; preds = %246
  %263 = load i32, i32* %9, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %12, align 4
  %265 = load i32, i32* %7, align 4
  %266 = load i32, i32* @CXD2880_DTV_BW_1_7_MHZ, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %300

268:                                              ; preds = %262
  %269 = load i32, i32* %8, align 4
  switch i32 %269, label %271 [
    i32 130, label %270
    i32 128, label %270
    i32 129, label %285
  ]

270:                                              ; preds = %268, %268
  br label %271

271:                                              ; preds = %268, %270
  %272 = load i32, i32* %12, align 4
  %273 = icmp sge i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %271
  %275 = load i32, i32* %12, align 4
  %276 = mul nsw i32 %275, 1000
  %277 = add nsw i32 %276, 8789
  %278 = sdiv i32 %277, 17578
  store i32 %278, i32* %12, align 4
  br label %284

279:                                              ; preds = %271
  %280 = load i32, i32* %12, align 4
  %281 = mul nsw i32 %280, 1000
  %282 = sub nsw i32 %281, 8789
  %283 = sdiv i32 %282, 17578
  store i32 %283, i32* %12, align 4
  br label %284

284:                                              ; preds = %279, %274
  br label %299

285:                                              ; preds = %268
  %286 = load i32, i32* %12, align 4
  %287 = icmp sge i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = load i32, i32* %12, align 4
  %290 = mul nsw i32 %289, 1000
  %291 = add nsw i32 %290, 8545
  %292 = sdiv i32 %291, 17090
  store i32 %292, i32* %12, align 4
  br label %298

293:                                              ; preds = %285
  %294 = load i32, i32* %12, align 4
  %295 = mul nsw i32 %294, 1000
  %296 = sub nsw i32 %295, 8545
  %297 = sdiv i32 %296, 17090
  store i32 %297, i32* %12, align 4
  br label %298

298:                                              ; preds = %293, %288
  br label %299

299:                                              ; preds = %298, %284
  br label %332

300:                                              ; preds = %262
  %301 = load i32, i32* %8, align 4
  switch i32 %301, label %303 [
    i32 130, label %302
    i32 128, label %302
    i32 129, label %317
  ]

302:                                              ; preds = %300, %300
  br label %303

303:                                              ; preds = %300, %302
  %304 = load i32, i32* %12, align 4
  %305 = icmp sge i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load i32, i32* %12, align 4
  %308 = mul nsw i32 %307, 1000
  %309 = add nsw i32 %308, 17578
  %310 = sdiv i32 %309, 35156
  store i32 %310, i32* %12, align 4
  br label %316

311:                                              ; preds = %303
  %312 = load i32, i32* %12, align 4
  %313 = mul nsw i32 %312, 1000
  %314 = sub nsw i32 %313, 17578
  %315 = sdiv i32 %314, 35156
  store i32 %315, i32* %12, align 4
  br label %316

316:                                              ; preds = %311, %306
  br label %331

317:                                              ; preds = %300
  %318 = load i32, i32* %12, align 4
  %319 = icmp sge i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %317
  %321 = load i32, i32* %12, align 4
  %322 = mul nsw i32 %321, 1000
  %323 = add nsw i32 %322, 17090
  %324 = sdiv i32 %323, 34180
  store i32 %324, i32* %12, align 4
  br label %330

325:                                              ; preds = %317
  %326 = load i32, i32* %12, align 4
  %327 = mul nsw i32 %326, 1000
  %328 = sub nsw i32 %327, 17090
  %329 = sdiv i32 %328, 34180
  store i32 %329, i32* %12, align 4
  br label %330

330:                                              ; preds = %325, %320
  br label %331

331:                                              ; preds = %330, %316
  br label %332

332:                                              ; preds = %331, %299
  %333 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = call i64 @cxd2880_convert2s_complement(i32 %334, i32 8)
  %336 = load i32, i32* %12, align 4
  %337 = sext i32 %336 to i64
  %338 = add nsw i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %12, align 4
  %340 = load i32, i32* %12, align 4
  %341 = icmp sgt i32 %340, 127
  br i1 %341, label %342, label %343

342:                                              ; preds = %332
  store i32 127, i32* %12, align 4
  br label %348

343:                                              ; preds = %332
  %344 = load i32, i32* %12, align 4
  %345 = icmp slt i32 %344, -128
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  store i32 -128, i32* %12, align 4
  br label %347

347:                                              ; preds = %346, %343
  br label %348

348:                                              ; preds = %347, %342
  %349 = load i32, i32* %12, align 4
  %350 = and i32 %349, 255
  %351 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %350, i32* %351, align 4
  %352 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %353 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %352, i32 0, i32 0
  %354 = load %struct.TYPE_14__*, %struct.TYPE_14__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 0
  %356 = load i32 (%struct.TYPE_14__*, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32)** %355, align 8
  %357 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %358 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %357, i32 0, i32 0
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %358, align 8
  %360 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %361 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %362 = load i32, i32* %361, align 4
  %363 = call i32 %356(%struct.TYPE_14__* %359, i32 %360, i32 105, i32 %362)
  store i32 %363, i32* %11, align 4
  %364 = load i32, i32* %11, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %348
  %367 = load i32, i32* %11, align 4
  store i32 %367, i32* %5, align 4
  br label %398

368:                                              ; preds = %348
  br label %369

369:                                              ; preds = %368, %140
  %370 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %371 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %389

375:                                              ; preds = %369
  %376 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %377 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %376, i32 0, i32 0
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %377, align 8
  %379 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %380 = load i32, i32* @x_tune2_seq4, align 4
  %381 = load i32, i32* @x_tune2_seq4, align 4
  %382 = call i32 @ARRAY_SIZE(i32 %381)
  %383 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_14__* %378, i32 %379, i32 %380, i32 %382)
  store i32 %383, i32* %11, align 4
  %384 = load i32, i32* %11, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %375
  %387 = load i32, i32* %11, align 4
  store i32 %387, i32* %5, align 4
  br label %398

388:                                              ; preds = %375
  br label %389

389:                                              ; preds = %388, %369
  %390 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %6, align 8
  %391 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %390, i32 0, i32 0
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %391, align 8
  %393 = load i32, i32* @CXD2880_IO_TGT_DMD, align 4
  %394 = load i32, i32* @x_tune2_seq5, align 4
  %395 = load i32, i32* @x_tune2_seq5, align 4
  %396 = call i32 @ARRAY_SIZE(i32 %395)
  %397 = call i32 @cxd2880_io_write_multi_regs(%struct.TYPE_14__* %392, i32 %393, i32 %394, i32 %396)
  store i32 %397, i32* %5, align 4
  br label %398

398:                                              ; preds = %389, %386, %366, %260, %244, %172, %156, %138, %125, %112, %95, %80, %64, %51, %32, %16
  %399 = load i32, i32* %5, align 4
  ret i32 %399
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cxd2880_io_write_multi_regs(%struct.TYPE_14__*, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i64 @cxd2880_convert2s_complement(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
