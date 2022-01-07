; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper-arm.c_cper_print_arm_err_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper-arm.c_cper_print_arm_err_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPER_ARM_MAX_TYPE = common dso_local global i32 0, align 4
@CPER_ARM_VENDOR_ERROR = common dso_local global i32 0, align 4
@CPER_ARM_ERR_VALID_TRANSACTION_TYPE = common dso_local global i32 0, align 4
@CPER_ARM_ERR_TRANSACTION_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_TRANSACTION_MASK = common dso_local global i32 0, align 4
@arm_err_trans_type_strs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"%stransaction type: %s\0A\00", align 1
@CPER_ARM_ERR_VALID_OPERATION_TYPE = common dso_local global i32 0, align 4
@CPER_ARM_ERR_OPERATION_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_OPERATION_MASK = common dso_local global i32 0, align 4
@arm_cache_err_op_strs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%soperation type: %s\0A\00", align 1
@arm_tlb_err_op_strs = common dso_local global i32* null, align 8
@arm_bus_err_op_strs = common dso_local global i32* null, align 8
@CPER_ARM_ERR_VALID_LEVEL = common dso_local global i32 0, align 4
@CPER_ARM_ERR_LEVEL_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_LEVEL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%scache level: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%sTLB level: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"%saffinity level at which the bus error occurred: %d\0A\00", align 1
@CPER_ARM_ERR_VALID_PROC_CONTEXT_CORRUPT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_PC_CORRUPT_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_PC_CORRUPT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"%sprocessor context corrupted\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"%sprocessor context not corrupted\0A\00", align 1
@CPER_ARM_ERR_VALID_CORRECTED = common dso_local global i32 0, align 4
@CPER_ARM_ERR_CORRECTED_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_CORRECTED_MASK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"%sthe error has been corrected\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"%sthe error has not been corrected\0A\00", align 1
@CPER_ARM_ERR_VALID_PRECISE_PC = common dso_local global i32 0, align 4
@CPER_ARM_ERR_PRECISE_PC_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_PRECISE_PC_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"%sPC is precise\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"%sPC is imprecise\0A\00", align 1
@CPER_ARM_ERR_VALID_RESTARTABLE_PC = common dso_local global i32 0, align 4
@CPER_ARM_ERR_RESTARTABLE_PC_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_RESTARTABLE_PC_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [84 x i8] c"%sProgram execution can be restarted reliably at the PC associated with the error.\0A\00", align 1
@CPER_ARM_ERR_VALID_PARTICIPATION_TYPE = common dso_local global i32 0, align 4
@CPER_ARM_ERR_PARTICIPATION_TYPE_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_PARTICIPATION_TYPE_MASK = common dso_local global i32 0, align 4
@arm_bus_err_part_type_strs = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"%sparticipation type: %s\0A\00", align 1
@CPER_ARM_ERR_VALID_TIME_OUT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_TIME_OUT_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_TIME_OUT_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"%srequest timed out\0A\00", align 1
@CPER_ARM_ERR_VALID_ADDRESS_SPACE = common dso_local global i32 0, align 4
@CPER_ARM_ERR_ADDRESS_SPACE_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_ADDRESS_SPACE_MASK = common dso_local global i32 0, align 4
@arm_bus_err_addr_space_strs = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"%saddress space: %s\0A\00", align 1
@CPER_ARM_ERR_VALID_MEM_ATTRIBUTES = common dso_local global i32 0, align 4
@CPER_ARM_ERR_MEM_ATTRIBUTES_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_MEM_ATTRIBUTES_MASK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"%smemory access attributes:0x%x\0A\00", align 1
@CPER_ARM_ERR_VALID_ACCESS_MODE = common dso_local global i32 0, align 4
@CPER_ARM_ERR_ACCESS_MODE_SHIFT = common dso_local global i32 0, align 4
@CPER_ARM_ERR_ACCESS_MODE_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [23 x i8] c"%saccess mode: normal\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"%saccess mode: secure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @cper_print_arm_err_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cper_print_arm_err_info(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @CPER_ARM_MAX_TYPE, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %311

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @CPER_ARM_VENDOR_ERROR, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %311

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CPER_ARM_ERR_VALID_TRANSACTION_TYPE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @CPER_ARM_ERR_TRANSACTION_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* @CPER_ARM_ERR_TRANSACTION_MASK, align 4
  %38 = and i32 %36, %37
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i32*, i32** @arm_err_trans_type_strs, align 8
  %42 = call i64 @ARRAY_SIZE(i32* %41)
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load i8*, i8** %4, align 8
  %46 = load i32*, i32** @arm_err_trans_type_strs, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %49)
  br label %51

