; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.srp_target_port = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__*, i8*, i64, %struct.TYPE_11__, %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@srp_opt_tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid id_ext parameter '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"invalid ioc_guid parameter '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"bad dest GID parameter '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"bad P_Key parameter '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"bad service_id parameter '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"bad source parameter '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"bad dest parameter '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"bad max sect parameter '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"bad queue_size parameter '%s'\0A\00", align 1
@SRP_RSP_SQ_SIZE = common dso_local global i32 0, align 4
@SRP_TSK_MGMT_SQ_SIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"bad max cmd_per_lun parameter '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"bad max target_can_queue parameter '%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"bad IO class parameter '%s'\0A\00", align 1
@SRP_REV10_IB_IO_CLASS = common dso_local global i32 0, align 4
@SRP_REV16A_IB_IO_CLASS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [63 x i8] c"unknown IO class parameter value %x specified (use %x or %x).\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"bad initiator_ext value '%s'\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"bad max cmd_sg_entries parameter '%s'\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"bad allow_ext_sg parameter '%s'\0A\00", align 1
@SG_MAX_SEGMENTS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [37 x i8] c"bad max sg_tablesize parameter '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"bad comp_vector parameter '%s'\0A\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"bad tl_retry_count parameter '%s' (must be a number between 2 and 7)\0A\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"unknown parameter or missing value '%s' in target creation request\0A\00", align 1
@srp_opt_mandatory = common dso_local global i32* null, align 8
@.str.21 = private unnamed_addr constant [59 x i8] c"target creation request is missing one or more parameters\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"cmd_per_lun = %d > queue_size = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i8*, %struct.srp_target_port*)* @srp_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_parse_options(%struct.net* %0, i8* %1, %struct.srp_target_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.srp_target_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.srp_target_port* %2, %struct.srp_target_port** %7, align 8
  %20 = load i32, i32* @MAX_OPT_ARGS, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %17, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kstrdup(i8* %26, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %491

34:                                               ; preds = %3
  %35 = load i8*, i8** %8, align 8
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %427, %43, %34
  %37 = call i8* @strsep(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %428

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  br label %36

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @srp_opt_tokens, align 4
  %47 = call i32 @match_token(i8* %45, i32 %46, i32* %23)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %15, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  switch i32 %51, label %424 [
    i32 141, label %52
    i32 139, label %76
    i32 142, label %100
    i32 133, label %130
    i32 131, label %142
    i32 136, label %167
    i32 137, label %195
    i32 134, label %228
    i32 132, label %240
    i32 135, label %273
    i32 129, label %288
    i32 138, label %301
    i32 140, label %324
    i32 144, label %348
    i32 145, label %364
    i32 130, label %378
    i32 143, label %395
    i32 128, label %408
  ]

52:                                               ; preds = %44
  %53 = call i8* @match_strdup(i32* %23)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %17, align 4
  br label %487

59:                                               ; preds = %52
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @kstrtoull(i8* %60, i32 16, i64* %13)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @kfree(i8* %67)
  br label %487

69:                                               ; preds = %59
  %70 = load i64, i64* %13, align 8
  %71 = call i8* @cpu_to_be64(i64 %70)
  %72 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %73 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %72, i32 0, i32 14
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = call i32 @kfree(i8* %74)
  br label %427

76:                                               ; preds = %44
  %77 = call i8* @match_strdup(i32* %23)
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %17, align 4
  br label %487

83:                                               ; preds = %76
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @kstrtoull(i8* %84, i32 16, i64* %13)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i8*, i8** %10, align 8
  %90 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = call i32 @kfree(i8* %91)
  br label %487

93:                                               ; preds = %83
  %94 = load i64, i64* %13, align 8
  %95 = call i8* @cpu_to_be64(i64 %94)
  %96 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %97 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %96, i32 0, i32 13
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @kfree(i8* %98)
  br label %427

100:                                              ; preds = %44
  %101 = call i8* @match_strdup(i32* %23)
  store i8* %101, i8** %10, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %17, align 4
  br label %487

107:                                              ; preds = %100
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = icmp ne i32 %109, 32
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %112)
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @kfree(i8* %114)
  br label %487

116:                                              ; preds = %107
  %117 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %118 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %117, i32 0, i32 12
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @hex2bin(i32 %121, i8* %122, i32 16)
  store i32 %123, i32* %17, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @kfree(i8* %124)
  %126 = load i32, i32* %17, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %487

129:                                              ; preds = %116
  br label %427

130:                                              ; preds = %44
  %131 = call i32 @match_hex(i32* %23, i32* %16)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** %10, align 8
  %135 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %134)
  br label %487

136:                                              ; preds = %130
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @cpu_to_be16(i32 %137)
  %139 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %140 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %139, i32 0, i32 12
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 8
  br label %427

142:                                              ; preds = %44
  %143 = call i8* @match_strdup(i32* %23)
  store i8* %143, i8** %10, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %17, align 4
  br label %487

149:                                              ; preds = %142
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @kstrtoull(i8* %150, i32 16, i64* %13)
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load i8*, i8** %10, align 8
  %156 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %155)
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @kfree(i8* %157)
  br label %487

