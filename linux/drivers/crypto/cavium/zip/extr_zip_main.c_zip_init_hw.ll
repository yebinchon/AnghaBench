; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/zip/extr_zip_main.c_zip_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_device = type { i64, %struct.TYPE_16__*, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%union.zip_cmd_ctl = type { i32 }
%union.zip_constants = type { i8*, [8 x i8] }
%union.zip_que_ena = type { i32 }
%union.zip_quex_map = type { i64 }
%union.zip_que_pri = type { i64 }
%union.zip_quex_sbuf_addr = type { i64 }
%union.zip_quex_sbuf_ctl = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@ZIP_CMD_CTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"ZIP_CMD_CTL  : 0x%016llx\00", align 1
@ZIP_CONSTANTS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"depth: 0x%016llx , onfsize : 0x%016llx , ctxsize : 0x%016llx\00", align 1
@ZIP_NUM_QUEUES = common dso_local global i32 0, align 4
@ZIP_CMD_QBUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"QUEX_SBUF_CTL[%d]: 0x%016llx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ZIP_128B_ALIGN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"QUE[%d]_PTR(PHYS): 0x%016llx\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"QUEX_SBUF_ADDR[%d]: 0x%016llx\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"sw_head :0x%lx sw_tail :0x%lx hw_tail :0x%lx\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"sw_head phy addr : 0x%lx\00", align 1
@ZIP_QUE_ENA = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"QUE_ENA      : 0x%016llx\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"QUE_MAP(%d)   : 0x%016llx\00", align 1
@ZIP_QUE_PRI = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"QUE_PRI %016llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zip_device*)* @zip_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_init_hw(%struct.zip_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zip_device*, align 8
  %4 = alloca %union.zip_cmd_ctl, align 4
  %5 = alloca %union.zip_constants, align 8
  %6 = alloca %union.zip_que_ena, align 4
  %7 = alloca %union.zip_quex_map, align 8
  %8 = alloca %union.zip_que_pri, align 8
  %9 = alloca %union.zip_quex_sbuf_addr, align 8
  %10 = alloca %union.zip_quex_sbuf_ctl, align 8
  %11 = alloca i32, align 4
  store %struct.zip_device* %0, %struct.zip_device** %3, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %13 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZIP_CMD_CTL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i8* @zip_reg_read(i64 %16)
  %18 = ptrtoint i8* %17 to i32
  %19 = bitcast %union.zip_cmd_ctl* %4 to i32*
  store i32 %18, i32* %19, align 4
  %20 = bitcast %union.zip_cmd_ctl* %4 to %struct.TYPE_9__*
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = bitcast %union.zip_cmd_ctl* %4 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 255
  %25 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %26 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZIP_CMD_CTL, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @zip_reg_write(i32 %24, i64 %29)
  %31 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %32 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZIP_CMD_CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i8* @zip_reg_read(i64 %35)
  %37 = call i32 (i8*, i8*, ...) @zip_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %39 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ZIP_CONSTANTS, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i8* @zip_reg_read(i64 %42)
  %44 = bitcast %union.zip_constants* %5 to i8**
  store i8* %43, i8** %44, align 8
  %45 = bitcast %union.zip_constants* %5 to %struct.TYPE_10__*
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %49 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = bitcast %union.zip_constants* %5 to %struct.TYPE_10__*
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %54 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = bitcast %union.zip_constants* %5 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %59 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %61 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %66 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %69 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i8*, ...) @zip_msg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %64, i32 %67, i32 %70)
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %109, %1
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @ZIP_NUM_QUEUES, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %112

76:                                               ; preds = %72
  %77 = bitcast %union.zip_quex_sbuf_ctl* %10 to i64*
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* @ZIP_CMD_QBUF_SIZE, align 4
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = bitcast %union.zip_quex_sbuf_ctl* %10 to %struct.TYPE_11__*
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = bitcast %union.zip_quex_sbuf_ctl* %10 to %struct.TYPE_11__*
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = bitcast %union.zip_quex_sbuf_ctl* %10 to %struct.TYPE_11__*
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = bitcast %union.zip_quex_sbuf_ctl* %10 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %92 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i64 @ZIP_QUEX_SBUF_CTL(i32 %94)
  %96 = add nsw i64 %93, %95
  %97 = call i32 @zip_reg_write(i32 %90, i64 %96)
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %102 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i64 @ZIP_QUEX_SBUF_CTL(i32 %104)
  %106 = add nsw i64 %103, %105
  %107 = call i8* @zip_reg_read(i64 %106)
  %108 = call i32 (i8*, i8*, ...) @zip_msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %100, i8* %107)
  br label %109

