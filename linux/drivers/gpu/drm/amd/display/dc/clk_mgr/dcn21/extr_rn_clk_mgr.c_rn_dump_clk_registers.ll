; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_rn_dump_clk_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dcn21/extr_rn_clk_mgr.c_rn_dump_clk_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_state_registers_and_bypass = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_mgr = type { i32 }
%struct.clk_log_info = type { i32, i32, i32*, i64 }
%struct.rn_clk_internal = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"0x0 DFS\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"0x1 REFCLK\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"0x2 ERROR\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"0x3 400 FCH\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"0x4 600 FCH\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"clk_type,clk_value,deepsleep_cntl,deepsleep_allow,bypass\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"dcfclk,%d,%d,%d,%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"dprefclk,%d,N/A,N/A,%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"dispclk,%d,N/A,N/A,%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SPLIT\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"reg_name,value,clk_type\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"CLK1_CLK3_CURRENT_CNT,%d,dcfclk\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"CLK1_CLK3_DS_CNTL,%d,dcf_deep_sleep_divider\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"CLK1_CLK3_ALLOW_DS,%d,dcf_deep_sleep_allow\0A\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"CLK1_CLK2_CURRENT_CNT,%d,dprefclk\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"CLK1_CLK0_CURRENT_CNT,%d,dispclk\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"CLK1_CLK1_CURRENT_CNT,%d,dppclk\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"CLK1_CLK3_BYPASS_CNTL,%d,dcfclk_bypass\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"CLK1_CLK2_BYPASS_CNTL,%d,dprefclk_bypass\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"CLK1_CLK0_BYPASS_CNTL,%d,dispclk_bypass\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"CLK1_CLK1_BYPASS_CNTL,%d,dppclk_bypass\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_state_registers_and_bypass*, %struct.clk_mgr*, %struct.clk_log_info*)* @rn_dump_clk_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rn_dump_clk_registers(%struct.clk_state_registers_and_bypass* %0, %struct.clk_mgr* %1, %struct.clk_log_info* %2) #0 {
  %4 = alloca %struct.clk_state_registers_and_bypass*, align 8
  %5 = alloca %struct.clk_mgr*, align 8
  %6 = alloca %struct.clk_log_info*, align 8
  %7 = alloca %struct.rn_clk_internal, align 4
  %8 = alloca [5 x i8*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_state_registers_and_bypass* %0, %struct.clk_state_registers_and_bypass** %4, align 8
  store %struct.clk_mgr* %1, %struct.clk_mgr** %5, align 8
  store %struct.clk_log_info* %2, %struct.clk_log_info** %6, align 8
  %11 = bitcast %struct.rn_clk_internal* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 44, i1 false)
  %12 = bitcast [5 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = bitcast i8* %12 to [5 x i8*]*
  %14 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8** %15, align 8
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i8** %16, align 16
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 3
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8** %17, align 8
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %13, i32 0, i32 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8** %18, align 16
  store i32 0, i32* %9, align 4
  %19 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %20 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  %22 = load %struct.clk_mgr*, %struct.clk_mgr** %5, align 8
  %23 = call i32 @rn_dump_clk_registers_internal(%struct.rn_clk_internal* %7, %struct.clk_mgr* %22)
  %24 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 10
  %27 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %28 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 10
  %32 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %33 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %37 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 10
  %41 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %42 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 10
  %46 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %47 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 10
  %51 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %52 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 7
  %56 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %57 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %59 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %3
  %63 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %64 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %62, %3
  %68 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %69 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %68, i32 0, i32 6
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 7
  %74 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %75 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %77 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %70
  %81 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %82 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 4
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %70
  %86 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %87 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %86, i32 0, i32 7
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %80
  %89 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 7
  %92 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %93 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 4
  %94 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %95 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %88
  %99 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %100 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 4
  br i1 %102, label %103, label %106

103:                                              ; preds = %98, %88
  %104 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %105 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %104, i32 0, i32 8
  store i32 0, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %98
  %107 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 7
  %110 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %111 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %113 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %106
  %117 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %118 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 4
  br i1 %120, label %121, label %124

121:                                              ; preds = %116, %106
  %122 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %123 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %122, i32 0, i32 9
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %126 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %487

129:                                              ; preds = %124
  %130 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %131 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %132, i32 %133, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0))
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sub i32 %136, %135
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %140 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, %138
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %146 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %150 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %154 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %157 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %160 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %163 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %151, i32 %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %155, i32 %158, i32 %161, i8* %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = sub i32 %170, %169
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %174 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, %172
  store i32 %177, i32* %175, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %180 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add i32 %181, %178
  store i32 %182, i32* %180, align 4
  %183 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %184 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %188 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %191 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %190, i32 0, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %185, i32 %186, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %189, i8* %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = sub i32 %198, %197
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %202 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %203, align 4
  %205 = add i32 %204, %200
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %208 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add i32 %209, %206
  store i32 %210, i32* %208, align 4
  %211 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %212 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %216 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.clk_state_registers_and_bypass*, %struct.clk_state_registers_and_bypass** %4, align 8
  %219 = getelementptr inbounds %struct.clk_state_registers_and_bypass, %struct.clk_state_registers_and_bypass* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %213, i32 %214, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %217, i8* %223)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %10, align 4
  %227 = sub i32 %226, %225
  store i32 %227, i32* %10, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %230 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %231, align 4
  %233 = add i32 %232, %228
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %236 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = add i32 %237, %234
  store i32 %238, i32* %236, align 4
  %239 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %240 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %10, align 4
  %243 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %241, i32 %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* %9, align 4
  %245 = load i32, i32* %10, align 4
  %246 = sub i32 %245, %244
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %249 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %248, i32 0, i32 2
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %250, align 4
  %252 = add i32 %251, %247
  store i32 %252, i32* %250, align 4
  %253 = load i32, i32* %9, align 4
  %254 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %255 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %259 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %10, align 4
  %262 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %260, i32 %261, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  store i32 %262, i32* %9, align 4
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %10, align 4
  %265 = sub i32 %264, %263
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %268 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %270, %266
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* %9, align 4
  %273 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %274 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add i32 %275, %272
  store i32 %276, i32* %274, align 4
  %277 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %278 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %10, align 4
  %281 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %279, i32 %280, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %282)
  store i32 %283, i32* %9, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %10, align 4
  %286 = sub i32 %285, %284
  store i32 %286, i32* %10, align 4
  %287 = load i32, i32* %9, align 4
  %288 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %289 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %288, i32 0, i32 2
  %290 = load i32*, i32** %289, align 8
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, %287
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* %9, align 4
  %294 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %295 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = add i32 %296, %293
  store i32 %297, i32* %295, align 4
  %298 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %299 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %10, align 4
  %302 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %300, i32 %301, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i32 %303)
  store i32 %304, i32* %9, align 4
  %305 = load i32, i32* %9, align 4
  %306 = load i32, i32* %10, align 4
  %307 = sub i32 %306, %305
  store i32 %307, i32* %10, align 4
  %308 = load i32, i32* %9, align 4
  %309 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %310 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %311, align 4
  %313 = add i32 %312, %308
  store i32 %313, i32* %311, align 4
  %314 = load i32, i32* %9, align 4
  %315 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %316 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = add i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %320 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %10, align 4
  %323 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %321, i32 %322, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i32 %324)
  store i32 %325, i32* %9, align 4
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* %10, align 4
  %328 = sub i32 %327, %326
  store i32 %328, i32* %10, align 4
  %329 = load i32, i32* %9, align 4
  %330 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %331 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %330, i32 0, i32 2
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %332, align 4
  %334 = add i32 %333, %329
  store i32 %334, i32* %332, align 4
  %335 = load i32, i32* %9, align 4
  %336 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %337 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = add i32 %338, %335
  store i32 %339, i32* %337, align 4
  %340 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %341 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %10, align 4
  %344 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %342, i32 %343, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i32 %345)
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %9, align 4
  %348 = load i32, i32* %10, align 4
  %349 = sub i32 %348, %347
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %9, align 4
  %351 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %352 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %351, i32 0, i32 2
  %353 = load i32*, i32** %352, align 8
  %354 = load i32, i32* %353, align 4
  %355 = add i32 %354, %350
  store i32 %355, i32* %353, align 4
  %356 = load i32, i32* %9, align 4
  %357 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %358 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %357, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = add i32 %359, %356
  store i32 %360, i32* %358, align 4
  %361 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %362 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %10, align 4
  %365 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 4
  %366 = load i32, i32* %365, align 4
  %367 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %363, i32 %364, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i32 %366)
  store i32 %367, i32* %9, align 4
  %368 = load i32, i32* %9, align 4
  %369 = load i32, i32* %10, align 4
  %370 = sub i32 %369, %368
  store i32 %370, i32* %10, align 4
  %371 = load i32, i32* %9, align 4
  %372 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %373 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %372, i32 0, i32 2
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %374, align 4
  %376 = add i32 %375, %371
  store i32 %376, i32* %374, align 4
  %377 = load i32, i32* %9, align 4
  %378 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %379 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = add i32 %380, %377
  store i32 %381, i32* %379, align 4
  %382 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %383 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* %10, align 4
  %386 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 5
  %387 = load i32, i32* %386, align 4
  %388 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %384, i32 %385, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %387)
  store i32 %388, i32* %9, align 4
  %389 = load i32, i32* %9, align 4
  %390 = load i32, i32* %10, align 4
  %391 = sub i32 %390, %389
  store i32 %391, i32* %10, align 4
  %392 = load i32, i32* %9, align 4
  %393 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %394 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %393, i32 0, i32 2
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %395, align 4
  %397 = add i32 %396, %392
  store i32 %397, i32* %395, align 4
  %398 = load i32, i32* %9, align 4
  %399 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %400 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, %398
  store i32 %402, i32* %400, align 4
  %403 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %404 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %10, align 4
  %407 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 7
  %408 = load i32, i32* %407, align 4
  %409 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %405, i32 %406, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i32 %408)
  store i32 %409, i32* %9, align 4
  %410 = load i32, i32* %9, align 4
  %411 = load i32, i32* %10, align 4
  %412 = sub i32 %411, %410
  store i32 %412, i32* %10, align 4
  %413 = load i32, i32* %9, align 4
  %414 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %415 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %414, i32 0, i32 2
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %416, align 4
  %418 = add i32 %417, %413
  store i32 %418, i32* %416, align 4
  %419 = load i32, i32* %9, align 4
  %420 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %421 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = add i32 %422, %419
  store i32 %423, i32* %421, align 4
  %424 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %425 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* %10, align 4
  %428 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 9
  %429 = load i32, i32* %428, align 4
  %430 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %426, i32 %427, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0), i32 %429)
  store i32 %430, i32* %9, align 4
  %431 = load i32, i32* %9, align 4
  %432 = load i32, i32* %10, align 4
  %433 = sub i32 %432, %431
  store i32 %433, i32* %10, align 4
  %434 = load i32, i32* %9, align 4
  %435 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %436 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %435, i32 0, i32 2
  %437 = load i32*, i32** %436, align 8
  %438 = load i32, i32* %437, align 4
  %439 = add i32 %438, %434
  store i32 %439, i32* %437, align 4
  %440 = load i32, i32* %9, align 4
  %441 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %442 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = add i32 %443, %440
  store i32 %444, i32* %442, align 4
  %445 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %446 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* %10, align 4
  %449 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 8
  %450 = load i32, i32* %449, align 4
  %451 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %447, i32 %448, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %450)
  store i32 %451, i32* %9, align 4
  %452 = load i32, i32* %9, align 4
  %453 = load i32, i32* %10, align 4
  %454 = sub i32 %453, %452
  store i32 %454, i32* %10, align 4
  %455 = load i32, i32* %9, align 4
  %456 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %457 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %456, i32 0, i32 2
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %458, align 4
  %460 = add i32 %459, %455
  store i32 %460, i32* %458, align 4
  %461 = load i32, i32* %9, align 4
  %462 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %463 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = add i32 %464, %461
  store i32 %465, i32* %463, align 4
  %466 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %467 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* %10, align 4
  %470 = getelementptr inbounds %struct.rn_clk_internal, %struct.rn_clk_internal* %7, i32 0, i32 6
  %471 = load i32, i32* %470, align 4
  %472 = call i32 (i32, i32, i8*, ...) @snprintf_count(i32 %468, i32 %469, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i32 %471)
  store i32 %472, i32* %9, align 4
  %473 = load i32, i32* %9, align 4
  %474 = load i32, i32* %10, align 4
  %475 = sub i32 %474, %473
  store i32 %475, i32* %10, align 4
  %476 = load i32, i32* %9, align 4
  %477 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %478 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %477, i32 0, i32 2
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %479, align 4
  %481 = add i32 %480, %476
  store i32 %481, i32* %479, align 4
  %482 = load i32, i32* %9, align 4
  %483 = load %struct.clk_log_info*, %struct.clk_log_info** %6, align 8
  %484 = getelementptr inbounds %struct.clk_log_info, %struct.clk_log_info* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = add i32 %485, %482
  store i32 %486, i32* %484, align 4
  br label %487

487:                                              ; preds = %129, %124
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rn_dump_clk_registers_internal(%struct.rn_clk_internal*, %struct.clk_mgr*) #2

declare dso_local i32 @snprintf_count(i32, i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
