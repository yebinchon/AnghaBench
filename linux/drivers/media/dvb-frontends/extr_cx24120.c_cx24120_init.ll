; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cx24120.c_cx24120_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cx24120_state*, %struct.dtv_frontend_properties }
%struct.cx24120_state = type { i32, %struct.TYPE_21__*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 (%struct.dvb_frontend*, %struct.firmware**, i32)* }
%struct.firmware = type { i32, i32* }
%struct.dtv_frontend_properties = type { %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i8* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.cx24120_cmd = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"requesting firmware (%s) to download...\0A\00", align 1
@CX24120_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not load firmware (%s): %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Firmware found, size %d bytes (%02x %02x .. %02x %02x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Firmware uploaded successfully\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Firmware upload failed. Last byte returned=0x%x\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@CMD_START_TUNER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Error tuner start! :(\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Error set VCO! :(\0A\00", align 1
@CMD_BANDWIDTH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Error set bandwidth!\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Reset-readreg 0xba: %x\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Error initialising tuner!\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Tuner initialised correctly.\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Error initialising mpeg output. :(\0A\00", align 1
@CMD_BER_CTRL = common dso_local global i32 0, align 4
@CX24120_BER_WINDOW = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"Error setting ber window\0A\00", align 1
@CMD_FWVERSION = common dso_local global i32 0, align 4
@CX24120_REG_MAILBOX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"FW version %i.%i.%i.%i\0A\00", align 1
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @cx24120_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx24120_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca %struct.cx24120_state*, align 8
  %7 = alloca %struct.cx24120_cmd, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %5, align 8
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.cx24120_state*, %struct.cx24120_state** %15, align 8
  store %struct.cx24120_state* %16, %struct.cx24120_state** %6, align 8
  %17 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %18 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %496

22:                                               ; preds = %1
  %23 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %24 = call i32 @cx24120_writereg(%struct.cx24120_state* %23, i32 234, i32 0)
  %25 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %26 = call i32 @cx24120_test_rom(%struct.cx24120_state* %25)
  %27 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %28 = call i32 @cx24120_readreg(%struct.cx24120_state* %27, i32 251)
  %29 = and i32 %28, 254
  store i32 %29, i32* %8, align 4
  %30 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @cx24120_writereg(%struct.cx24120_state* %30, i32 251, i32 %31)
  %33 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %34 = call i32 @cx24120_readreg(%struct.cx24120_state* %33, i32 252)
  %35 = and i32 %34, 254
  store i32 %35, i32* %8, align 4
  %36 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @cx24120_writereg(%struct.cx24120_state* %36, i32 252, i32 %37)
  %39 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %40 = call i32 @cx24120_writereg(%struct.cx24120_state* %39, i32 195, i32 4)
  %41 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %42 = call i32 @cx24120_writereg(%struct.cx24120_state* %41, i32 196, i32 4)
  %43 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %44 = call i32 @cx24120_writereg(%struct.cx24120_state* %43, i32 206, i32 0)
  %45 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %46 = call i32 @cx24120_writereg(%struct.cx24120_state* %45, i32 207, i32 0)
  %47 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %48 = call i32 @cx24120_readreg(%struct.cx24120_state* %47, i32 234)
  %49 = and i32 %48, 254
  store i32 %49, i32* %8, align 4
  %50 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @cx24120_writereg(%struct.cx24120_state* %50, i32 234, i32 %51)
  %53 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %54 = call i32 @cx24120_writereg(%struct.cx24120_state* %53, i32 235, i32 12)
  %55 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %56 = call i32 @cx24120_writereg(%struct.cx24120_state* %55, i32 236, i32 6)
  %57 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %58 = call i32 @cx24120_writereg(%struct.cx24120_state* %57, i32 237, i32 5)
  %59 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %60 = call i32 @cx24120_writereg(%struct.cx24120_state* %59, i32 238, i32 3)
  %61 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %62 = call i32 @cx24120_writereg(%struct.cx24120_state* %61, i32 239, i32 5)
  %63 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %64 = call i32 @cx24120_writereg(%struct.cx24120_state* %63, i32 243, i32 3)
  %65 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %66 = call i32 @cx24120_writereg(%struct.cx24120_state* %65, i32 244, i32 68)
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %79, %22
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 240, %72
  %74 = call i32 @cx24120_writereg(%struct.cx24120_state* %71, i32 %73, i32 4)
  %75 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 230, %76
  %78 = call i32 @cx24120_writereg(%struct.cx24120_state* %75, i32 %77, i32 2)
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %67

82:                                               ; preds = %67
  %83 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = or i32 %84, 1
  %86 = call i32 @cx24120_writereg(%struct.cx24120_state* %83, i32 234, i32 %85)
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %99, %82
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 6
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 197, %92
  %94 = call i32 @cx24120_writereg(%struct.cx24120_state* %91, i32 %93, i32 0)
  %95 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 198, %96
  %98 = call i32 @cx24120_writereg(%struct.cx24120_state* %95, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %10, align 4
  br label %87

102:                                              ; preds = %87
  %103 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %104 = call i32 @cx24120_writereg(%struct.cx24120_state* %103, i32 228, i32 3)
  %105 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %106 = call i32 @cx24120_writereg(%struct.cx24120_state* %105, i32 235, i32 10)
  %107 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %108 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %107, i32 0, i32 1
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = load i32, i32* @CX24120_FIRMWARE, align 4
  %112 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %114 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %113, i32 0, i32 2
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i32)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i32)** %116, align 8
  %118 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %119 = load i32, i32* @CX24120_FIRMWARE, align 4
  %120 = call i32 %117(%struct.dvb_frontend* %118, %struct.firmware** %4, i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %102
  %124 = load i32, i32* @CX24120_FIRMWARE, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %2, align 4
  br label %496

128:                                              ; preds = %102
  %129 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %130 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %129, i32 0, i32 1
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load %struct.firmware*, %struct.firmware** %4, align 8
  %134 = getelementptr inbounds %struct.firmware, %struct.firmware* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.firmware*, %struct.firmware** %4, align 8
  %137 = getelementptr inbounds %struct.firmware, %struct.firmware* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.firmware*, %struct.firmware** %4, align 8
  %142 = getelementptr inbounds %struct.firmware, %struct.firmware* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.firmware*, %struct.firmware** %4, align 8
  %147 = getelementptr inbounds %struct.firmware, %struct.firmware* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.firmware*, %struct.firmware** %4, align 8
  %150 = getelementptr inbounds %struct.firmware, %struct.firmware* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %148, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.firmware*, %struct.firmware** %4, align 8
  %157 = getelementptr inbounds %struct.firmware, %struct.firmware* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.firmware*, %struct.firmware** %4, align 8
  %160 = getelementptr inbounds %struct.firmware, %struct.firmware* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %158, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %132, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %140, i32 %145, i32 %155, i32 %165)
  %167 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %168 = call i32 @cx24120_test_rom(%struct.cx24120_state* %167)
  %169 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %170 = call i32 @cx24120_readreg(%struct.cx24120_state* %169, i32 251)
  %171 = and i32 %170, 254
  store i32 %171, i32* %8, align 4
  %172 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @cx24120_writereg(%struct.cx24120_state* %172, i32 251, i32 %173)
  %175 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %176 = call i32 @cx24120_writereg(%struct.cx24120_state* %175, i32 224, i32 118)
  %177 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %178 = call i32 @cx24120_writereg(%struct.cx24120_state* %177, i32 247, i32 129)
  %179 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %180 = call i32 @cx24120_writereg(%struct.cx24120_state* %179, i32 248, i32 0)
  %181 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %182 = call i32 @cx24120_writereg(%struct.cx24120_state* %181, i32 249, i32 0)
  %183 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %184 = load %struct.firmware*, %struct.firmware** %4, align 8
  %185 = getelementptr inbounds %struct.firmware, %struct.firmware* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.firmware*, %struct.firmware** %4, align 8
  %188 = getelementptr inbounds %struct.firmware, %struct.firmware* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sub nsw i32 %189, 1
  %191 = call i32 @cx24120_writeregs(%struct.cx24120_state* %183, i32 250, i32* %186, i32 %190, i32 0)
  %192 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %193 = call i32 @cx24120_writereg(%struct.cx24120_state* %192, i32 247, i32 192)
  %194 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %195 = call i32 @cx24120_writereg(%struct.cx24120_state* %194, i32 224, i32 0)
  %196 = load %struct.firmware*, %struct.firmware** %4, align 8
  %197 = getelementptr inbounds %struct.firmware, %struct.firmware* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 %198, 2
  %200 = and i32 %199, 255
  store i32 %200, i32* %8, align 4
  %201 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %202 = load i32, i32* %8, align 4
  %203 = call i32 @cx24120_writereg(%struct.cx24120_state* %201, i32 248, i32 %202)
  %204 = load %struct.firmware*, %struct.firmware** %4, align 8
  %205 = getelementptr inbounds %struct.firmware, %struct.firmware* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, 2
  %208 = ashr i32 %207, 8
  %209 = and i32 %208, 255
  store i32 %209, i32* %8, align 4
  %210 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @cx24120_writereg(%struct.cx24120_state* %210, i32 249, i32 %211)
  %213 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %214 = call i32 @cx24120_writereg(%struct.cx24120_state* %213, i32 247, i32 0)
  %215 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %216 = call i32 @cx24120_writereg(%struct.cx24120_state* %215, i32 220, i32 0)
  %217 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %218 = call i32 @cx24120_writereg(%struct.cx24120_state* %217, i32 220, i32 7)
  %219 = call i32 @msleep(i32 500)
  %220 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %221 = call i32 @cx24120_readreg(%struct.cx24120_state* %220, i32 225)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.firmware*, %struct.firmware** %4, align 8
  %224 = getelementptr inbounds %struct.firmware, %struct.firmware* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.firmware*, %struct.firmware** %4, align 8
  %227 = getelementptr inbounds %struct.firmware, %struct.firmware* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %225, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %222, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %128
  %235 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %236 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %235, i32 0, i32 1
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 0
  %239 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %238, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %245

240:                                              ; preds = %128
  %241 = load i32, i32* %9, align 4
  %242 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %241)
  %243 = load i32, i32* @EREMOTEIO, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %9, align 4
  br label %245

245:                                              ; preds = %240, %234
  %246 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %247 = call i32 @cx24120_writereg(%struct.cx24120_state* %246, i32 220, i32 0)
  %248 = load %struct.firmware*, %struct.firmware** %4, align 8
  %249 = call i32 @release_firmware(%struct.firmware* %248)
  %250 = load i32, i32* %9, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = load i32, i32* %9, align 4
  store i32 %253, i32* %2, align 4
  br label %496

254:                                              ; preds = %245
  %255 = load i32, i32* @CMD_START_TUNER, align 4
  %256 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  store i32 %255, i32* %256, align 8
  %257 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 0
  store i32 3, i32* %257, align 8
  %258 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 0
  store i32 0, i32* %260, align 4
  %261 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 1
  store i32 0, i32* %263, align 4
  %264 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 2
  store i32 0, i32* %266, align 4
  %267 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %268 = call i32 @cx24120_message_send(%struct.cx24120_state* %267, %struct.cx24120_cmd* %7)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %254
  %271 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %272 = load i32, i32* @EREMOTEIO, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %2, align 4
  br label %496

274:                                              ; preds = %254
  %275 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %276 = call i32 @cx24120_set_vco(%struct.cx24120_state* %275)
  store i32 %276, i32* %9, align 4
  %277 = load i32, i32* %9, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %281 = load i32, i32* %9, align 4
  store i32 %281, i32* %2, align 4
  br label %496

282:                                              ; preds = %274
  %283 = load i32, i32* @CMD_BANDWIDTH, align 4
  %284 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  store i32 %283, i32* %284, align 8
  %285 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 0
  store i32 12, i32* %285, align 8
  %286 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  store i32 0, i32* %288, align 4
  %289 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  store i32 0, i32* %291, align 4
  %292 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 2
  store i32 0, i32* %294, align 4
  %295 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  store i32 0, i32* %297, align 4
  %298 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 4
  store i32 5, i32* %300, align 4
  %301 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 5
  store i32 2, i32* %303, align 4
  %304 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 6
  store i32 2, i32* %306, align 4
  %307 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 7
  store i32 0, i32* %309, align 4
  %310 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 8
  store i32 5, i32* %312, align 4
  %313 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 9
  store i32 2, i32* %315, align 4
  %316 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 10
  store i32 2, i32* %318, align 4
  %319 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 11
  store i32 0, i32* %321, align 4
  %322 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %323 = call i32 @cx24120_message_send(%struct.cx24120_state* %322, %struct.cx24120_cmd* %7)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %282
  %326 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %327 = load i32, i32* @EREMOTEIO, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %2, align 4
  br label %496

329:                                              ; preds = %282
  %330 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %331 = call i32 @cx24120_readreg(%struct.cx24120_state* %330, i32 186)
  store i32 %331, i32* %8, align 4
  %332 = load i32, i32* %8, align 4
  %333 = icmp sgt i32 %332, 3
  br i1 %333, label %334, label %344

334:                                              ; preds = %329
  %335 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %336 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %335, i32 0, i32 1
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = load i32, i32* %9, align 4
  %340 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %338, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %339)
  %341 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %342 = load i32, i32* @EREMOTEIO, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %2, align 4
  br label %496

344:                                              ; preds = %329
  %345 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %346 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %345, i32 0, i32 1
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %347, i32 0, i32 0
  %349 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %348, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %350 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %351 = call i32 @cx24120_writereg(%struct.cx24120_state* %350, i32 235, i32 10)
  %352 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %353 = call i64 @cx24120_msg_mpeg_output_global_config(%struct.cx24120_state* %352, i32 0)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %367, label %355

355:                                              ; preds = %344
  %356 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %357 = call i64 @cx24120_msg_mpeg_output_config(%struct.cx24120_state* %356, i32 0)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %367, label %359

359:                                              ; preds = %355
  %360 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %361 = call i64 @cx24120_msg_mpeg_output_config(%struct.cx24120_state* %360, i32 1)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %367, label %363

363:                                              ; preds = %359
  %364 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %365 = call i64 @cx24120_msg_mpeg_output_config(%struct.cx24120_state* %364, i32 2)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %363, %359, %355, %344
  %368 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %369 = load i32, i32* @EREMOTEIO, align 4
  %370 = sub nsw i32 0, %369
  store i32 %370, i32* %2, align 4
  br label %496

371:                                              ; preds = %363
  %372 = load i32, i32* @CMD_BER_CTRL, align 4
  %373 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  store i32 %372, i32* %373, align 8
  %374 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 0
  store i32 3, i32* %374, align 8
  %375 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 0
  store i32 0, i32* %377, align 4
  %378 = load i8*, i8** @CX24120_BER_WINDOW, align 8
  %379 = ptrtoint i8* %378 to i32
  %380 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 1
  store i32 %379, i32* %382, align 4
  %383 = load i8*, i8** @CX24120_BER_WINDOW, align 8
  %384 = ptrtoint i8* %383 to i32
  %385 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 2
  store i32 %384, i32* %387, align 4
  %388 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %389 = call i32 @cx24120_message_send(%struct.cx24120_state* %388, %struct.cx24120_cmd* %7)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %395

391:                                              ; preds = %371
  %392 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %393 = load i32, i32* @EREMOTEIO, align 4
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %2, align 4
  br label %496

395:                                              ; preds = %371
  %396 = load i32, i32* @CMD_FWVERSION, align 4
  %397 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 2
  store i32 %396, i32* %397, align 8
  %398 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 0
  store i32 1, i32* %398, align 8
  store i32 0, i32* %10, align 4
  br label %399

399:                                              ; preds = %421, %395
  %400 = load i32, i32* %10, align 4
  %401 = icmp slt i32 %400, 4
  br i1 %401, label %402, label %424

402:                                              ; preds = %399
  %403 = load i32, i32* %10, align 4
  %404 = getelementptr inbounds %struct.cx24120_cmd, %struct.cx24120_cmd* %7, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  store i32 %403, i32* %406, align 4
  %407 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %408 = call i32 @cx24120_message_send(%struct.cx24120_state* %407, %struct.cx24120_cmd* %7)
  store i32 %408, i32* %9, align 4
  %409 = load i32, i32* %9, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %413

411:                                              ; preds = %402
  %412 = load i32, i32* %9, align 4
  store i32 %412, i32* %2, align 4
  br label %496

413:                                              ; preds = %402
  %414 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %415 = load i32, i32* @CX24120_REG_MAILBOX, align 4
  %416 = call i32 @cx24120_readreg(%struct.cx24120_state* %414, i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = load i32, i32* %10, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 %419
  store i8 %417, i8* %420, align 1
  br label %421

421:                                              ; preds = %413
  %422 = load i32, i32* %10, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %10, align 4
  br label %399

424:                                              ; preds = %399
  %425 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %426 = load i8, i8* %425, align 1
  %427 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  %428 = load i8, i8* %427, align 1
  %429 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  %430 = load i8, i8* %429, align 1
  %431 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  %432 = load i8, i8* %431, align 1
  %433 = call i32 @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i8 zeroext %426, i8 zeroext %428, i8 zeroext %430, i8 zeroext %432)
  %434 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %435 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %434, i32 0, i32 5
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 0
  store i32 1, i32* %436, align 8
  %437 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %438 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %439 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %438, i32 0, i32 5
  %440 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %439, i32 0, i32 1
  %441 = load %struct.TYPE_22__*, %struct.TYPE_22__** %440, align 8
  %442 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %441, i64 0
  %443 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %442, i32 0, i32 0
  store i8* %437, i8** %443, align 8
  %444 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %445 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %444, i32 0, i32 4
  %446 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %445, i32 0, i32 0
  store i32 1, i32* %446, align 8
  %447 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %448 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %449 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %448, i32 0, i32 4
  %450 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %449, i32 0, i32 1
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %451, i64 0
  %453 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %452, i32 0, i32 0
  store i8* %447, i8** %453, align 8
  %454 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %455 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %454, i32 0, i32 3
  %456 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %455, i32 0, i32 0
  store i32 1, i32* %456, align 8
  %457 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %458 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %459 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %459, i32 0, i32 1
  %461 = load %struct.TYPE_26__*, %struct.TYPE_26__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %461, i64 0
  %463 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %462, i32 0, i32 0
  store i8* %457, i8** %463, align 8
  %464 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %465 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %464, i32 0, i32 2
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 0
  store i32 1, i32* %466, align 8
  %467 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %468 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %469 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %469, i32 0, i32 1
  %471 = load %struct.TYPE_28__*, %struct.TYPE_28__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %471, i64 0
  %473 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %472, i32 0, i32 0
  store i8* %467, i8** %473, align 8
  %474 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %475 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %474, i32 0, i32 1
  %476 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %475, i32 0, i32 0
  store i32 1, i32* %476, align 8
  %477 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %478 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %479 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_16__*, %struct.TYPE_16__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %481, i64 0
  %483 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %482, i32 0, i32 0
  store i8* %477, i8** %483, align 8
  %484 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %485 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %485, i32 0, i32 0
  store i32 1, i32* %486, align 8
  %487 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %488 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %489 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %489, i32 0, i32 1
  %491 = load %struct.TYPE_18__*, %struct.TYPE_18__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %491, i64 0
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %492, i32 0, i32 0
  store i8* %487, i8** %493, align 8
  %494 = load %struct.cx24120_state*, %struct.cx24120_state** %6, align 8
  %495 = getelementptr inbounds %struct.cx24120_state, %struct.cx24120_state* %494, i32 0, i32 0
  store i32 1, i32* %495, align 8
  store i32 0, i32* %2, align 4
  br label %496

496:                                              ; preds = %424, %411, %391, %367, %334, %325, %279, %270, %252, %123, %21
  %497 = load i32, i32* %2, align 4
  ret i32 %497
}

declare dso_local i32 @cx24120_writereg(%struct.cx24120_state*, i32, i32) #1

declare dso_local i32 @cx24120_test_rom(%struct.cx24120_state*) #1

declare dso_local i32 @cx24120_readreg(%struct.cx24120_state*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local i32 @cx24120_writeregs(%struct.cx24120_state*, i32, i32*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @cx24120_message_send(%struct.cx24120_state*, %struct.cx24120_cmd*) #1

declare dso_local i32 @cx24120_set_vco(%struct.cx24120_state*) #1

declare dso_local i64 @cx24120_msg_mpeg_output_global_config(%struct.cx24120_state*, i32) #1

declare dso_local i64 @cx24120_msg_mpeg_output_config(%struct.cx24120_state*, i32) #1

declare dso_local i32 @info(i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
