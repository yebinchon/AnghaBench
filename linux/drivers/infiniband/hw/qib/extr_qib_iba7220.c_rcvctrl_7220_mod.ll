; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_rcvctrl_7220_mod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7220.c_rcvctrl_7220_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@QIB_RCVCTRL_TAILUPD_ENB = common dso_local global i32 0, align 4
@IBA7220_R_TAILUPD_SHIFT = common dso_local global i64 0, align 8
@QIB_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_PKEY_ENB = common dso_local global i32 0, align 4
@IBA7220_R_PKEY_DIS_SHIFT = common dso_local global i64 0, align 8
@QIB_RCVCTRL_PKEY_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@RcvCtrl = common dso_local global i32 0, align 4
@PortEnable = common dso_local global i32 0, align 4
@QIB_NODMA_RTAIL = common dso_local global i32 0, align 4
@kr_rcvhdrtailaddr = common dso_local global i32 0, align 4
@kr_rcvhdraddr = common dso_local global i32 0, align 4
@QIB_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_ENB = common dso_local global i32 0, align 4
@IBA7220_R_INTRAVAIL_SHIFT = common dso_local global i32 0, align 4
@QIB_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@kr_rcvctrl = common dso_local global i32 0, align 4
@ur_rcvhdrhead = common dso_local global i32 0, align 4
@ur_rcvegrindextail = common dso_local global i32 0, align 4
@ur_rcvegrindexhead = common dso_local global i32 0, align 4
@ur_rcvhdrtail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*, i32, i32)* @rcvctrl_7220_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcvctrl_7220_mod(%struct.qib_pportdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %13 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %12, i32 0, i32 0
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %13, align 8
  store %struct.qib_devdata* %14, %struct.qib_devdata** %7, align 8
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @QIB_RCVCTRL_TAILUPD_ENB, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i64, i64* @IBA7220_R_TAILUPD_SHIFT, align 8
  %27 = shl i64 1, %26
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = or i64 %30, %27
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %25, %3
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @QIB_RCVCTRL_TAILUPD_DIS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i64, i64* @IBA7220_R_TAILUPD_SHIFT, align 8
  %39 = shl i64 1, %38
  %40 = xor i64 %39, -1
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @QIB_RCVCTRL_PKEY_ENB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i64, i64* @IBA7220_R_PKEY_DIS_SHIFT, align 8
  %52 = shl i64 1, %51
  %53 = xor i64 %52, -1
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = and i64 %56, %53
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @QIB_RCVCTRL_PKEY_DIS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i64, i64* @IBA7220_R_PKEY_DIS_SHIFT, align 8
  %65 = shl i64 1, %64
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %65
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %75 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = shl i64 1, %76
  %78 = sub i64 %77, 1
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %8, align 4
  br label %85

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %80, %73
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @QIB_RCVCTRL_CTXT_ENB, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %149

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @RcvCtrl, align 4
  %93 = load i32, i32* @PortEnable, align 4
  %94 = call i32 @SYM_LSB(i32 %92, i32 %93)
  %95 = shl i32 %91, %94
  %96 = sext i32 %95 to i64
  %97 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %98 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %102 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @QIB_NODMA_RTAIL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %90
  %108 = load i64, i64* @IBA7220_R_TAILUPD_SHIFT, align 8
  %109 = shl i64 1, %108
  %110 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %111 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = or i64 %112, %109
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %107, %90
  %115 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %116 = load i32, i32* @kr_rcvhdrtailaddr, align 4
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %119 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %118, i32 0, i32 7
  %120 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %120, i64 %122
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %115, i32 %116, i32 %117, i32 %126)
  %128 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %129 = load i32, i32* @kr_rcvhdraddr, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %132 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %131, i32 0, i32 7
  %133 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %133, i64 %135
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %128, i32 %129, i32 %130, i32 %139)
  %141 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %142 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %141, i32 0, i32 7
  %143 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %143, i64 %145
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %114, %85
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %149
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @RcvCtrl, align 4
  %157 = load i32, i32* @PortEnable, align 4
  %158 = call i32 @SYM_LSB(i32 %156, i32 %157)
  %159 = shl i32 %155, %158
  %160 = xor i32 %159, -1
  %161 = sext i32 %160 to i64
  %162 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %163 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = and i64 %164, %161
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %154, %149
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_ENB, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @IBA7220_R_INTRAVAIL_SHIFT, align 4
  %174 = shl i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %177 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = or i64 %178, %175
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %171, %166
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_DIS, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* @IBA7220_R_INTRAVAIL_SHIFT, align 4
  %188 = shl i32 %186, %187
  %189 = xor i32 %188, -1
  %190 = sext i32 %189 to i64
  %191 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %192 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = and i64 %193, %190
  store i64 %194, i64* %192, align 8
  br label %195