109:                                              ; preds = %76
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %72

112:                                              ; preds = %72
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %252, %112
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @ZIP_NUM_QUEUES, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %255

117:                                              ; preds = %113
  %118 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %119 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %118, i32 0, i32 1
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i64 %122
  %124 = call i32 @memset(%struct.TYPE_16__* %123, i32 0, i32 4)
  %125 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %126 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = call i32 @spin_lock_init(i32* %131)
  %133 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i64 @zip_cmd_qbuf_alloc(%struct.zip_device* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %141, %137
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %11, align 4
  %144 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @zip_cmd_qbuf_free(%struct.zip_device* %144, i32 %145)
  br label %138

147:                                              ; preds = %138
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %352

150:                                              ; preds = %117
  %151 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %152 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %151, i32 0, i32 1
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %160 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %159, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  store i32 %158, i32* %165, align 4
  %166 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %167 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %166, i32 0, i32 1
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %175 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %174, i32 0, i32 1
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  store i32 %173, i32* %180, align 4
  %181 = bitcast %union.zip_quex_sbuf_addr* %9 to i64*
  store i64 0, i64* %181, align 8
  %182 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %183 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %182, i32 0, i32 1
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @__pa(i32 %189)
  %191 = load i32, i32* @ZIP_128B_ALIGN, align 4
  %192 = ashr i32 %190, %191
  %193 = bitcast %union.zip_quex_sbuf_addr* %9 to %struct.TYPE_12__*
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = bitcast %union.zip_quex_sbuf_addr* %9 to %struct.TYPE_12__*
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i8*, i8*, ...) @zip_msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %197, i32 %200)
  %202 = bitcast %union.zip_quex_sbuf_addr* %9 to i64*
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %206 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %11, align 4
  %209 = call i64 @ZIP_QUEX_SBUF_ADDR(i32 %208)
  %210 = add nsw i64 %207, %209
  %211 = call i32 @zip_reg_write(i32 %204, i64 %210)
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  %215 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %216 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i64 @ZIP_QUEX_SBUF_ADDR(i32 %218)
  %220 = add nsw i64 %217, %219
  %221 = call i8* @zip_reg_read(i64 %220)
  %222 = call i32 (i8*, i8*, ...) @zip_msg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %214, i8* %221)
  %223 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %224 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %223, i32 0, i32 1
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %232 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %231, i32 0, i32 1
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %240 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %239, i32 0, i32 1
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %240, align 8
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i8*, i32, ...) @zip_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %230, i32 %238, i32 %246)
  %248 = bitcast %union.zip_quex_sbuf_addr* %9 to %struct.TYPE_12__*
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i8*, i32, ...) @zip_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %150
  %253 = load i32, i32* %11, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %11, align 4
  br label %113

255:                                              ; preds = %113
  %256 = bitcast %union.zip_que_ena* %6 to i32*
  store i32 0, i32* %256, align 4
  store i32 0, i32* %11, align 4
  br label %257

257:                                              ; preds = %268, %255
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* @ZIP_NUM_QUEUES, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %257
  %262 = load i32, i32* %11, align 4
  %263 = shl i32 1, %262
  %264 = bitcast %union.zip_que_ena* %6 to %struct.TYPE_13__*
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %261
  %269 = load i32, i32* %11, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %11, align 4
  br label %257

