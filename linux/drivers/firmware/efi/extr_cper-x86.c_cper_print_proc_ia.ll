; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper-x86.c_cper_print_proc_ia.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper-x86.c_cper_print_proc_ia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cper_sec_proc_ia = type { i32, %struct.cper_ia_proc_ctx*, i32 }
%struct.cper_ia_proc_ctx = type { i32, i64, i32, i32 }
%struct.cper_ia_err_info = type { i32, i32, i32, i32, i32, i32, i32 }

@VALID_LAPIC_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%sLocal APIC_ID: 0x%llx\0A\00", align 1
@VALID_CPUID_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%sCPUID Info:\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%sError Information Structure %d:\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%sError Structure Type: %s\0A\00", align 1
@cper_proc_error_type_strs = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@N_ERR_TYPES = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"%sError Structure Type: %pUl\0A\00", align 1
@INFO_VALID_CHECK_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"%sCheck Information: 0x%016llx\0A\00", align 1
@INFO_VALID_TARGET_ID = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"%sTarget Identifier: 0x%016llx\0A\00", align 1
@INFO_VALID_REQUESTOR_ID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"%sRequestor Identifier: 0x%016llx\0A\00", align 1
@INFO_VALID_RESPONDER_ID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"%sResponder Identifier: 0x%016llx\0A\00", align 1
@INFO_VALID_IP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"%sInstruction Pointer: 0x%016llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"%sContext Information Structure %d:\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"%sRegister Context Type: %s\0A\00", align 1
@ia_reg_ctx_strs = common dso_local global i8** null, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"%sRegister Array Size: 0x%04x\0A\00", align 1
@CTX_TYPE_MSR = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [23 x i8] c"%sMSR Address: 0x%08x\0A\00", align 1
@CTX_TYPE_MMREG = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [34 x i8] c"%sMM Register Address: 0x%016llx\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"%sRegister Array:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cper_print_proc_ia(i8* %0, %struct.cper_sec_proc_ia* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cper_sec_proc_ia*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cper_ia_err_info*, align 8
  %7 = alloca %struct.cper_ia_proc_ctx*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca [64 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.cper_sec_proc_ia* %1, %struct.cper_sec_proc_ia** %4, align 8
  %13 = load %struct.cper_sec_proc_ia*, %struct.cper_sec_proc_ia** %4, align 8
  %14 = getelementptr inbounds %struct.cper_sec_proc_ia, %struct.cper_sec_proc_ia* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VALID_LAPIC_ID, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.cper_sec_proc_ia*, %struct.cper_sec_proc_ia** %4, align 8
  %22 = getelementptr inbounds %struct.cper_sec_proc_ia, %struct.cper_sec_proc_ia* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.cper_sec_proc_ia*, %struct.cper_sec_proc_ia** %4, align 8
  %27 = getelementptr inbounds %struct.cper_sec_proc_ia, %struct.cper_sec_proc_ia* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @VALID_CPUID_INFO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %37 = load %struct.cper_sec_proc_ia*, %struct.cper_sec_proc_ia** %4, align 8
  %38 = getelementptr inbounds %struct.cper_sec_proc_ia, %struct.cper_sec_proc_ia* %37, i32 0, i32 1
  %39 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %38, align 8
  %40 = call i32 @print_hex_dump(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 16, i32 4, %struct.cper_ia_proc_ctx* %39, i32 8, i32 0)
  br label %41

41:                                               ; preds = %32, %25
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @snprintf(i8* %42, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = load %struct.cper_sec_proc_ia*, %struct.cper_sec_proc_ia** %4, align 8
  %46 = getelementptr inbounds %struct.cper_sec_proc_ia, %struct.cper_sec_proc_ia* %45, i64 1
  %47 = bitcast %struct.cper_sec_proc_ia* %46 to %struct.cper_ia_err_info*
  store %struct.cper_ia_err_info* %47, %struct.cper_ia_err_info** %6, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %166, %41
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.cper_sec_proc_ia*, %struct.cper_sec_proc_ia** %4, align 8
  %51 = getelementptr inbounds %struct.cper_sec_proc_ia, %struct.cper_sec_proc_ia* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @VALID_PROC_ERR_INFO_NUM(i32 %52)
  %54 = icmp slt i32 %49, %53
  br i1 %54, label %55, label %169

55:                                               ; preds = %48
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %56, i32 %57)
  %59 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %60 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %59, i32 0, i32 6
  %61 = call i64 @cper_get_err_type(i32* %60)
  store i64 %61, i64* %10, align 8
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %63 = load i64, i64* %10, align 8
  %64 = load i8**, i8*** @cper_proc_error_type_strs, align 8
  %65 = call i64 @ARRAY_SIZE(i8** %64)
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %55
  %68 = load i8**, i8*** @cper_proc_error_type_strs, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  %71 = load i8*, i8** %70, align 8
  br label %73

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi i8* [ %71, %67 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %72 ]
  %75 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %62, i8* %74)
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @N_ERR_TYPES, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %81 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %82 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %81, i32 0, i32 6
  %83 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %73
  %85 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %86 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @INFO_VALID_CHECK_INFO, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %84
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %93 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %94 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %92, i32 %95)
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @N_ERR_TYPES, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %91
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %103 = call i32 @snprintf(i8* %101, i32 64, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %107 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @print_err_info(i8* %104, i64 %105, i32 %108)
  br label %110

110:                                              ; preds = %100, %91
  br label %111

111:                                              ; preds = %110, %84
  %112 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %113 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @INFO_VALID_TARGET_ID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %120 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %121 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %119, i32 %122)
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %126 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @INFO_VALID_REQUESTOR_ID, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %133 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %134 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %132, i32 %135)
  br label %137

