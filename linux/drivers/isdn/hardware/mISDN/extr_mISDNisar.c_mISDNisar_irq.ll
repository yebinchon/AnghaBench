; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_mISDNisar_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_mISDNisar_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { i32, i32, i32, i32, i32, i32, i32 (i32, i32, i32)* }
%struct.isar_ch = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ISAR_IIS_MSCMSD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: ISAR spurious IIS_RDATA %x/%x/%x\0A\00", align 1
@ISAR_IIA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: Buffer STEV dpath%d msb(%x)\0A\00", align 1
@ISDN_P_B_MODEM_ASYNC = common dso_local global i32 0, align 4
@ISDN_P_B_T30_FAX = common dso_local global i32 0, align 4
@ISDN_P_B_RAW = common dso_local global i32 0, align 4
@DTMF_TONE_VAL = common dso_local global i32 0, align 4
@PH_CONTROL_IND = common dso_local global i32 0, align 4
@MISDN_ID_ANY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"%s: ISAR IIS_PSTEV pm %d sta %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: ISAR spurious IIS_PSTEV %x/%x/%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: ISAR spurious IIS_PSTRSP %x/%x/%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: invalid msg his:%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"%s: unhandled msg iis(%x) ctrl(%x/%x)\0A\00", align 1
@BSTEV_RBO = common dso_local global i32 0, align 4
@BSTEV_TBO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mISDNisar_irq(%struct.isar_hw* %0) #0 {
  %2 = alloca %struct.isar_hw*, align 8
  %3 = alloca %struct.isar_ch*, align 8
  %4 = alloca i32, align 4
  store %struct.isar_hw* %0, %struct.isar_hw** %2, align 8
  %5 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %6 = call i32 @get_irq_infos(%struct.isar_hw* %5)
  %7 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %8 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @ISAR_IIS_MSCMSD, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %251 [
    i32 128, label %12
    i32 133, label %47
    i32 136, label %68
    i32 130, label %88
    i32 129, label %201
    i32 134, label %238
    i32 135, label %238
    i32 131, label %238
    i32 132, label %241
  ]

12:                                               ; preds = %1
  %13 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %14 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %15 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 6
  %18 = call %struct.isar_ch* @sel_bch_isar(%struct.isar_hw* %13, i32 %17)
  store %struct.isar_ch* %18, %struct.isar_ch** %3, align 8
  %19 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %20 = icmp ne %struct.isar_ch* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %23 = call i32 @isar_rcv_frame(%struct.isar_ch* %22)
  br label %46

24:                                               ; preds = %12
  %25 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %26 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %29 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %32 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %35 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %39 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %38, i32 0, i32 6
  %40 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %39, align 8
  %41 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %42 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ISAR_IIA, align 4
  %45 = call i32 %40(i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %24, %21
  br label %267

47:                                               ; preds = %1
  %48 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %49 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %48, i32 0, i32 6
  %50 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %49, align 8
  %51 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %52 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ISAR_IIA, align 4
  %55 = call i32 %50(i32 %53, i32 %54, i32 0)
  %56 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %57 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %60 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %64 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %65 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @check_send(%struct.isar_hw* %63, i32 %66)
  br label %267

68:                                               ; preds = %1
  %69 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %70 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %73 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 6
  %76 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %77 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75, i32 %78)
  %80 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %81 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %80, i32 0, i32 6
  %82 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %81, align 8
  %83 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %84 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ISAR_IIA, align 4
  %87 = call i32 %82(i32 %85, i32 %86, i32 0)
  br label %267

88:                                               ; preds = %1
  %89 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %90 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %91 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 6
  %94 = call %struct.isar_ch* @sel_bch_isar(%struct.isar_hw* %89, i32 %93)
  store %struct.isar_ch* %94, %struct.isar_ch** %3, align 8
  %95 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %96 = icmp ne %struct.isar_ch* %95, null
  br i1 %96, label %97, label %178

97:                                               ; preds = %88
  %98 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %99 = call i32 @rcv_mbox(%struct.isar_hw* %98, i32* null)
  %100 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %101 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ISDN_P_B_MODEM_ASYNC, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %108 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %109 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @isar_pump_statev_modem(%struct.isar_ch* %107, i32 %110)
  br label %177