195:                                              ; preds = %185, %180
  %196 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %197 = load i32, i32* @kr_rcvctrl, align 4
  %198 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %199 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i32 @qib_write_kreg(%struct.qib_devdata* %196, i32 %197, i32 %201)
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @QIB_RCVCTRL_INTRAVAIL_ENB, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %226

207:                                              ; preds = %195
  %208 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %209 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %207
  %213 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %214 = load i32, i32* @ur_rcvhdrhead, align 4
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @qib_read_ureg32(%struct.qib_devdata* %213, i32 %214, i32 %215)
  %217 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %218 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %216, %219
  store i32 %220, i32* %9, align 4
  %221 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %222 = load i32, i32* @ur_rcvhdrhead, align 4
  %223 = load i32, i32* %9, align 4
  %224 = load i32, i32* %6, align 4
  %225 = call i32 @qib_write_ureg(%struct.qib_devdata* %221, i32 %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %212, %207, %195
  %227 = load i32, i32* %5, align 4
  %228 = load i32, i32* @QIB_RCVCTRL_CTXT_ENB, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %271

231:                                              ; preds = %226
  %232 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %233 = load i32, i32* @ur_rcvegrindextail, align 4
  %234 = load i32, i32* %6, align 4
  %235 = call i32 @qib_read_ureg32(%struct.qib_devdata* %232, i32 %233, i32 %234)
  store i32 %235, i32* %9, align 4
  %236 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %237 = load i32, i32* @ur_rcvegrindexhead, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %6, align 4
  %240 = call i32 @qib_write_ureg(%struct.qib_devdata* %236, i32 %237, i32 %238, i32 %239)
  %241 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %242 = load i32, i32* @ur_rcvhdrtail, align 4
  %243 = load i32, i32* %6, align 4
  %244 = call i32 @qib_read_ureg32(%struct.qib_devdata* %241, i32 %242, i32 %243)
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %247 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %246, i32 0, i32 7
  %248 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %248, i64 %250
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  store i32 %245, i32* %253, align 4
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %256 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %231
  %260 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %261 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %9, align 4
  %264 = or i32 %263, %262
  store i32 %264, i32* %9, align 4
  br label %265

265:                                              ; preds = %259, %231
  %266 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %267 = load i32, i32* @ur_rcvhdrhead, align 4
  %268 = load i32, i32* %9, align 4
  %269 = load i32, i32* %6, align 4
  %270 = call i32 @qib_write_ureg(%struct.qib_devdata* %266, i32 %267, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %265, %226
  %272 = load i32, i32* %5, align 4
  %273 = load i32, i32* @QIB_RCVCTRL_CTXT_DIS, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %309

276:                                              ; preds = %271
  %277 = load i32, i32* %6, align 4
  %278 = icmp sge i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %276
  %280 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %281 = load i32, i32* @kr_rcvhdrtailaddr, align 4
  %282 = load i32, i32* %6, align 4
  %283 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %280, i32 %281, i32 %282, i32 0)
  %284 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %285 = load i32, i32* @kr_rcvhdraddr, align 4
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %284, i32 %285, i32 %286, i32 0)
  br label %308

288:                                              ; preds = %276
  store i32 0, i32* %11, align 4
  br label %289

289:                                              ; preds = %304, %288
  %290 = load i32, i32* %11, align 4
  %291 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %292 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = icmp ult i32 %290, %293
  br i1 %294, label %295, label %307

295:                                              ; preds = %289
  %296 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %297 = load i32, i32* @kr_rcvhdrtailaddr, align 4
  %298 = load i32, i32* %11, align 4
  %299 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %296, i32 %297, i32 %298, i32 0)
  %300 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %301 = load i32, i32* @kr_rcvhdraddr, align 4
  %302 = load i32, i32* %11, align 4
  %303 = call i32 @qib_write_kreg_ctxt(%struct.qib_devdata* %300, i32 %301, i32 %302, i32 0)
  br label %304

304:                                              ; preds = %295
  %305 = load i32, i32* %11, align 4
  %306 = add i32 %305, 1
  store i32 %306, i32* %11, align 4
  br label %289

307:                                              ; preds = %289
  br label %308

308:                                              ; preds = %307, %279
  br label %309

309:                                              ; preds = %308, %271
  %310 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %311 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %310, i32 0, i32 6
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i64, i64* %10, align 8
  %315 = call i32 @spin_unlock_irqrestore(i32* %313, i64 %314)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SYM_LSB(i32, i32) #1

declare dso_local i32 @qib_write_kreg_ctxt(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_read_ureg32(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_write_ureg(%struct.qib_devdata*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