159:                                              ; preds = %149
  %160 = load i64, i64* %13, align 8
  %161 = call i8* @cpu_to_be64(i64 %160)
  %162 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %163 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %162, i32 0, i32 12
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i8* %161, i8** %164, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 @kfree(i8* %165)
  br label %427

167:                                              ; preds = %44
  %168 = call i8* @match_strdup(i32* %23)
  store i8* %168, i8** %10, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %17, align 4
  br label %487

174:                                              ; preds = %167
  %175 = load %struct.net*, %struct.net** %5, align 8
  %176 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %177 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %176, i32 0, i32 11
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i8*, i8** %10, align 8
  %181 = call i32 @srp_parse_in(%struct.net* %175, i32* %179, i8* %180, i32* null)
  store i32 %181, i32* %17, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %174
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %185)
  %187 = load i8*, i8** %10, align 8
  %188 = call i32 @kfree(i8* %187)
  br label %487

189:                                              ; preds = %174
  %190 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %191 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %190, i32 0, i32 11
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = call i32 @kfree(i8* %193)
  br label %427

195:                                              ; preds = %44
  %196 = call i8* @match_strdup(i32* %23)
  store i8* %196, i8** %10, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load i32, i32* @ENOMEM, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %17, align 4
  br label %487

202:                                              ; preds = %195
  %203 = load %struct.net*, %struct.net** %5, align 8
  %204 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %205 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %204, i32 0, i32 11
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i8*, i8** %10, align 8
  %209 = call i32 @srp_parse_in(%struct.net* %203, i32* %207, i8* %208, i32* %14)
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %202
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %17, align 4
  br label %215

215:                                              ; preds = %212, %202
  %216 = load i32, i32* %17, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load i8*, i8** %10, align 8
  %220 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %219)
  %221 = load i8*, i8** %10, align 8
  %222 = call i32 @kfree(i8* %221)
  br label %487

223:                                              ; preds = %215
  %224 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %225 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %224, i32 0, i32 0
  store i32 1, i32* %225, align 8
  %226 = load i8*, i8** %10, align 8
  %227 = call i32 @kfree(i8* %226)
  br label %427

228:                                              ; preds = %44
  %229 = call i32 @match_int(i32* %23, i32* %16)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i8*, i8** %10, align 8
  %233 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %232)
  br label %487

234:                                              ; preds = %228
  %235 = load i32, i32* %16, align 4
  %236 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %237 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %236, i32 0, i32 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  store i32 %235, i32* %239, align 4
  br label %427

240:                                              ; preds = %44
  %241 = call i32 @match_int(i32* %23, i32* %16)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %16, align 4
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %246, label %249

246:                                              ; preds = %243, %240
  %247 = load i8*, i8** %10, align 8
  %248 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %247)
  br label %487

249:                                              ; preds = %243
  %250 = load i32, i32* %16, align 4
  %251 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %252 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %251, i32 0, i32 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 1
  store i32 %250, i32* %254, align 4
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* @SRP_RSP_SQ_SIZE, align 4
  %257 = add nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = load i64, i64* @SRP_TSK_MGMT_SQ_SIZE, align 8
  %260 = add nsw i64 %258, %259
  %261 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %262 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %261, i32 0, i32 10
  store i64 %260, i64* %262, align 8
  %263 = load i32, i32* %15, align 4
  %264 = and i32 %263, 135
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %272, label %266

266:                                              ; preds = %249
  %267 = load i32, i32* %16, align 4
  %268 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %269 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %268, i32 0, i32 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 2
  store i32 %267, i32* %271, align 4
  br label %272

272:                                              ; preds = %266, %249
  br label %427

273:                                              ; preds = %44
  %274 = call i32 @match_int(i32* %23, i32* %16)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %16, align 4
  %278 = icmp slt i32 %277, 1
  br i1 %278, label %279, label %282

279:                                              ; preds = %276, %273
  %280 = load i8*, i8** %10, align 8
  %281 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %280)
  br label %487

282:                                              ; preds = %276
  %283 = load i32, i32* %16, align 4
  %284 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %285 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %284, i32 0, i32 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 2
  store i32 %283, i32* %287, align 4
  br label %427

