; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-v0-debugfs.c_dw_edma_debugfs_regs_wr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/dw-edma/extr_dw-edma-v0-debugfs.c_dw_edma_debugfs_regs_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32*, i32* }
%struct.dentry = type { i32 }
%struct.debugfs_entries = type { i32 }

@engine_en = common dso_local global i32 0, align 4
@doorbell = common dso_local global i32 0, align 4
@ch_arb_weight_low = common dso_local global i32 0, align 4
@ch_arb_weight_high = common dso_local global i32 0, align 4
@int_status = common dso_local global i32 0, align 4
@int_mask = common dso_local global i32 0, align 4
@int_clear = common dso_local global i32 0, align 4
@err_status = common dso_local global i32 0, align 4
@done_imwr_low = common dso_local global i32 0, align 4
@done_imwr_high = common dso_local global i32 0, align 4
@abort_imwr_low = common dso_local global i32 0, align 4
@abort_imwr_high = common dso_local global i32 0, align 4
@ch01_imwr_data = common dso_local global i32 0, align 4
@ch23_imwr_data = common dso_local global i32 0, align 4
@ch45_imwr_data = common dso_local global i32 0, align 4
@ch67_imwr_data = common dso_local global i32 0, align 4
@linked_list_err_en = common dso_local global i32 0, align 4
@engine_chgroup = common dso_local global i32 0, align 4
@engine_hshake_cnt_low = common dso_local global i32 0, align 4
@engine_hshake_cnt_high = common dso_local global i32 0, align 4
@ch0_pwr_en = common dso_local global i32 0, align 4
@ch1_pwr_en = common dso_local global i32 0, align 4
@ch2_pwr_en = common dso_local global i32 0, align 4
@ch3_pwr_en = common dso_local global i32 0, align 4
@ch4_pwr_en = common dso_local global i32 0, align 4
@ch5_pwr_en = common dso_local global i32 0, align 4
@ch6_pwr_en = common dso_local global i32 0, align 4
@ch7_pwr_en = common dso_local global i32 0, align 4
@WRITE_STR = common dso_local global i8* null, align 8
@dw = common dso_local global %struct.TYPE_12__* null, align 8
@EDMA_MODE_UNROLL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@CHANNEL_STR = common dso_local global i8* null, align 8
@regs = common dso_local global %struct.TYPE_10__* null, align 8
@lim = common dso_local global %struct.TYPE_11__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @dw_edma_debugfs_regs_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_edma_debugfs_regs_wr(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca [17 x %struct.debugfs_entries], align 16
  %4 = alloca [11 x %struct.debugfs_entries], align 16
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %10 = getelementptr inbounds [17 x %struct.debugfs_entries], [17 x %struct.debugfs_entries]* %3, i64 0, i64 0
  %11 = load i32, i32* @engine_en, align 4
  %12 = call i32 @WR_REGISTER(i32 %11)
  %13 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %10, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %10, i64 1
  %15 = load i32, i32* @doorbell, align 4
  %16 = call i32 @WR_REGISTER(i32 %15)
  %17 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %14, i64 1
  %19 = load i32, i32* @ch_arb_weight_low, align 4
  %20 = call i32 @WR_REGISTER(i32 %19)
  %21 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %18, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %18, i64 1
  %23 = load i32, i32* @ch_arb_weight_high, align 4
  %24 = call i32 @WR_REGISTER(i32 %23)
  %25 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %22, i64 1
  %27 = load i32, i32* @int_status, align 4
  %28 = call i32 @WR_REGISTER(i32 %27)
  %29 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %26, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %26, i64 1
  %31 = load i32, i32* @int_mask, align 4
  %32 = call i32 @WR_REGISTER(i32 %31)
  %33 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %30, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %30, i64 1
  %35 = load i32, i32* @int_clear, align 4
  %36 = call i32 @WR_REGISTER(i32 %35)
  %37 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %34, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %34, i64 1
  %39 = load i32, i32* @err_status, align 4
  %40 = call i32 @WR_REGISTER(i32 %39)
  %41 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %38, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %38, i64 1
  %43 = load i32, i32* @done_imwr_low, align 4
  %44 = call i32 @WR_REGISTER(i32 %43)
  %45 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %42, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %42, i64 1
  %47 = load i32, i32* @done_imwr_high, align 4
  %48 = call i32 @WR_REGISTER(i32 %47)
  %49 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %46, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %46, i64 1
  %51 = load i32, i32* @abort_imwr_low, align 4
  %52 = call i32 @WR_REGISTER(i32 %51)
  %53 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %50, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %50, i64 1
  %55 = load i32, i32* @abort_imwr_high, align 4
  %56 = call i32 @WR_REGISTER(i32 %55)
  %57 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %54, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %54, i64 1
  %59 = load i32, i32* @ch01_imwr_data, align 4
  %60 = call i32 @WR_REGISTER(i32 %59)
  %61 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %58, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %58, i64 1
  %63 = load i32, i32* @ch23_imwr_data, align 4
  %64 = call i32 @WR_REGISTER(i32 %63)
  %65 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %62, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %62, i64 1
  %67 = load i32, i32* @ch45_imwr_data, align 4
  %68 = call i32 @WR_REGISTER(i32 %67)
  %69 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %66, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %66, i64 1
  %71 = load i32, i32* @ch67_imwr_data, align 4
  %72 = call i32 @WR_REGISTER(i32 %71)
  %73 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %70, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %70, i64 1
  %75 = load i32, i32* @linked_list_err_en, align 4
  %76 = call i32 @WR_REGISTER(i32 %75)
  %77 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %74, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds [11 x %struct.debugfs_entries], [11 x %struct.debugfs_entries]* %4, i64 0, i64 0
  %79 = load i32, i32* @engine_chgroup, align 4
  %80 = call i32 @WR_REGISTER_UNROLL(i32 %79)
  %81 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %78, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %78, i64 1
  %83 = load i32, i32* @engine_hshake_cnt_low, align 4
  %84 = call i32 @WR_REGISTER_UNROLL(i32 %83)
  %85 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %82, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %82, i64 1
  %87 = load i32, i32* @engine_hshake_cnt_high, align 4
  %88 = call i32 @WR_REGISTER_UNROLL(i32 %87)
  %89 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %86, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %86, i64 1
  %91 = load i32, i32* @ch0_pwr_en, align 4
  %92 = call i32 @WR_REGISTER_UNROLL(i32 %91)
  %93 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %90, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %90, i64 1
  %95 = load i32, i32* @ch1_pwr_en, align 4
  %96 = call i32 @WR_REGISTER_UNROLL(i32 %95)
  %97 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %94, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %94, i64 1
  %99 = load i32, i32* @ch2_pwr_en, align 4
  %100 = call i32 @WR_REGISTER_UNROLL(i32 %99)
  %101 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %98, i32 0, i32 0
  store i32 %100, i32* %101, align 4
  %102 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %98, i64 1
  %103 = load i32, i32* @ch3_pwr_en, align 4
  %104 = call i32 @WR_REGISTER_UNROLL(i32 %103)
  %105 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %102, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %102, i64 1
  %107 = load i32, i32* @ch4_pwr_en, align 4
  %108 = call i32 @WR_REGISTER_UNROLL(i32 %107)
  %109 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %106, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %106, i64 1
  %111 = load i32, i32* @ch5_pwr_en, align 4
  %112 = call i32 @WR_REGISTER_UNROLL(i32 %111)
  %113 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %110, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %110, i64 1
  %115 = load i32, i32* @ch6_pwr_en, align 4
  %116 = call i32 @WR_REGISTER_UNROLL(i32 %115)
  %117 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %114, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %114, i64 1
  %119 = load i32, i32* @ch7_pwr_en, align 4
  %120 = call i32 @WR_REGISTER_UNROLL(i32 %119)
  %121 = getelementptr inbounds %struct.debugfs_entries, %struct.debugfs_entries* %118, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = load i8*, i8** @WRITE_STR, align 8
  %123 = load %struct.dentry*, %struct.dentry** %2, align 8
  %124 = call %struct.dentry* @debugfs_create_dir(i8* %122, %struct.dentry* %123)
  store %struct.dentry* %124, %struct.dentry** %5, align 8
  %125 = load %struct.dentry*, %struct.dentry** %5, align 8
  %126 = icmp ne %struct.dentry* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %1
  br label %214

128:                                              ; preds = %1
  %129 = getelementptr inbounds [17 x %struct.debugfs_entries], [17 x %struct.debugfs_entries]* %3, i64 0, i64 0
  %130 = call i32 @ARRAY_SIZE(%struct.debugfs_entries* %129)
  store i32 %130, i32* %7, align 4
  %131 = getelementptr inbounds [17 x %struct.debugfs_entries], [17 x %struct.debugfs_entries]* %3, i64 0, i64 0
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.dentry*, %struct.dentry** %5, align 8
  %134 = call i32 @dw_edma_debugfs_create_x32(%struct.debugfs_entries* %131, i32 %132, %struct.dentry* %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dw, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @EDMA_MODE_UNROLL, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %128
  %141 = getelementptr inbounds [11 x %struct.debugfs_entries], [11 x %struct.debugfs_entries]* %4, i64 0, i64 0
  %142 = call i32 @ARRAY_SIZE(%struct.debugfs_entries* %141)
  store i32 %142, i32* %7, align 4
  %143 = getelementptr inbounds [11 x %struct.debugfs_entries], [11 x %struct.debugfs_entries]* %4, i64 0, i64 0
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.dentry*, %struct.dentry** %5, align 8
  %146 = call i32 @dw_edma_debugfs_create_x32(%struct.debugfs_entries* %143, i32 %144, %struct.dentry* %145)
  br label %147

147:                                              ; preds = %140, %128
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %211, %147
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dw, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %214

154:                                              ; preds = %148
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %156 = load i8*, i8** @CHANNEL_STR, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @snprintf(i8* %155, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %156, i32 %157)
  %159 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %160 = load %struct.dentry*, %struct.dentry** %5, align 8
  %161 = call %struct.dentry* @debugfs_create_dir(i8* %159, %struct.dentry* %160)
  store %struct.dentry* %161, %struct.dentry** %6, align 8
  %162 = load %struct.dentry*, %struct.dentry** %6, align 8
  %163 = icmp ne %struct.dentry* %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %154
  br label %214

165:                                              ; preds = %154
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** @regs, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load %struct.dentry*, %struct.dentry** %6, align 8
  %176 = call i32 @dw_edma_debugfs_regs_ch(i32* %174, %struct.dentry* %175)
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** @regs, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @lim, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %186, i64 0
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  store i32* %185, i32** %192, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** @regs, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @lim, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %204, i64 0
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %205, align 8
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  store i32* %203, i32** %210, align 8
  br label %211

211:                                              ; preds = %165
  %212 = load i32, i32* %8, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %8, align 4
  br label %148

214:                                              ; preds = %127, %164, %148
  ret void
}

declare dso_local i32 @WR_REGISTER(i32) #1

declare dso_local i32 @WR_REGISTER_UNROLL(i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.debugfs_entries*) #1

declare dso_local i32 @dw_edma_debugfs_create_x32(%struct.debugfs_entries*, i32, %struct.dentry*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @dw_edma_debugfs_regs_ch(i32*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
