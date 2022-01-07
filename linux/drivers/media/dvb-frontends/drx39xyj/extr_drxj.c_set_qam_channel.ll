; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_qam_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_qam_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i32, i64 }
%struct.drx_channel = type { i32, i8* }
%struct.drxj_data = type { i32, i8*, i32 }

@DRX_NOT_LOCKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRX_STANDARD_ITU_B = common dso_local global i32 0, align 4
@DRX_MIRROR_AUTO = common dso_local global i8* null, align 8
@DRX_MIRROR_NO = common dso_local global i8* null, align 8
@QAM_SET_OP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@DRX_LOCKED = common dso_local global i32 0, align 4
@SCU_RAM_QAM_CTL_ENA__A = common dso_local global i32 0, align 4
@SCU_RAM_QAM_CTL_ENA_ACQ__M = common dso_local global i32 0, align 4
@SCU_RAM_QAM_FSM_STATE_TGT__A = common dso_local global i32 0, align 4
@QAM_SET_OP_CONSTELLATION = common dso_local global i32 0, align 4
@DRX_STANDARD_ITU_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drx_channel*, i32)* @set_qam_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_qam_channel(%struct.drx_demod_instance* %0, %struct.drx_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drx_demod_instance*, align 8
  %6 = alloca %struct.drx_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drxj_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %5, align 8
  store %struct.drx_channel* %1, %struct.drx_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.drxj_data* null, %struct.drxj_data** %8, align 8
  %14 = load i32, i32* @DRX_NOT_LOCKED, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %16 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.drxj_data*
  store %struct.drxj_data* %18, %struct.drxj_data** %8, align 8
  %19 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %20 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %339 [
    i32 131, label %22
    i32 129, label %22
    i32 132, label %22
    i32 128, label %25
    i32 130, label %25
    i32 133, label %88
  ]

22:                                               ; preds = %3, %3, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %351

25:                                               ; preds = %3, %3
  %26 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %27 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DRX_STANDARD_ITU_B, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %351

34:                                               ; preds = %25
  %35 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %36 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %39 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %41 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8*, i8** @DRX_MIRROR_AUTO, align 8
  %44 = icmp eq i8* %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %34
  %46 = load i8*, i8** @DRX_MIRROR_NO, align 8
  %47 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %48 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  br label %55

49:                                               ; preds = %34
  %50 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %51 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %54 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %45
  %56 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %57 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @QAM_SET_OP_ALL, align 4
  %60 = call i32 @set_qam(%struct.drx_demod_instance* %56, %struct.drx_channel* %57, i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %343

66:                                               ; preds = %55
  %67 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %68 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 128
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %73 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @qam64auto(%struct.drx_demod_instance* %72, %struct.drx_channel* %73, i32 %74, i32* %10)
  store i32 %75, i32* %9, align 4
  br label %81

76:                                               ; preds = %66
  %77 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %78 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @qam256auto(%struct.drx_demod_instance* %77, %struct.drx_channel* %78, i32 %79, i32* %10)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %85)
  br label %343

87:                                               ; preds = %81
  br label %342

88:                                               ; preds = %3
  %89 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %90 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DRX_STANDARD_ITU_B, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %235

94:                                               ; preds = %88
  store i32 0, i32* %12, align 4
  store i32 1, i32* %11, align 4
  %95 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %96 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %95, i32 0, i32 0
  store i32 130, i32* %96, align 8
  %97 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %98 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %97, i32 0, i32 0
  store i32 130, i32* %98, align 8
  %99 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %100 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load i8*, i8** @DRX_MIRROR_AUTO, align 8
  %103 = icmp eq i8* %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load i8*, i8** @DRX_MIRROR_NO, align 8
  %106 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %107 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %114

108:                                              ; preds = %94
  %109 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %110 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %113 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %108, %104
  %115 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %116 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @QAM_SET_OP_ALL, align 4
  %119 = call i32 @set_qam(%struct.drx_demod_instance* %115, %struct.drx_channel* %116, i32 %117, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %123)
  br label %343

125:                                              ; preds = %114
  %126 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %127 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @qam256auto(%struct.drx_demod_instance* %126, %struct.drx_channel* %127, i32 %128, i32* %10)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %343

135:                                              ; preds = %125
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @DRX_LOCKED, align 4
  %138 = icmp uge i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %141 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %140, i32 0, i32 0
  store i32 133, i32* %141, align 8
  br label %342

142:                                              ; preds = %135
  %143 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %144 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %143, i32 0, i32 0
  store i32 128, i32* %144, align 8
  %145 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %146 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %145, i32 0, i32 0
  store i32 128, i32* %146, align 8
  %147 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %148 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** @DRX_MIRROR_AUTO, align 8
  %151 = icmp eq i8* %149, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %142
  %153 = load i8*, i8** @DRX_MIRROR_NO, align 8
  %154 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %155 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  br label %162

156:                                              ; preds = %142
  %157 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %158 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %161 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %156, %152
  %163 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %164 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @SCU_RAM_QAM_CTL_ENA__A, align 4
  %167 = call i32 @drxj_dap_read_reg16(i32 %165, i32 %166, i32* %12, i32 0)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %171)
  br label %343

