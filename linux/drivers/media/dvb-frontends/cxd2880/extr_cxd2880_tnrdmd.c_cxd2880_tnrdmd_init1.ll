; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_tnrdmd.c_cxd2880_tnrdmd_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_tnrdmd = type { i64, %struct.cxd2880_tnrdmd*, i8*, i32, i64, i8*, i8*, i64, i8*, i8* }

@CXD2880_TNRDMD_DIVERMODE_SUB = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_TNRDMD_CHIP_ID_UNKNOWN = common dso_local global i8* null, align 8
@CXD2880_TNRDMD_STATE_UNKNOWN = common dso_local global i8* null, align 8
@CXD2880_TNRDMD_CLOCKMODE_UNKNOWN = common dso_local global i8* null, align 8
@CXD2880_DTV_SYS_UNKNOWN = common dso_local global i8* null, align 8
@CXD2880_DTV_BW_UNKNOWN = common dso_local global i8* null, align 8
@CXD2880_TNRDMD_DIVERMODE_MAIN = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxd2880_tnrdmd_init1(%struct.cxd2880_tnrdmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxd2880_tnrdmd*, align 8
  %4 = alloca i32, align 4
  store %struct.cxd2880_tnrdmd* %0, %struct.cxd2880_tnrdmd** %3, align 8
  %5 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %6 = icmp ne %struct.cxd2880_tnrdmd* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %9 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_SUB, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %223

16:                                               ; preds = %7
  %17 = load i8*, i8** @CXD2880_TNRDMD_CHIP_ID_UNKNOWN, align 8
  %18 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %19 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** @CXD2880_TNRDMD_STATE_UNKNOWN, align 8
  %21 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %22 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %21, i32 0, i32 9
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @CXD2880_TNRDMD_CLOCKMODE_UNKNOWN, align 8
  %24 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %25 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %24, i32 0, i32 8
  store i8* %23, i8** %25, align 8
  %26 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %27 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %26, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** @CXD2880_DTV_SYS_UNKNOWN, align 8
  %29 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %30 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %29, i32 0, i32 6
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @CXD2880_DTV_BW_UNKNOWN, align 8
  %32 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %33 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %35 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %37 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %36, i32 0, i32 3
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %40 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %16
  %45 = load i8*, i8** @CXD2880_TNRDMD_CHIP_ID_UNKNOWN, align 8
  %46 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %47 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %46, i32 0, i32 1
  %48 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %47, align 8
  %49 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %48, i32 0, i32 2
  store i8* %45, i8** %49, align 8
  %50 = load i8*, i8** @CXD2880_TNRDMD_STATE_UNKNOWN, align 8
  %51 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %52 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %51, i32 0, i32 1
  %53 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %52, align 8
  %54 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %53, i32 0, i32 9
  store i8* %50, i8** %54, align 8
  %55 = load i8*, i8** @CXD2880_TNRDMD_CLOCKMODE_UNKNOWN, align 8
  %56 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %57 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %56, i32 0, i32 1
  %58 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %57, align 8
  %59 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %58, i32 0, i32 8
  store i8* %55, i8** %59, align 8
  %60 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %61 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %60, i32 0, i32 1
  %62 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %61, align 8
  %63 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  %64 = load i8*, i8** @CXD2880_DTV_SYS_UNKNOWN, align 8
  %65 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %66 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %65, i32 0, i32 1
  %67 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %66, align 8
  %68 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %67, i32 0, i32 6
  store i8* %64, i8** %68, align 8
  %69 = load i8*, i8** @CXD2880_DTV_BW_UNKNOWN, align 8
  %70 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %71 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %70, i32 0, i32 1
  %72 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %71, align 8
  %73 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %72, i32 0, i32 5
  store i8* %69, i8** %73, align 8
  %74 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %75 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %74, i32 0, i32 1
  %76 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %75, align 8
  %77 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %76, i32 0, i32 4
  store i64 0, i64* %77, align 8
  %78 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %79 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %78, i32 0, i32 1
  %80 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %79, align 8
  %81 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %80, i32 0, i32 3
  %82 = call i32 @atomic_set(i32* %81, i32 0)
  br label %83

83:                                               ; preds = %44, %16
  %84 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %85 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %86 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %85, i32 0, i32 2
  %87 = call i32 @cxd2880_tnrdmd_chip_id(%struct.cxd2880_tnrdmd* %84, i8** %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %223

92:                                               ; preds = %83
  %93 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %94 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @CXD2880_TNRDMD_CHIP_ID_VALID(i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @ENOTTY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %223

101:                                              ; preds = %92
  %102 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %103 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %101
  %108 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %109 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %108, i32 0, i32 1
  %110 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %109, align 8
  %111 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %112 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %111, i32 0, i32 1
  %113 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %112, align 8
  %114 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %113, i32 0, i32 2
  %115 = call i32 @cxd2880_tnrdmd_chip_id(%struct.cxd2880_tnrdmd* %110, i8** %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %223

120:                                              ; preds = %107
  %121 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %122 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %121, i32 0, i32 1
  %123 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %122, align 8
  %124 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @CXD2880_TNRDMD_CHIP_ID_VALID(i8* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* @ENOTTY, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %223

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %101
  %133 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %134 = call i32 @p_init1(%struct.cxd2880_tnrdmd* %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %2, align 4
  br label %223

139:                                              ; preds = %132
  %140 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %141 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %147 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %146, i32 0, i32 1
  %148 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %147, align 8
  %149 = call i32 @p_init1(%struct.cxd2880_tnrdmd* %148)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* %2, align 4
  br label %223

154:                                              ; preds = %145
  br label %155

155:                                              ; preds = %154, %139
  %156 = call i32 @usleep_range(i32 1000, i32 2000)
  %157 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %158 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %155
  %163 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %164 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %163, i32 0, i32 1
  %165 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %164, align 8
  %166 = call i32 @p_init2(%struct.cxd2880_tnrdmd* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %162
  %170 = load i32, i32* %4, align 4
  store i32 %170, i32* %2, align 4
  br label %223

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171, %155
  %173 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %174 = call i32 @p_init2(%struct.cxd2880_tnrdmd* %173)
  store i32 %174, i32* %4, align 4
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* %4, align 4
  store i32 %178, i32* %2, align 4
  br label %223

179:                                              ; preds = %172
  %180 = call i32 @usleep_range(i32 5000, i32 6000)
  %181 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %182 = call i32 @p_init3(%struct.cxd2880_tnrdmd* %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = load i32, i32* %4, align 4
  store i32 %186, i32* %2, align 4
  br label %223

187:                                              ; preds = %179
  %188 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %189 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %187
  %194 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %195 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %194, i32 0, i32 1
  %196 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %195, align 8
  %197 = call i32 @p_init3(%struct.cxd2880_tnrdmd* %196)
  store i32 %197, i32* %4, align 4
  %198 = load i32, i32* %4, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i32, i32* %4, align 4
  store i32 %201, i32* %2, align 4
  br label %223

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %187
  %204 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %205 = call i32 @rf_init1(%struct.cxd2880_tnrdmd* %204)
  store i32 %205, i32* %4, align 4
  %206 = load i32, i32* %4, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %203
  %209 = load i32, i32* %4, align 4
  store i32 %209, i32* %2, align 4
  br label %223

210:                                              ; preds = %203
  %211 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %212 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @CXD2880_TNRDMD_DIVERMODE_MAIN, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  %217 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %3, align 8
  %218 = getelementptr inbounds %struct.cxd2880_tnrdmd, %struct.cxd2880_tnrdmd* %217, i32 0, i32 1
  %219 = load %struct.cxd2880_tnrdmd*, %struct.cxd2880_tnrdmd** %218, align 8
  %220 = call i32 @rf_init1(%struct.cxd2880_tnrdmd* %219)
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %216, %210
  %222 = load i32, i32* %4, align 4
  store i32 %222, i32* %2, align 4
  br label %223

223:                                              ; preds = %221, %208, %200, %185, %177, %169, %152, %137, %128, %118, %98, %90, %13
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cxd2880_tnrdmd_chip_id(%struct.cxd2880_tnrdmd*, i8**) #1

declare dso_local i32 @CXD2880_TNRDMD_CHIP_ID_VALID(i8*) #1

declare dso_local i32 @p_init1(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @p_init2(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @p_init3(%struct.cxd2880_tnrdmd*) #1

declare dso_local i32 @rf_init1(%struct.cxd2880_tnrdmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