51:                                               ; preds = %44, %33
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @CPER_ARM_ERR_VALID_OPERATION_TYPE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CPER_ARM_ERR_OPERATION_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = load i32, i32* @CPER_ARM_ERR_OPERATION_MASK, align 4
  %62 = and i32 %60, %61
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %8, align 8
  %64 = load i32, i32* %5, align 4
  switch i32 %64, label %104 [
    i32 129, label %65
    i32 128, label %78
    i32 130, label %91
  ]

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  %67 = load i32*, i32** @arm_cache_err_op_strs, align 8
  %68 = call i64 @ARRAY_SIZE(i32* %67)
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = load i32*, i32** @arm_cache_err_op_strs, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %71, i32 %75)
  br label %77

77:                                               ; preds = %70, %65
  br label %104

78:                                               ; preds = %57
  %79 = load i64, i64* %8, align 8
  %80 = load i32*, i32** @arm_tlb_err_op_strs, align 8
  %81 = call i64 @ARRAY_SIZE(i32* %80)
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i8*, i8** %4, align 8
  %85 = load i32*, i32** @arm_tlb_err_op_strs, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %84, i32 %88)
  br label %90

90:                                               ; preds = %83, %78
  br label %104

91:                                               ; preds = %57
  %92 = load i64, i64* %8, align 8
  %93 = load i32*, i32** @arm_bus_err_op_strs, align 8
  %94 = call i64 @ARRAY_SIZE(i32* %93)
  %95 = icmp ult i64 %92, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i8*, i8** %4, align 8
  %98 = load i32*, i32** @arm_bus_err_op_strs, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %101)
  br label %103

103:                                              ; preds = %96, %91
  br label %104

104:                                              ; preds = %57, %103, %90, %77
  br label %105

105:                                              ; preds = %104, %52
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @CPER_ARM_ERR_VALID_LEVEL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @CPER_ARM_ERR_LEVEL_SHIFT, align 4
  %113 = ashr i32 %111, %112
  %114 = load i32, i32* @CPER_ARM_ERR_LEVEL_MASK, align 4
  %115 = and i32 %113, %114
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %9, align 8
  %117 = load i32, i32* %5, align 4
  switch i32 %117, label %130 [
    i32 129, label %118
    i32 128, label %122
    i32 130, label %126
  ]

118:                                              ; preds = %110
  %119 = load i8*, i8** %4, align 8
  %120 = load i64, i64* %9, align 8
  %121 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %119, i64 %120)
  br label %130

122:                                              ; preds = %110
  %123 = load i8*, i8** %4, align 8
  %124 = load i64, i64* %9, align 8
  %125 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %123, i64 %124)
  br label %130

126:                                              ; preds = %110
  %127 = load i8*, i8** %4, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %127, i64 %128)
  br label %130

130:                                              ; preds = %110, %126, %122, %118
  br label %131

131:                                              ; preds = %130, %105
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @CPER_ARM_ERR_VALID_PROC_CONTEXT_CORRUPT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @CPER_ARM_ERR_PC_CORRUPT_SHIFT, align 4
  %139 = ashr i32 %137, %138
  %140 = load i32, i32* @CPER_ARM_ERR_PC_CORRUPT_MASK, align 4
  %141 = and i32 %139, %140
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i8*, i8** %4, align 8
  %146 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %145)
  br label %150

147:                                              ; preds = %136
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %148)
  br label %150

150:                                              ; preds = %147, %144
  br label %151

151:                                              ; preds = %150, %131
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @CPER_ARM_ERR_VALID_CORRECTED, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %151
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* @CPER_ARM_ERR_CORRECTED_SHIFT, align 4
  %159 = ashr i32 %157, %158
  %160 = load i32, i32* @CPER_ARM_ERR_CORRECTED_MASK, align 4
  %161 = and i32 %159, %160
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156
  %165 = load i8*, i8** %4, align 8
  %166 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %165)
  br label %170

167:                                              ; preds = %156
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %167, %164
  br label %171

171:                                              ; preds = %170, %151
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @CPER_ARM_ERR_VALID_PRECISE_PC, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %171
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* @CPER_ARM_ERR_PRECISE_PC_SHIFT, align 4
  %179 = ashr i32 %177, %178
  %180 = load i32, i32* @CPER_ARM_ERR_PRECISE_PC_MASK, align 4
  %181 = and i32 %179, %180
  store i32 %181, i32* %15, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %176
  %185 = load i8*, i8** %4, align 8
  %186 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %185)
  br label %190