288:                                              ; preds = %44
  %289 = call i32 @match_int(i32* %23, i32* %16)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* %16, align 4
  %293 = icmp slt i32 %292, 1
  br i1 %293, label %294, label %297

294:                                              ; preds = %291, %288
  %295 = load i8*, i8** %10, align 8
  %296 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %295)
  br label %487

297:                                              ; preds = %291
  %298 = load i32, i32* %16, align 4
  %299 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %300 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  br label %427

301:                                              ; preds = %44
  %302 = call i32 @match_hex(i32* %23, i32* %16)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i8*, i8** %10, align 8
  %306 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %305)
  br label %487

307:                                              ; preds = %301
  %308 = load i32, i32* %16, align 4
  %309 = load i32, i32* @SRP_REV10_IB_IO_CLASS, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %320

311:                                              ; preds = %307
  %312 = load i32, i32* %16, align 4
  %313 = load i32, i32* @SRP_REV16A_IB_IO_CLASS, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = load i32, i32* %16, align 4
  %317 = load i32, i32* @SRP_REV10_IB_IO_CLASS, align 4
  %318 = load i32, i32* @SRP_REV16A_IB_IO_CLASS, align 4
  %319 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0), i32 %316, i32 %317, i32 %318)
  br label %487

320:                                              ; preds = %311, %307
  %321 = load i32, i32* %16, align 4
  %322 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %323 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %322, i32 0, i32 2
  store i32 %321, i32* %323, align 8
  br label %427

324:                                              ; preds = %44
  %325 = call i8* @match_strdup(i32* %23)
  store i8* %325, i8** %10, align 8
  %326 = load i8*, i8** %10, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %331, label %328

328:                                              ; preds = %324
  %329 = load i32, i32* @ENOMEM, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %17, align 4
  br label %487

331:                                              ; preds = %324
  %332 = load i8*, i8** %10, align 8
  %333 = call i32 @kstrtoull(i8* %332, i32 16, i64* %13)
  store i32 %333, i32* %17, align 4
  %334 = load i32, i32* %17, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %331
  %337 = load i8*, i8** %10, align 8
  %338 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %337)
  %339 = load i8*, i8** %10, align 8
  %340 = call i32 @kfree(i8* %339)
  br label %487

341:                                              ; preds = %331
  %342 = load i64, i64* %13, align 8
  %343 = call i8* @cpu_to_be64(i64 %342)
  %344 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %345 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %344, i32 0, i32 9
  store i8* %343, i8** %345, align 8
  %346 = load i8*, i8** %10, align 8
  %347 = call i32 @kfree(i8* %346)
  br label %427

348:                                              ; preds = %44
  %349 = call i32 @match_int(i32* %23, i32* %16)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %357, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* %16, align 4
  %353 = icmp slt i32 %352, 1
  br i1 %353, label %357, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* %16, align 4
  %356 = icmp sgt i32 %355, 255
  br i1 %356, label %357, label %360

357:                                              ; preds = %354, %351, %348
  %358 = load i8*, i8** %10, align 8
  %359 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8* %358)
  br label %487

360:                                              ; preds = %354
  %361 = load i32, i32* %16, align 4
  %362 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %363 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %362, i32 0, i32 3
  store i32 %361, i32* %363, align 4
  br label %427

364:                                              ; preds = %44
  %365 = call i32 @match_int(i32* %23, i32* %16)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %364
  %368 = load i8*, i8** %10, align 8
  %369 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i8* %368)
  br label %487

370:                                              ; preds = %364
  %371 = load i32, i32* %16, align 4
  %372 = icmp ne i32 %371, 0
  %373 = xor i1 %372, true
  %374 = xor i1 %373, true
  %375 = zext i1 %374 to i32
  %376 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %377 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %376, i32 0, i32 4
  store i32 %375, i32* %377, align 8
  br label %427

378:                                              ; preds = %44
  %379 = call i32 @match_int(i32* %23, i32* %16)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %388, label %381

381:                                              ; preds = %378
  %382 = load i32, i32* %16, align 4
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %388, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* %16, align 4
  %386 = load i32, i32* @SG_MAX_SEGMENTS, align 4
  %387 = icmp sgt i32 %385, %386
  br i1 %387, label %388, label %391

388:                                              ; preds = %384, %381, %378
  %389 = load i8*, i8** %10, align 8
  %390 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i8* %389)
  br label %487

391:                                              ; preds = %384
  %392 = load i32, i32* %16, align 4
  %393 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %394 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %393, i32 0, i32 5
  store i32 %392, i32* %394, align 4
  br label %427