173:                                              ; preds = %162
  %174 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %175 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SCU_RAM_QAM_CTL_ENA__A, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @SCU_RAM_QAM_CTL_ENA_ACQ__M, align 4
  %180 = xor i32 %179, -1
  %181 = and i32 %178, %180
  %182 = call i32 @drxj_dap_write_reg16(i32 %176, i32 %177, i32 %181, i32 0)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %173
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %186)
  br label %343

188:                                              ; preds = %173
  %189 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %190 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @SCU_RAM_QAM_FSM_STATE_TGT__A, align 4
  %193 = call i32 @drxj_dap_write_reg16(i32 %191, i32 %192, i32 2, i32 0)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %197)
  br label %343

199:                                              ; preds = %188
  %200 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %201 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @QAM_SET_OP_CONSTELLATION, align 4
  %204 = call i32 @set_qam(%struct.drx_demod_instance* %200, %struct.drx_channel* %201, i32 %202, i32 %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %208)
  br label %343

210:                                              ; preds = %199
  %211 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %212 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @SCU_RAM_QAM_CTL_ENA__A, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @drxj_dap_write_reg16(i32 %213, i32 %214, i32 %215, i32 0)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %210
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %220)
  br label %343

222:                                              ; preds = %210
  %223 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %224 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @qam64auto(%struct.drx_demod_instance* %223, %struct.drx_channel* %224, i32 %225, i32* %10)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %222
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %230)
  br label %343

232:                                              ; preds = %222
  %233 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %234 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %233, i32 0, i32 0
  store i32 133, i32* %234, align 8
  br label %338

235:                                              ; preds = %88
  %236 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %237 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @DRX_STANDARD_ITU_C, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %334

241:                                              ; preds = %235
  store i32 0, i32* %13, align 4
  %242 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %243 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %242, i32 0, i32 0
  store i32 128, i32* %243, align 8
  %244 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %245 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %244, i32 0, i32 0
  store i32 128, i32* %245, align 8
  store i32 1, i32* %11, align 4
  %246 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %247 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = load i8*, i8** @DRX_MIRROR_AUTO, align 8
  %250 = icmp eq i8* %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %241
  %252 = load i8*, i8** @DRX_MIRROR_NO, align 8
  %253 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %254 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %253, i32 0, i32 1
  store i8* %252, i8** %254, align 8
  br label %261

255:                                              ; preds = %241
  %256 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %257 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %256, i32 0, i32 1
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.drxj_data*, %struct.drxj_data** %8, align 8
  %260 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  br label %261

261:                                              ; preds = %255, %251
  %262 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %263 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @SCU_RAM_QAM_CTL_ENA__A, align 4
  %266 = call i32 @drxj_dap_read_reg16(i32 %264, i32 %265, i32* %13, i32 0)
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %261
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %270)
  br label %343

