; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_QUERY_FW.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mthca/extr_mthca_cmd.c_mthca_QUERY_FW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mthca_mailbox = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CMD_QUERY_FW = common dso_local global i32 0, align 4
@CMD_TIME_CLASS_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FW version %012llx, max commands %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Catastrophic error buffer at 0x%llx, size 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"FW supports commands through doorbells\0A\00", align 1
@MTHCA_CMD_NUM_DBELL_DWORDS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"FW size %d KB\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MTHCA_ICM_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Clear int @ %llx, EQ arm @ %llx, EQ set CI @ %llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"FW size %d KB (start %llx, end %llx)\0A\00", align 1
@QUERY_FW_CLR_INT_BASE_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_CMD_DB_BASE = common dso_local global i64 0, align 8
@QUERY_FW_CMD_DB_EN_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_CMD_DB_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_END_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_EQ_ARM_BASE_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_EQ_SET_CI_BASE_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_ERR_SIZE_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_ERR_START_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_MAX_CMD_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_SIZE_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_START_OFFSET = common dso_local global i64 0, align 8
@QUERY_FW_VER_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_QUERY_FW(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca %struct.mthca_mailbox*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev* %11, i32 %12)
  store %struct.mthca_mailbox* %13, %struct.mthca_mailbox** %4, align 8
  %14 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %15 = call i64 @IS_ERR(%struct.mthca_mailbox* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %19 = call i32 @PTR_ERR(%struct.mthca_mailbox* %18)
  store i32 %19, i32* %2, align 4
  br label %266

20:                                               ; preds = %1
  %21 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %22 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %25 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %26 = getelementptr inbounds %struct.mthca_mailbox, %struct.mthca_mailbox* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CMD_QUERY_FW, align 4
  %29 = load i32, i32* @CMD_TIME_CLASS_A, align 4
  %30 = call i32 @mthca_cmd_box(%struct.mthca_dev* %24, i32 0, i32 %27, i32 0, i32 0, i32 %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %261

34:                                               ; preds = %20
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @MTHCA_GET(i32 %37, i32* %38, i64 0)
  %40 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, 281470681743360
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = and i64 %48, 4294901760
  %50 = lshr i64 %49, 16
  %51 = or i64 %44, %50
  %52 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %53 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, 65535
  %57 = shl i64 %56, 16
  %58 = or i64 %51, %57
  %59 = trunc i64 %58 to i32
  %60 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %61 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @MTHCA_GET(i32 %62, i32* %63, i64 15)
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %68 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %71 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %76 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_dbg(%struct.mthca_dev* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %74, i32 %78)
  %80 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %81 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @MTHCA_GET(i32 %83, i32* %84, i64 48)
  %86 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %87 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @MTHCA_GET(i32 %89, i32* %90, i64 56)
  %92 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %93 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %99 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_dbg(%struct.mthca_dev* %92, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %97, i32 %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @MTHCA_GET(i32 %103, i32* %104, i64 16)
  %106 = load i32, i32* %7, align 4
  %107 = and i32 %106, 1
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %141

109:                                              ; preds = %34
  %110 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %111 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_dbg(%struct.mthca_dev* %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* %6, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @MTHCA_GET(i32 %112, i32* %113, i64 96)
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %134, %109
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @MTHCA_CMD_NUM_DBELL_DWORDS, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115
  %120 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %121 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %10, align 4
  %130 = shl i32 %129, 1
  %131 = add nsw i32 80, %130
  %132 = sext i32 %131 to i64
  %133 = call i32 @MTHCA_GET(i32 %127, i32* %128, i64 %132)
  br label %134

134:                                              ; preds = %119
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %115

137:                                              ; preds = %115
  %138 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @mthca_setup_cmd_doorbells(%struct.mthca_dev* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %34
  %142 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %143 = call i64 @mthca_is_memfree(%struct.mthca_dev* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %219

145:                                              ; preds = %141
  %146 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %147 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @MTHCA_GET(i32 %150, i32* %151, i64 0)
  %153 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %154 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @MTHCA_GET(i32 %157, i32* %158, i64 32)
  %160 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %161 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 @MTHCA_GET(i32 %164, i32* %165, i64 64)
  %167 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %168 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %5, align 8
  %173 = call i32 @MTHCA_GET(i32 %171, i32* %172, i64 72)
  %174 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %175 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %176 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 %179, 2
  %181 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_dbg(%struct.mthca_dev* %174, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %183 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @PAGE_SIZE, align 4
  %188 = load i32, i32* @MTHCA_ICM_PAGE_SIZE, align 4
  %189 = sdiv i32 %187, %188
  %190 = call i32 @ALIGN(i32 %186, i32 %189)
  %191 = load i32, i32* @PAGE_SHIFT, align 4
  %192 = load i32, i32* @MTHCA_ICM_PAGE_SHIFT, align 4
  %193 = sub nsw i32 %191, %192
  %194 = ashr i32 %190, %193
  %195 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %196 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  store i32 %194, i32* %198, align 4
  %199 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %200 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %201 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %207 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %213 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_dbg(%struct.mthca_dev* %199, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %205, i64 %211, i64 %217)
  br label %260

219:                                              ; preds = %141
  %220 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %221 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32*, i32** %5, align 8
  %226 = call i32 @MTHCA_GET(i32 %224, i32* %225, i64 32)
  %227 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %228 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32*, i32** %5, align 8
  %233 = call i32 @MTHCA_GET(i32 %231, i32* %232, i64 40)
  %234 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %235 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %236 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %241 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sub nsw i32 %239, %244
  %246 = ashr i32 %245, 10
  %247 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %248 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %254 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_dbg(%struct.mthca_dev* %234, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %246, i64 %252, i64 %258)
  br label %260

260:                                              ; preds = %219, %145
  br label %261

261:                                              ; preds = %260, %33
  %262 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %263 = load %struct.mthca_mailbox*, %struct.mthca_mailbox** %4, align 8
  %264 = call i32 @mthca_free_mailbox(%struct.mthca_dev* %262, %struct.mthca_mailbox* %263)
  %265 = load i32, i32* %8, align 4
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %261, %17
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local %struct.mthca_mailbox* @mthca_alloc_mailbox(%struct.mthca_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mthca_mailbox*) #1

declare dso_local i32 @mthca_cmd_box(%struct.mthca_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MTHCA_GET(i32, i32*, i64) #1

declare dso_local i32 @mthca_dbg(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @mthca_setup_cmd_doorbells(%struct.mthca_dev*, i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mthca_free_mailbox(%struct.mthca_dev*, %struct.mthca_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