137:                                              ; preds = %131, %124
  %138 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %139 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @INFO_VALID_RESPONDER_ID, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %146 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %147 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %145, i32 %148)
  br label %150

150:                                              ; preds = %144, %137
  %151 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %152 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @INFO_VALID_IP, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %159 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %160 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %158, i32 %161)
  br label %163

163:                                              ; preds = %157, %150
  %164 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %165 = getelementptr inbounds %struct.cper_ia_err_info, %struct.cper_ia_err_info* %164, i32 1
  store %struct.cper_ia_err_info* %165, %struct.cper_ia_err_info** %6, align 8
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %48

169:                                              ; preds = %48
  %170 = load %struct.cper_ia_err_info*, %struct.cper_ia_err_info** %6, align 8
  %171 = bitcast %struct.cper_ia_err_info* %170 to %struct.cper_ia_proc_ctx*
  store %struct.cper_ia_proc_ctx* %171, %struct.cper_ia_proc_ctx** %7, align 8
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %253, %169
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.cper_sec_proc_ia*, %struct.cper_sec_proc_ia** %4, align 8
  %175 = getelementptr inbounds %struct.cper_sec_proc_ia, %struct.cper_sec_proc_ia* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @VALID_PROC_CXT_INFO_NUM(i32 %176)
  %178 = icmp slt i32 %173, %177
  br i1 %178, label %179, label %256

179:                                              ; preds = %172
  %180 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %181 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = add i64 24, %183
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %11, align 4
  store i32 4, i32* %12, align 4
  %186 = load i8*, i8** %3, align 8
  %187 = load i32, i32* %5, align 4
  %188 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %186, i32 %187)
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %190 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %191 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i8**, i8*** @ia_reg_ctx_strs, align 8
  %194 = call i64 @ARRAY_SIZE(i8** %193)
  %195 = icmp ult i64 %192, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %179
  %197 = load i8**, i8*** @ia_reg_ctx_strs, align 8
  %198 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %199 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i8*, i8** %197, i64 %200
  %202 = load i8*, i8** %201, align 8
  br label %204

203:                                              ; preds = %179
  br label %204

204:                                              ; preds = %203, %196
  %205 = phi i8* [ %202, %196 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), %203 ]
  %206 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %189, i8* %205)
  %207 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %208 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %209 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %207, i32 %210)
  %212 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %213 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @CTX_TYPE_MSR, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %204
  store i32 8, i32* %12, align 4
  %218 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %219 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %220 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %218, i32 %221)
  br label %223

223:                                              ; preds = %217, %204
  %224 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %225 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @CTX_TYPE_MMREG, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %231 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %232 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* %230, i32 %233)
  br label %235

235:                                              ; preds = %229, %223
  %236 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %237 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i8* %236)
  %238 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %239 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %242 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %241, i64 1
  %243 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %244 = getelementptr inbounds %struct.cper_ia_proc_ctx, %struct.cper_ia_proc_ctx* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @print_hex_dump(i8* %238, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %239, i32 16, i32 %240, %struct.cper_ia_proc_ctx* %242, i32 %245, i32 0)
  %247 = load %struct.cper_ia_proc_ctx*, %struct.cper_ia_proc_ctx** %7, align 8
  %248 = ptrtoint %struct.cper_ia_proc_ctx* %247 to i64
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %248, %250
  %252 = inttoptr i64 %251 to %struct.cper_ia_proc_ctx*
  store %struct.cper_ia_proc_ctx* %252, %struct.cper_ia_proc_ctx** %7, align 8
  br label %253

253:                                              ; preds = %235
  %254 = load i32, i32* %5, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %5, align 4
  br label %172

256:                                              ; preds = %172
  ret void
}

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @print_hex_dump(i8*, i8*, i32, i32, i32, %struct.cper_ia_proc_ctx*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @VALID_PROC_ERR_INFO_NUM(i32) #1

declare dso_local i64 @cper_get_err_type(i32*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @print_err_info(i8*, i64, i32) #1

declare dso_local i32 @VALID_PROC_CXT_INFO_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