272:                                              ; preds = %261
  %273 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %274 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @SCU_RAM_QAM_CTL_ENA__A, align 4
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* @SCU_RAM_QAM_CTL_ENA_ACQ__M, align 4
  %279 = xor i32 %278, -1
  %280 = and i32 %277, %279
  %281 = call i32 @drxj_dap_write_reg16(i32 %275, i32 %276, i32 %280, i32 0)
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %9, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %272
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %285)
  br label %343

287:                                              ; preds = %272
  %288 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %289 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @SCU_RAM_QAM_FSM_STATE_TGT__A, align 4
  %292 = call i32 @drxj_dap_write_reg16(i32 %290, i32 %291, i32 2, i32 0)
  store i32 %292, i32* %9, align 4
  %293 = load i32, i32* %9, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %287
  %296 = load i32, i32* %9, align 4
  %297 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %296)
  br label %343

298:                                              ; preds = %287
  %299 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %300 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* @QAM_SET_OP_CONSTELLATION, align 4
  %303 = call i32 @set_qam(%struct.drx_demod_instance* %299, %struct.drx_channel* %300, i32 %301, i32 %302)
  store i32 %303, i32* %9, align 4
  %304 = load i32, i32* %9, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %298
  %307 = load i32, i32* %9, align 4
  %308 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %307)
  br label %343

309:                                              ; preds = %298
  %310 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %311 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @SCU_RAM_QAM_CTL_ENA__A, align 4
  %314 = load i32, i32* %13, align 4
  %315 = call i32 @drxj_dap_write_reg16(i32 %312, i32 %313, i32 %314, i32 0)
  store i32 %315, i32* %9, align 4
  %316 = load i32, i32* %9, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %309
  %319 = load i32, i32* %9, align 4
  %320 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %319)
  br label %343

321:                                              ; preds = %309
  %322 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %323 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %324 = load i32, i32* %7, align 4
  %325 = call i32 @qam64auto(%struct.drx_demod_instance* %322, %struct.drx_channel* %323, i32 %324, i32* %10)
  store i32 %325, i32* %9, align 4
  %326 = load i32, i32* %9, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %321
  %329 = load i32, i32* %9, align 4
  %330 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %329)
  br label %343

331:                                              ; preds = %321
  %332 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %333 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %332, i32 0, i32 0
  store i32 133, i32* %333, align 8
  br label %337

334:                                              ; preds = %235
  %335 = load i32, i32* @EINVAL, align 4
  %336 = sub nsw i32 0, %335
  store i32 %336, i32* %4, align 4
  br label %351

337:                                              ; preds = %331
  br label %338

338:                                              ; preds = %337, %232
  br label %342

339:                                              ; preds = %3
  %340 = load i32, i32* @EINVAL, align 4
  %341 = sub nsw i32 0, %340
  store i32 %341, i32* %4, align 4
  br label %351

342:                                              ; preds = %338, %139, %87
  store i32 0, i32* %4, align 4
  br label %351

343:                                              ; preds = %328, %318, %306, %295, %284, %269, %229, %219, %207, %196, %185, %170, %132, %122, %84, %63
  %344 = load i32, i32* %11, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %343
  %347 = load %struct.drx_channel*, %struct.drx_channel** %6, align 8
  %348 = getelementptr inbounds %struct.drx_channel, %struct.drx_channel* %347, i32 0, i32 0
  store i32 133, i32* %348, align 8
  br label %349

349:                                              ; preds = %346, %343
  %350 = load i32, i32* %9, align 4
  store i32 %350, i32* %4, align 4
  br label %351

351:                                              ; preds = %349, %342, %339, %334, %31, %22
  %352 = load i32, i32* %4, align 4
  ret i32 %352
}

declare dso_local i32 @set_qam(%struct.drx_demod_instance*, %struct.drx_channel*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qam64auto(%struct.drx_demod_instance*, %struct.drx_channel*, i32, i32*) #1

declare dso_local i32 @qam256auto(%struct.drx_demod_instance*, %struct.drx_channel*, i32, i32*) #1

declare dso_local i32 @drxj_dap_read_reg16(i32, i32, i32*, i32) #1

declare dso_local i32 @drxj_dap_write_reg16(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