395:                                              ; preds = %44
  %396 = call i32 @match_int(i32* %23, i32* %16)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %395
  %399 = load i32, i32* %16, align 4
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398, %395
  %402 = load i8*, i8** %10, align 8
  %403 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i64 0, i64 0), i8* %402)
  br label %487

404:                                              ; preds = %398
  %405 = load i32, i32* %16, align 4
  %406 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %407 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %406, i32 0, i32 6
  store i32 %405, i32* %407, align 8
  br label %427

408:                                              ; preds = %44
  %409 = call i32 @match_int(i32* %23, i32* %16)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %417, label %411

411:                                              ; preds = %408
  %412 = load i32, i32* %16, align 4
  %413 = icmp slt i32 %412, 2
  br i1 %413, label %417, label %414

414:                                              ; preds = %411
  %415 = load i32, i32* %16, align 4
  %416 = icmp sgt i32 %415, 7
  br i1 %416, label %417, label %420

417:                                              ; preds = %414, %411, %408
  %418 = load i8*, i8** %10, align 8
  %419 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i64 0, i64 0), i8* %418)
  br label %487

420:                                              ; preds = %414
  %421 = load i32, i32* %16, align 4
  %422 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %423 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %422, i32 0, i32 7
  store i32 %421, i32* %423, align 4
  br label %427

424:                                              ; preds = %44
  %425 = load i8*, i8** %10, align 8
  %426 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0), i8* %425)
  br label %487

427:                                              ; preds = %420, %404, %391, %370, %360, %341, %320, %297, %282, %272, %234, %223, %189, %159, %136, %129, %93, %69
  br label %36

428:                                              ; preds = %36
  store i32 0, i32* %18, align 4
  br label %429

429:                                              ; preds = %450, %428
  %430 = load i32, i32* %18, align 4
  %431 = load i32*, i32** @srp_opt_mandatory, align 8
  %432 = call i32 @ARRAY_SIZE(i32* %431)
  %433 = icmp slt i32 %430, %432
  br i1 %433, label %434, label %453

434:                                              ; preds = %429
  %435 = load i32, i32* %15, align 4
  %436 = load i32*, i32** @srp_opt_mandatory, align 8
  %437 = load i32, i32* %18, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = and i32 %435, %440
  %442 = load i32*, i32** @srp_opt_mandatory, align 8
  %443 = load i32, i32* %18, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  %447 = icmp eq i32 %441, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %434
  store i32 0, i32* %17, align 4
  br label %453

449:                                              ; preds = %434
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %18, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %18, align 4
  br label %429

453:                                              ; preds = %448, %429
  %454 = load i32, i32* %17, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %458

456:                                              ; preds = %453
  %457 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.21, i64 0, i64 0))
  br label %458

458:                                              ; preds = %456, %453
  %459 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %460 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %459, i32 0, i32 8
  %461 = load %struct.TYPE_12__*, %struct.TYPE_12__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %465 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %464, i32 0, i32 8
  %466 = load %struct.TYPE_12__*, %struct.TYPE_12__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 1
  %468 = load i32, i32* %467, align 4
  %469 = icmp sgt i32 %463, %468
  br i1 %469, label %470, label %486

470:                                              ; preds = %458
  %471 = load i32, i32* %15, align 4
  %472 = and i32 %471, 135
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %486

474:                                              ; preds = %470
  %475 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %476 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %475, i32 0, i32 8
  %477 = load %struct.TYPE_12__*, %struct.TYPE_12__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  %481 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %480, i32 0, i32 8
  %482 = load %struct.TYPE_12__*, %struct.TYPE_12__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %482, i32 0, i32 1
  %484 = load i32, i32* %483, align 4
  %485 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i32 %479, i32 %484)
  br label %486

486:                                              ; preds = %474, %470, %458
  br label %487

487:                                              ; preds = %486, %424, %417, %401, %388, %367, %357, %336, %328, %315, %304, %294, %279, %246, %231, %218, %199, %184, %171, %154, %146, %133, %128, %111, %104, %88, %80, %64, %56
  %488 = load i8*, i8** %8, align 8
  %489 = call i32 @kfree(i8* %488)
  %490 = load i32, i32* %17, align 4
  store i32 %490, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %491

491:                                              ; preds = %487, %31
  %492 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %492)
  %493 = load i32, i32* %4, align 4
  ret i32 %493
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @kstrdup(i8*, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i8* @match_strdup(i32*) #2

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #2

declare dso_local i32 @pr_warn(i8*, ...) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i8* @cpu_to_be64(i64) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @hex2bin(i32, i8*, i32) #2

declare dso_local i32 @match_hex(i32*, i32*) #2

declare dso_local i32 @cpu_to_be16(i32) #2

declare dso_local i32 @srp_parse_in(%struct.net*, i32*, i8*, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