271:                                              ; preds = %257
  %272 = bitcast %union.zip_que_ena* %6 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %275 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @ZIP_QUE_ENA, align 8
  %278 = add nsw i64 %276, %277
  %279 = call i32 @zip_reg_write(i32 %273, i64 %278)
  %280 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %281 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @ZIP_QUE_ENA, align 8
  %284 = add nsw i64 %282, %283
  %285 = call i8* @zip_reg_read(i64 %284)
  %286 = call i32 (i8*, i8*, ...) @zip_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %285)
  store i32 0, i32* %11, align 4
  br label %287

287:                                              ; preds = %316, %271
  %288 = load i32, i32* %11, align 4
  %289 = load i32, i32* @ZIP_NUM_QUEUES, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %319

291:                                              ; preds = %287
  %292 = bitcast %union.zip_quex_map* %7 to i64*
  store i64 0, i64* %292, align 8
  %293 = bitcast %union.zip_quex_map* %7 to %struct.TYPE_14__*
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 0
  store i32 3, i32* %294, align 8
  %295 = bitcast %union.zip_quex_map* %7 to i64*
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  %298 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %299 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i32, i32* %11, align 4
  %302 = call i64 @ZIP_QUEX_MAP(i32 %301)
  %303 = add nsw i64 %300, %302
  %304 = call i32 @zip_reg_write(i32 %297, i64 %303)
  %305 = load i32, i32* %11, align 4
  %306 = sext i32 %305 to i64
  %307 = inttoptr i64 %306 to i8*
  %308 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %309 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* %11, align 4
  %312 = call i64 @ZIP_QUEX_MAP(i32 %311)
  %313 = add nsw i64 %310, %312
  %314 = call i8* @zip_reg_read(i64 %313)
  %315 = call i32 (i8*, i8*, ...) @zip_msg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %307, i8* %314)
  br label %316

316:                                              ; preds = %291
  %317 = load i32, i32* %11, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %11, align 4
  br label %287

319:                                              ; preds = %287
  %320 = bitcast %union.zip_que_pri* %8 to i64*
  store i64 0, i64* %320, align 8
  store i32 0, i32* %11, align 4
  br label %321

321:                                              ; preds = %332, %319
  %322 = load i32, i32* %11, align 4
  %323 = load i32, i32* @ZIP_NUM_QUEUES, align 4
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %335

325:                                              ; preds = %321
  %326 = load i32, i32* %11, align 4
  %327 = shl i32 1, %326
  %328 = bitcast %union.zip_que_pri* %8 to %struct.TYPE_15__*
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 8
  br label %332

332:                                              ; preds = %325
  %333 = load i32, i32* %11, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %11, align 4
  br label %321

335:                                              ; preds = %321
  %336 = bitcast %union.zip_que_pri* %8 to i64*
  %337 = load i64, i64* %336, align 8
  %338 = trunc i64 %337 to i32
  %339 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %340 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @ZIP_QUE_PRI, align 8
  %343 = add nsw i64 %341, %342
  %344 = call i32 @zip_reg_write(i32 %338, i64 %343)
  %345 = load %struct.zip_device*, %struct.zip_device** %3, align 8
  %346 = getelementptr inbounds %struct.zip_device, %struct.zip_device* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @ZIP_QUE_PRI, align 8
  %349 = add nsw i64 %347, %348
  %350 = call i8* @zip_reg_read(i64 %349)
  %351 = call i32 (i8*, i8*, ...) @zip_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %350)
  store i32 0, i32* %2, align 4
  br label %352

352:                                              ; preds = %335, %147
  %353 = load i32, i32* %2, align 4
  ret i32 %353
}

declare dso_local i8* @zip_reg_read(i64) #1

declare dso_local i32 @zip_reg_write(i32, i64) #1

declare dso_local i32 @zip_msg(i8*, i8*, ...) #1

declare dso_local i64 @ZIP_QUEX_SBUF_CTL(i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @zip_cmd_qbuf_alloc(%struct.zip_device*, i32) #1

declare dso_local i32 @zip_cmd_qbuf_free(%struct.zip_device*, i32) #1

declare dso_local i32 @__pa(i32) #1

declare dso_local i64 @ZIP_QUEX_SBUF_ADDR(i32) #1

declare dso_local i32 @zip_dbg(i8*, i32, ...) #1

declare dso_local i64 @ZIP_QUEX_MAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
