; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_setup_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_setup_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfax_hw = type { i32, %struct.TYPE_15__*, %struct.TYPE_22__, %struct.TYPE_23__, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*, i32, i32)*, i32 (%struct.TYPE_22__*)*, %struct.TYPE_20__*, i32, i32, i8*, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*)*, %struct.TYPE_21__, i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.firmware = type { i32, i32 }

@MISDN_MAX_IDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Speedfax.%d\00", align 1
@sfax_cnt = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@Cards = common dso_local global i32 0, align 4
@sfax_ctrl = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"isdn/ISAR.BIN\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: firmware request failed %d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: got firmware %zu bytes\0A\00", align 1
@sfax_dctrl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"SpeedFax %d cards installed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfax_hw*)* @setup_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_instance(%struct.sfax_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfax_hw*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sfax_hw* %0, %struct.sfax_hw** %3, align 8
  %8 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %9 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* @MISDN_MAX_IDLEN, align 8
  %12 = sub nsw i64 %11, 1
  %13 = load i32, i32* @sfax_cnt, align 4
  %14 = add nsw i32 %13, 1
  %15 = call i32 @snprintf(i32 %10, i64 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %16)
  %18 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %19 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %18, i32 0, i32 0
  %20 = call i32 @list_add_tail(i32* %19, i32* @Cards)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %21)
  %23 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %24 = call i32 @_set_debug(%struct.sfax_hw* %23)
  %25 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %26 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %25, i32 0, i32 7
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %29 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %28, i32 0, i32 7
  %30 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %31 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  store i32* %29, i32** %32, align 8
  %33 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %34 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %33, i32 0, i32 7
  %35 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %36 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 7
  store i32* %34, i32** %37, align 8
  %38 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %39 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 6
  store i8* bitcast (i32* @sfax_ctrl to i8*), i8** %40, align 8
  %41 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %42 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %45 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %48 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %51 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 5
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @THIS_MODULE, align 4
  %54 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %55 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 4
  store i32 %53, i32* %56, align 8
  %57 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %58 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %57, i32 0, i32 1
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = call i32 @request_firmware(%struct.firmware** %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %1
  %65 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %66 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  br label %234

70:                                               ; preds = %1
  %71 = load i32, i32* @debug, align 4
  %72 = load i32, i32* @DEBUG_HW, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %77 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.firmware*, %struct.firmware** %4, align 8
  %80 = getelementptr inbounds %struct.firmware, %struct.firmware* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %75, %70
  %84 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %85 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %84, i32 0, i32 3
  %86 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %87 = call i32 @mISDNisac_init(%struct.TYPE_23__* %85, %struct.sfax_hw* %86)
  %88 = load i32, i32* @sfax_dctrl, align 4
  %89 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %90 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  store i32 %88, i32* %94, align 4
  %95 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %96 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %95, i32 0, i32 2
  %97 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %98 = call i32 @mISDNisar_init(%struct.TYPE_22__* %96, %struct.sfax_hw* %97)
  %99 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %100 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  store i32 %98, i32* %103, align 8
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %133, %83
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %136

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %111 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @set_channelmap(i32 %109, i32 %115)
  %117 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %118 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %128 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = call i32 @list_add(i32* %126, i32* %131)
  br label %133

133:                                              ; preds = %107
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %5, align 4
  br label %104

136:                                              ; preds = %104
  %137 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %138 = call i32 @setup_speedfax(%struct.sfax_hw* %137)
  store i32 %138, i32* %6, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %217

142:                                              ; preds = %136
  %143 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %144 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 0
  %146 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %145, align 8
  %147 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %148 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %147, i32 0, i32 2
  %149 = call i32 %146(%struct.TYPE_22__* %148)
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %212

153:                                              ; preds = %142
  %154 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %155 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %159 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %158, i32 0, i32 1
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %163 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @mISDN_register_device(%struct.TYPE_16__* %157, i32* %161, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %153
  br label %212

169:                                              ; preds = %153
  %170 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %171 = call i32 @init_card(%struct.sfax_hw* %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %206

175:                                              ; preds = %169
  %176 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %177 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 1
  %179 = load i32 (%struct.TYPE_22__*, i32, i32)*, i32 (%struct.TYPE_22__*, i32, i32)** %178, align 8
  %180 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %181 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %180, i32 0, i32 2
  %182 = load %struct.firmware*, %struct.firmware** %4, align 8
  %183 = getelementptr inbounds %struct.firmware, %struct.firmware* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.firmware*, %struct.firmware** %4, align 8
  %186 = getelementptr inbounds %struct.firmware, %struct.firmware* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 %179(%struct.TYPE_22__* %181, i32 %184, i32 %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %198, label %191

191:                                              ; preds = %175
  %192 = load %struct.firmware*, %struct.firmware** %4, align 8
  %193 = call i32 @release_firmware(%struct.firmware* %192)
  %194 = load i32, i32* @sfax_cnt, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* @sfax_cnt, align 4
  %196 = load i32, i32* @sfax_cnt, align 4
  %197 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %196)
  store i32 0, i32* %2, align 4
  br label %249

198:                                              ; preds = %175
  %199 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %200 = call i32 @disable_hwirq(%struct.sfax_hw* %199)
  %201 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %202 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %205 = call i32 @free_irq(i32 %203, %struct.sfax_hw* %204)
  br label %206

206:                                              ; preds = %198, %174
  %207 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %208 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 0
  %211 = call i32 @mISDN_unregister_device(%struct.TYPE_16__* %210)
  br label %212

212:                                              ; preds = %206, %168, %152
  %213 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %214 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @release_region(i32 %215, i32 256)
  br label %217

217:                                              ; preds = %212, %141
  %218 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %219 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  %221 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %220, align 8
  %222 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %223 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %222, i32 0, i32 3
  %224 = call i32 %221(%struct.TYPE_23__* %223)
  %225 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %226 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 2
  %228 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %227, align 8
  %229 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %230 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %229, i32 0, i32 2
  %231 = call i32 %228(%struct.TYPE_22__* %230)
  %232 = load %struct.firmware*, %struct.firmware** %4, align 8
  %233 = call i32 @release_firmware(%struct.firmware* %232)
  br label %234

234:                                              ; preds = %217, %64
  %235 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %236 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %235, i32 0, i32 1
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = call i32 @pci_disable_device(%struct.TYPE_15__* %237)
  %239 = load i32, i32* %7, align 4
  %240 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %239)
  %241 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %242 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %241, i32 0, i32 0
  %243 = call i32 @list_del(i32* %242)
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %244)
  %246 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %247 = call i32 @kfree(%struct.sfax_hw* %246)
  %248 = load i32, i32* %6, align 4
  store i32 %248, i32* %2, align 4
  br label %249

249:                                              ; preds = %234, %191
  %250 = load i32, i32* %2, align 4
  ret i32 %250
}

declare dso_local i32 @snprintf(i32, i64, i8*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @_set_debug(%struct.sfax_hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, ...) #1

declare dso_local i32 @mISDNisac_init(%struct.TYPE_23__*, %struct.sfax_hw*) #1

declare dso_local i32 @mISDNisar_init(%struct.TYPE_22__*, %struct.sfax_hw*) #1

declare dso_local i32 @set_channelmap(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @setup_speedfax(%struct.sfax_hw*) #1

declare dso_local i32 @mISDN_register_device(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @init_card(%struct.sfax_hw*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @disable_hwirq(%struct.sfax_hw*) #1

declare dso_local i32 @free_irq(i32, %struct.sfax_hw*) #1

declare dso_local i32 @mISDN_unregister_device(%struct.TYPE_16__*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_15__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.sfax_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