187:                                              ; preds = %176
  %188 = load i8*, i8** %4, align 8
  %189 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %188)
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %171
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @CPER_ARM_ERR_VALID_RESTARTABLE_PC, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %191
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @CPER_ARM_ERR_RESTARTABLE_PC_SHIFT, align 4
  %199 = ashr i32 %197, %198
  %200 = load i32, i32* @CPER_ARM_ERR_RESTARTABLE_PC_MASK, align 4
  %201 = and i32 %199, %200
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i8*, i8** %4, align 8
  %206 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.11, i64 0, i64 0), i8* %205)
  br label %207

207:                                              ; preds = %204, %196
  br label %208

208:                                              ; preds = %207, %191
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 130
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  br label %311

212:                                              ; preds = %208
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @CPER_ARM_ERR_VALID_PARTICIPATION_TYPE, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %236

217:                                              ; preds = %212
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @CPER_ARM_ERR_PARTICIPATION_TYPE_SHIFT, align 4
  %220 = ashr i32 %218, %219
  %221 = load i32, i32* @CPER_ARM_ERR_PARTICIPATION_TYPE_MASK, align 4
  %222 = and i32 %220, %221
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %10, align 8
  %224 = load i64, i64* %10, align 8
  %225 = load i32*, i32** @arm_bus_err_part_type_strs, align 8
  %226 = call i64 @ARRAY_SIZE(i32* %225)
  %227 = icmp ult i64 %224, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %217
  %229 = load i8*, i8** %4, align 8
  %230 = load i32*, i32** @arm_bus_err_part_type_strs, align 8
  %231 = load i64, i64* %10, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %229, i32 %233)
  br label %235

235:                                              ; preds = %228, %217
  br label %236

236:                                              ; preds = %235, %212
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* @CPER_ARM_ERR_VALID_TIME_OUT, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %236
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @CPER_ARM_ERR_TIME_OUT_SHIFT, align 4
  %244 = ashr i32 %242, %243
  %245 = load i32, i32* @CPER_ARM_ERR_TIME_OUT_MASK, align 4
  %246 = and i32 %244, %245
  store i32 %246, i32* %17, align 4
  %247 = load i32, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load i8*, i8** %4, align 8
  %251 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %249, %241
  br label %253

253:                                              ; preds = %252, %236
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* @CPER_ARM_ERR_VALID_ADDRESS_SPACE, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %277

258:                                              ; preds = %253
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* @CPER_ARM_ERR_ADDRESS_SPACE_SHIFT, align 4
  %261 = ashr i32 %259, %260
  %262 = load i32, i32* @CPER_ARM_ERR_ADDRESS_SPACE_MASK, align 4
  %263 = and i32 %261, %262
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %11, align 8
  %265 = load i64, i64* %11, align 8
  %266 = load i32*, i32** @arm_bus_err_addr_space_strs, align 8
  %267 = call i64 @ARRAY_SIZE(i32* %266)
  %268 = icmp ult i64 %265, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %258
  %270 = load i8*, i8** %4, align 8
  %271 = load i32*, i32** @arm_bus_err_addr_space_strs, align 8
  %272 = load i64, i64* %11, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8* %270, i32 %274)
  br label %276

276:                                              ; preds = %269, %258
  br label %277

277:                                              ; preds = %276, %253
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @CPER_ARM_ERR_VALID_MEM_ATTRIBUTES, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %277
  %283 = load i32, i32* %6, align 4
  %284 = load i32, i32* @CPER_ARM_ERR_MEM_ATTRIBUTES_SHIFT, align 4
  %285 = ashr i32 %283, %284
  %286 = load i32, i32* @CPER_ARM_ERR_MEM_ATTRIBUTES_MASK, align 4
  %287 = and i32 %285, %286
  store i32 %287, i32* %12, align 4
  %288 = load i8*, i8** %4, align 8
  %289 = load i32, i32* %12, align 4
  %290 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* %288, i32 %289)
  br label %291

291:                                              ; preds = %282, %277
  %292 = load i32, i32* %6, align 4
  %293 = load i32, i32* @CPER_ARM_ERR_VALID_ACCESS_MODE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %311

296:                                              ; preds = %291
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* @CPER_ARM_ERR_ACCESS_MODE_SHIFT, align 4
  %299 = ashr i32 %297, %298
  %300 = load i32, i32* @CPER_ARM_ERR_ACCESS_MODE_MASK, align 4
  %301 = and i32 %299, %300
  store i32 %301, i32* %18, align 4
  %302 = load i32, i32* %18, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %296
  %305 = load i8*, i8** %4, align 8
  %306 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %305)
  br label %310

307:                                              ; preds = %296
  %308 = load i8*, i8** %4, align 8
  %309 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %308)
  br label %310

310:                                              ; preds = %307, %304
  br label %311

311:                                              ; preds = %22, %27, %211, %310, %291
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @printk(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
