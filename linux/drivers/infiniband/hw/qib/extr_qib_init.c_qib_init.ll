; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_init.c_qib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32 (%struct.qib_devdata*)*, i32, i32, i32 (%struct.qib_pportdata*)*, i32, i32, i32, {}*, %struct.qib_pportdata*, i32, i64, i32, i32, %struct.qib_ctxtdata** }
%struct.qib_pportdata = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.qib_ctxtdata = type { i32 }

@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKDOWN = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKV = common dso_local global i32 0, align 4
@qib_mini_init = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\0A\00", align 1
@qib_ibmtu = common dso_local global i64 0, align 8
@QIB_DEFAULT_MTU = common dso_local global i32 0, align 4
@QIBL_IB_LINK_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to bringup IB port %u\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@QIB_STATUS_CHIP_PRESENT = common dso_local global i32 0, align 4
@QIB_STATUS_INITTED = common dso_local global i32 0, align 4
@QIB_HAS_SEND_DMA = common dso_local global i32 0, align 4
@qib_hol_event = common dso_local global i32 0, align 4
@QIB_HOL_UP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ACTIVITY_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_init(%struct.qib_devdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qib_ctxtdata*, align 8
  %12 = alloca %struct.qib_pportdata*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %50, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %15
  %22 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %23 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %22, i32 0, i32 9
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %24, i64 %26
  store %struct.qib_pportdata* %27, %struct.qib_pportdata** %12, align 8
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %29 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %28, i32 0, i32 6
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %33 = load i32, i32* @QIBL_LINKARMED, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @QIBL_LINKDOWN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @QIBL_LINKINIT, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @QIBL_LINKV, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %43 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %47 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %46, i32 0, i32 6
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  br label %50

50:                                               ; preds = %21
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %15

53:                                               ; preds = %15
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %58 = call i32 @init_after_reset(%struct.qib_devdata* %57)
  store i32 %58, i32* %6, align 4
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %61 = call i32 @loadtime_init(%struct.qib_devdata* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %241

66:                                               ; preds = %62
  %67 = load i64, i64* @qib_mini_init, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %318

70:                                               ; preds = %66
  %71 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %72 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %71, i32 0, i32 1
  %73 = load i32 (%struct.qib_devdata*)*, i32 (%struct.qib_devdata*)** %72, align 8
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %75 = call i32 %73(%struct.qib_devdata* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %241

79:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %120, %79
  %81 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %82 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %81, i32 0, i32 14
  %83 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %82, align 8
  %84 = icmp ne %struct.qib_ctxtdata** %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br label %91

91:                                               ; preds = %85, %80
  %92 = phi i1 [ false, %80 ], [ %90, %85 ]
  br i1 %92, label %93, label %123

93:                                               ; preds = %91
  %94 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %95 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %94, i32 0, i32 14
  %96 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %96, i64 %98
  %100 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %99, align 8
  store %struct.qib_ctxtdata* %100, %struct.qib_ctxtdata** %11, align 8
  %101 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %11, align 8
  %102 = icmp ne %struct.qib_ctxtdata* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %93
  br label %120

104:                                              ; preds = %93
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %106 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %11, align 8
  %107 = call i32 @qib_create_rcvhdrq(%struct.qib_devdata* %105, %struct.qib_ctxtdata* %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %11, align 8
  %112 = call i32 @qib_setup_eagerbufs(%struct.qib_ctxtdata* %111)
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %118 = call i32 @qib_dev_err(%struct.qib_devdata* %117, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %103
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %80

123:                                              ; preds = %91
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %214, %123
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %127 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %217

130:                                              ; preds = %124
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %133, %130
  %136 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %137 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %136, i32 0, i32 9
  %138 = load %struct.qib_pportdata*, %struct.qib_pportdata** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %138, i64 %140
  store %struct.qib_pportdata* %141, %struct.qib_pportdata** %12, align 8
  %142 = load i64, i64* @qib_ibmtu, align 8
  %143 = call i32 @ib_mtu_enum_to_int(i64 %142)
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %148

146:                                              ; preds = %135
  %147 = load i32, i32* @QIB_DEFAULT_MTU, align 4
  store i32 %147, i32* %14, align 4
  store i64 0, i64* @qib_ibmtu, align 8
  br label %148

148:                                              ; preds = %146, %135
  %149 = load i32, i32* %14, align 4
  %150 = icmp sgt i32 %149, 2048
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %153 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %152, i32 0, i32 13
  %154 = load i32, i32* %153, align 4
  br label %159

155:                                              ; preds = %148
  %156 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %157 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 8
  br label %159

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %154, %151 ], [ %158, %155 ]
  %161 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %162 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %161, i32 0, i32 11
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %165 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %163, %168
  %170 = call i32 @min(i32 %160, i64 %169)
  %171 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %172 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %171, i32 0, i32 7
  store i32 %170, i32* %172, align 4
  %173 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %174 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %177 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %176, i32 0, i32 8
  store i32 %175, i32* %177, align 8
  %178 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %179 = load i32, i32* %14, align 4
  %180 = call i32 @qib_set_mtu(%struct.qib_pportdata* %178, i32 %179)
  %181 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %182 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %181, i32 0, i32 6
  %183 = load i64, i64* %13, align 8
  %184 = call i32 @spin_lock_irqsave(i32* %182, i64 %183)
  %185 = load i32, i32* @QIBL_IB_LINK_DISABLED, align 4
  %186 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %187 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %191 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %190, i32 0, i32 6
  %192 = load i64, i64* %13, align 8
  %193 = call i32 @spin_unlock_irqrestore(i32* %191, i64 %192)
  %194 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %195 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %194, i32 0, i32 4
  %196 = load i32 (%struct.qib_pportdata*)*, i32 (%struct.qib_pportdata*)** %195, align 8
  %197 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %198 = call i32 %196(%struct.qib_pportdata* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %159
  %202 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %203 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %202, i32 0, i32 10
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %206 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @qib_devinfo(i32 %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* @ENETDOWN, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %8, align 4
  br label %214

211:                                              ; preds = %159
  %212 = load i64, i64* %9, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* %9, align 8
  br label %214

214:                                              ; preds = %211, %201
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %7, align 4
  br label %124

217:                                              ; preds = %124
  %218 = load i64, i64* %9, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %236, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %6, align 4
  br label %235

228:                                              ; preds = %223, %220
  %229 = load i32, i32* %6, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %228
  %232 = load i32, i32* @ENETDOWN, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %231, %228
  br label %235

235:                                              ; preds = %234, %226
  br label %236

236:                                              ; preds = %235, %217
  %237 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %238 = call i32 @enable_chip(%struct.qib_devdata* %237)
  %239 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %240 = call i32 @init_piobuf_state(%struct.qib_devdata* %239)
  br label %241

241:                                              ; preds = %236, %78, %65
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %316, label %244

244:                                              ; preds = %241
  store i32 0, i32* %7, align 4
  br label %245

245:                                              ; preds = %289, %244
  %246 = load i32, i32* %7, align 4
  %247 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %248 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = icmp slt i32 %246, %249
  br i1 %250, label %251, label %292

251:                                              ; preds = %245
  %252 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %253 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %252, i32 0, i32 9
  %254 = load %struct.qib_pportdata*, %struct.qib_pportdata** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %254, i64 %256
  store %struct.qib_pportdata* %257, %struct.qib_pportdata** %12, align 8
  %258 = load i32, i32* @QIB_STATUS_CHIP_PRESENT, align 4
  %259 = load i32, i32* @QIB_STATUS_INITTED, align 4
  %260 = or i32 %258, %259
  %261 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %262 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %260
  store i32 %265, i32* %263, align 4
  %266 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %267 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %251
  br label %289

271:                                              ; preds = %251
  %272 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %273 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @QIB_HAS_SEND_DMA, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %271
  %279 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %280 = call i32 @qib_setup_sdma(%struct.qib_pportdata* %279)
  store i32 %280, i32* %6, align 4
  br label %281

281:                                              ; preds = %278, %271
  %282 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %283 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %282, i32 0, i32 3
  %284 = load i32, i32* @qib_hol_event, align 4
  %285 = call i32 @timer_setup(i32* %283, i32 %284, i32 0)
  %286 = load i32, i32* @QIB_HOL_UP, align 4
  %287 = load %struct.qib_pportdata*, %struct.qib_pportdata** %12, align 8
  %288 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %281, %270
  %290 = load i32, i32* %7, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %7, align 4
  br label %245

292:                                              ; preds = %245
  %293 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %294 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %293, i32 0, i32 8
  %295 = bitcast {}** %294 to i32 (%struct.qib_devdata*, i32)**
  %296 = load i32 (%struct.qib_devdata*, i32)*, i32 (%struct.qib_devdata*, i32)** %295, align 8
  %297 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %298 = call i32 %296(%struct.qib_devdata* %297, i32 1)
  %299 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %300 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %299, i32 0, i32 7
  %301 = load i64, i64* @jiffies, align 8
  %302 = load i32, i32* @HZ, align 4
  %303 = sdiv i32 %302, 2
  %304 = sext i32 %303 to i64
  %305 = add nsw i64 %301, %304
  %306 = call i32 @mod_timer(i32* %300, i64 %305)
  %307 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %308 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %307, i32 0, i32 6
  %309 = load i64, i64* @jiffies, align 8
  %310 = load i32, i32* @HZ, align 4
  %311 = load i32, i32* @ACTIVITY_TIMER, align 4
  %312 = mul nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %309, %313
  %315 = call i32 @mod_timer(i32* %308, i64 %314)
  br label %316

316:                                              ; preds = %292, %241
  %317 = load i32, i32* %6, align 4
  store i32 %317, i32* %3, align 4
  br label %318

318:                                              ; preds = %316, %69
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_after_reset(%struct.qib_devdata*) #1

declare dso_local i32 @loadtime_init(%struct.qib_devdata*) #1

declare dso_local i32 @qib_create_rcvhdrq(%struct.qib_devdata*, %struct.qib_ctxtdata*) #1

declare dso_local i32 @qib_setup_eagerbufs(%struct.qib_ctxtdata*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i32 @ib_mtu_enum_to_int(i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @qib_set_mtu(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_devinfo(i32, i8*, i32) #1

declare dso_local i32 @enable_chip(%struct.qib_devdata*) #1

declare dso_local i32 @init_piobuf_state(%struct.qib_devdata*) #1

declare dso_local i32 @qib_setup_sdma(%struct.qib_pportdata*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