112:                                              ; preds = %97
  %113 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %114 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ISDN_P_B_T30_FAX, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %121 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %122 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @isar_pump_statev_fax(%struct.isar_ch* %120, i32 %123)
  br label %176

125:                                              ; preds = %112
  %126 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %127 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ISDN_P_B_RAW, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %125
  %133 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %134 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, 48
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp eq i32 %137, 62
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 42, i32* %4, align 4
  br label %152

140:                                              ; preds = %132
  %141 = load i32, i32* %4, align 4
  %142 = icmp eq i32 %141, 63
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 35, i32* %4, align 4
  br label %151

144:                                              ; preds = %140
  %145 = load i32, i32* %4, align 4
  %146 = icmp sgt i32 %145, 57
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 7
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %143
  br label %152

152:                                              ; preds = %151, %139
  %153 = load i32, i32* @DTMF_TONE_VAL, align 4
  %154 = load i32, i32* %4, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %4, align 4
  %156 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %157 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* @PH_CONTROL_IND, align 4
  %160 = load i32, i32* @MISDN_ID_ANY, align 4
  %161 = load i32, i32* @GFP_ATOMIC, align 4
  %162 = call i32 @_queue_data(i32* %158, i32 %159, i32 %160, i32 4, i32* %4, i32 %161)
  br label %175

163:                                              ; preds = %125
  %164 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %165 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %168 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %172 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %166, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %163, %152
  br label %176

176:                                              ; preds = %175, %119
  br label %177

177:                                              ; preds = %176, %106
  br label %200

178:                                              ; preds = %88
  %179 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %180 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %183 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %186 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %189 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %184, i32 %187, i32 %190)
  %192 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %193 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %192, i32 0, i32 6
  %194 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %193, align 8
  %195 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %196 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @ISAR_IIA, align 4
  %199 = call i32 %194(i32 %197, i32 %198, i32 0)
  br label %200

200:                                              ; preds = %178, %177
  br label %267

201:                                              ; preds = %1
  %202 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %203 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %204 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = ashr i32 %205, 6
  %207 = call %struct.isar_ch* @sel_bch_isar(%struct.isar_hw* %202, i32 %206)
  store %struct.isar_ch* %207, %struct.isar_ch** %3, align 8
  %208 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %209 = icmp ne %struct.isar_ch* %208, null
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %212 = call i32 @rcv_mbox(%struct.isar_hw* %211, i32* null)
  %213 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %214 = call i32 @isar_pump_status_rsp(%struct.isar_ch* %213)
  br label %237

215:                                              ; preds = %201
  %216 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %217 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %220 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %223 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %226 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %218, i32 %221, i32 %224, i32 %227)
  %229 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %230 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %229, i32 0, i32 6
  %231 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %230, align 8
  %232 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %233 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @ISAR_IIA, align 4
  %236 = call i32 %231(i32 %234, i32 %235, i32 0)
  br label %237

237:                                              ; preds = %215, %210
  br label %267

238:                                              ; preds = %1, %1, %1
  %239 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %240 = call i32 @rcv_mbox(%struct.isar_hw* %239, i32* null)
  br label %267

241:                                              ; preds = %1
  %242 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %243 = call i32 @rcv_mbox(%struct.isar_hw* %242, i32* null)
  %244 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %245 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %248 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %246, i32 %249)
  br label %267

251:                                              ; preds = %1
  %252 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %253 = call i32 @rcv_mbox(%struct.isar_hw* %252, i32* null)
  %254 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %255 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %258 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %261 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %264 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %256, i32 %259, i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %251, %241, %238, %237, %200, %68, %47, %46
  ret void
}

declare dso_local i32 @get_irq_infos(%struct.isar_hw*) #1

declare dso_local %struct.isar_ch* @sel_bch_isar(%struct.isar_hw*, i32) #1

declare dso_local i32 @isar_rcv_frame(%struct.isar_ch*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @check_send(%struct.isar_hw*, i32) #1

declare dso_local i32 @rcv_mbox(%struct.isar_hw*, i32*) #1

declare dso_local i32 @isar_pump_statev_modem(%struct.isar_ch*, i32) #1

declare dso_local i32 @isar_pump_statev_fax(%struct.isar_ch*, i32) #1

declare dso_local i32 @_queue_data(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @isar_pump_status_rsp(%struct.isar_ch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
