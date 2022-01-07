; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_isac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isac_hw = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@isac_l1cmd = common dso_local global i32 0, align 4
@dbusy_timer_handler = common dso_local global i32 0, align 4
@IPAC_TYPE_ISACX = common dso_local global i32 0, align 4
@ISACX_MASK = common dso_local global i32 0, align 4
@ISACX_STARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s: ISACX STARD %x\0A\00", align 1
@ISACX_ISTAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: ISACX ISTAD %x\0A\00", align 1
@ISACX_ISTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: ISACX ISTA %x\0A\00", align 1
@ISACX_TR_CONF0 = common dso_local global i32 0, align 4
@ISACX_TR_CONF2 = common dso_local global i32 0, align 4
@ISACX_MODED = common dso_local global i32 0, align 4
@ISACX_ID = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: ISACX Design ID %x\0A\00", align 1
@ISACX_CIR0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: ISACX CIR0 %02X\0A\00", align 1
@ISAC_CMD_RS = common dso_local global i32 0, align 4
@IPACX__ON = common dso_local global i32 0, align 4
@ISACX_MASKD = common dso_local global i32 0, align 4
@ISAC_MASK = common dso_local global i32 0, align 4
@ISAC_STAR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"%s: ISAC STAR %x\0A\00", align 1
@ISAC_MODE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"%s: ISAC MODE %x\0A\00", align 1
@ISAC_ADF2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"%s: ISAC ADF2 %x\0A\00", align 1
@ISAC_ISTA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"%s: ISAC ISTA %x\0A\00", align 1
@ISAC_EXIR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"%s: ISAC EXIR %x\0A\00", align 1
@ISAC_RBCH = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: ISAC version (%x): %s\0A\00", align 1
@ISACVer = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [42 x i8] c"%s: only support IOM2 mode but adf2=%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ISAC_SQXR = common dso_local global i32 0, align 4
@ISAC_SPCR = common dso_local global i32 0, align 4
@ISAC_STCR = common dso_local global i32 0, align 4
@ISAC_TIMR = common dso_local global i32 0, align 4
@ISAC_ADF1 = common dso_local global i32 0, align 4
@ISAC_CIR0 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"%s: ISAC CIR0 %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isac_hw*)* @isac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isac_init(%struct.isac_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isac_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.isac_hw* %0, %struct.isac_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %7 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %1
  %12 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %13 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %12, i32 0, i32 5
  %14 = load i32, i32* @isac_l1cmd, align 4
  %15 = call i32 @create_l1(%struct.TYPE_2__* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %271

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %23 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %22, i32 0, i32 7
  store i32* null, i32** %23, align 8
  %24 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %25 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %24, i32 0, i32 6
  store i32* null, i32** %25, align 8
  %26 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %27 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* @dbusy_timer_handler, align 4
  %30 = call i32 @timer_setup(i32* %28, i32 %29, i32 0)
  %31 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %32 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %31, i32 0, i32 0
  store i32 170, i32* %32, align 8
  %33 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %34 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IPAC_TYPE_ISACX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %118

39:                                               ; preds = %21
  %40 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %41 = load i32, i32* @ISACX_MASK, align 4
  %42 = call i32 @WriteISAC(%struct.isac_hw* %40, i32 %41, i32 255)
  %43 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %44 = load i32, i32* @ISACX_STARD, align 4
  %45 = call i32 @ReadISAC(%struct.isac_hw* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %47 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %52 = load i32, i32* @ISACX_ISTAD, align 4
  %53 = call i32 @ReadISAC(%struct.isac_hw* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %55 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %60 = load i32, i32* @ISACX_ISTA, align 4
  %61 = call i32 @ReadISAC(%struct.isac_hw* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %63 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65)
  %67 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %68 = load i32, i32* @ISACX_TR_CONF0, align 4
  %69 = call i32 @WriteISAC(%struct.isac_hw* %67, i32 %68, i32 0)
  %70 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %71 = load i32, i32* @ISACX_TR_CONF2, align 4
  %72 = call i32 @WriteISAC(%struct.isac_hw* %70, i32 %71, i32 0)
  %73 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %74 = load i32, i32* @ISACX_MODED, align 4
  %75 = call i32 @WriteISAC(%struct.isac_hw* %73, i32 %74, i32 201)
  %76 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %77 = load i32, i32* @ISACX_ID, align 4
  %78 = call i32 @ReadISAC(%struct.isac_hw* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %80 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DEBUG_HW, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %39
  %87 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %88 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 63
  %92 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %86, %39
  %94 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %95 = load i32, i32* @ISACX_CIR0, align 4
  %96 = call i32 @ReadISAC(%struct.isac_hw* %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %98 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* %4, align 4
  %103 = ashr i32 %102, 4
  %104 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %105 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %107 = call i32 @isac_ph_state_change(%struct.isac_hw* %106)
  %108 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %109 = load i32, i32* @ISAC_CMD_RS, align 4
  %110 = call i32 @ph_command(%struct.isac_hw* %108, i32 %109)
  %111 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %112 = load i32, i32* @ISACX_MASK, align 4
  %113 = load i32, i32* @IPACX__ON, align 4
  %114 = call i32 @WriteISAC(%struct.isac_hw* %111, i32 %112, i32 %113)
  %115 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %116 = load i32, i32* @ISACX_MASKD, align 4
  %117 = call i32 @WriteISAC(%struct.isac_hw* %115, i32 %116, i32 0)
  br label %269

118:                                              ; preds = %21
  %119 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %120 = load i32, i32* @ISAC_MASK, align 4
  %121 = call i32 @WriteISAC(%struct.isac_hw* %119, i32 %120, i32 255)
  %122 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %123 = load i32, i32* @ISAC_STAR, align 4
  %124 = call i32 @ReadISAC(%struct.isac_hw* %122, i32 %123)
  store i32 %124, i32* %4, align 4
  %125 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %126 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %131 = load i32, i32* @ISAC_MODE, align 4
  %132 = call i32 @ReadISAC(%struct.isac_hw* %130, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %134 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %139 = load i32, i32* @ISAC_ADF2, align 4
  %140 = call i32 @ReadISAC(%struct.isac_hw* %138, i32 %139)
  store i32 %140, i32* %4, align 4
  %141 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %142 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %143, i32 %144)
  %146 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %147 = load i32, i32* @ISAC_ISTA, align 4
  %148 = call i32 @ReadISAC(%struct.isac_hw* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %150 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %151, i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = and i32 %154, 1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %118
  %158 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %159 = load i32, i32* @ISAC_EXIR, align 4
  %160 = call i32 @ReadISAC(%struct.isac_hw* %158, i32 %159)
  store i32 %160, i32* %4, align 4
  %161 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %162 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %157, %118
  %167 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %168 = load i32, i32* @ISAC_RBCH, align 4
  %169 = call i32 @ReadISAC(%struct.isac_hw* %167, i32 %168)
  store i32 %169, i32* %4, align 4
  %170 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %171 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @DEBUG_HW, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %166
  %178 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %179 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = load i32*, i32** @ISACVer, align 8
  %183 = load i32, i32* %4, align 4
  %184 = ashr i32 %183, 5
  %185 = and i32 %184, 3
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, i32, i32, ...) @pr_notice(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %180, i32 %181, i32 %188)
  br label %190

190:                                              ; preds = %177, %166
  %191 = load i32, i32* %4, align 4
  %192 = ashr i32 %191, 5
  %193 = and i32 %192, 3
  %194 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %195 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %199 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %190
  %203 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %204 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %203, i32 0, i32 3
  store i32 128, i32* %204, align 4
  br label %205

205:                                              ; preds = %202, %190
  %206 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %207 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, 128
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %223, label %211

211:                                              ; preds = %205
  %212 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %213 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %216 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 %214, i32 %217)
  %219 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %220 = call i32 @isac_release(%struct.isac_hw* %219)
  %221 = load i32, i32* @EINVAL, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %2, align 4
  br label %271

223:                                              ; preds = %205
  %224 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %225 = load i32, i32* @ISAC_ADF2, align 4
  %226 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %227 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @WriteISAC(%struct.isac_hw* %224, i32 %225, i32 %228)
  %230 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %231 = load i32, i32* @ISAC_SQXR, align 4
  %232 = call i32 @WriteISAC(%struct.isac_hw* %230, i32 %231, i32 47)
  %233 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %234 = load i32, i32* @ISAC_SPCR, align 4
  %235 = call i32 @WriteISAC(%struct.isac_hw* %233, i32 %234, i32 0)
  %236 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %237 = load i32, i32* @ISAC_STCR, align 4
  %238 = call i32 @WriteISAC(%struct.isac_hw* %236, i32 %237, i32 112)
  %239 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %240 = load i32, i32* @ISAC_MODE, align 4
  %241 = call i32 @WriteISAC(%struct.isac_hw* %239, i32 %240, i32 201)
  %242 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %243 = load i32, i32* @ISAC_TIMR, align 4
  %244 = call i32 @WriteISAC(%struct.isac_hw* %242, i32 %243, i32 0)
  %245 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %246 = load i32, i32* @ISAC_ADF1, align 4
  %247 = call i32 @WriteISAC(%struct.isac_hw* %245, i32 %246, i32 0)
  %248 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %249 = load i32, i32* @ISAC_CIR0, align 4
  %250 = call i32 @ReadISAC(%struct.isac_hw* %248, i32 %249)
  store i32 %250, i32* %4, align 4
  %251 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %252 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %4, align 4
  %255 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %253, i32 %254)
  %256 = load i32, i32* %4, align 4
  %257 = ashr i32 %256, 2
  %258 = and i32 %257, 15
  %259 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %260 = getelementptr inbounds %struct.isac_hw, %struct.isac_hw* %259, i32 0, i32 2
  store i32 %258, i32* %260, align 8
  %261 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %262 = call i32 @isac_ph_state_change(%struct.isac_hw* %261)
  %263 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %264 = load i32, i32* @ISAC_CMD_RS, align 4
  %265 = call i32 @ph_command(%struct.isac_hw* %263, i32 %264)
  %266 = load %struct.isac_hw*, %struct.isac_hw** %3, align 8
  %267 = load i32, i32* @ISAC_MASK, align 4
  %268 = call i32 @WriteISAC(%struct.isac_hw* %266, i32 %267, i32 0)
  br label %269

269:                                              ; preds = %223, %93
  %270 = load i32, i32* %5, align 4
  store i32 %270, i32* %2, align 4
  br label %271

271:                                              ; preds = %269, %211, %18
  %272 = load i32, i32* %2, align 4
  ret i32 %272
}

declare dso_local i32 @create_l1(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @WriteISAC(%struct.isac_hw*, i32, i32) #1

declare dso_local i32 @ReadISAC(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, ...) #1

declare dso_local i32 @isac_ph_state_change(%struct.isac_hw*) #1

declare dso_local i32 @ph_command(%struct.isac_hw*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @isac_release(%struct.isac_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
