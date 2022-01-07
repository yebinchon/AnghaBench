; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_determine_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_table_determine_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i64, i32, i32, %struct.dm_target* }
%struct.dm_target = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*, i32, %struct.verify_rq_based_data*)* }
%struct.verify_rq_based_data = type { i64, i32 }
%struct.list_head = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DM_TYPE_NONE = common dso_local global i64 0, align 8
@DM_TYPE_BIO_BASED = common dso_local global i64 0, align 8
@DM_TYPE_DAX_BIO_BASED = common dso_local global i64 0, align 8
@DM_TYPE_NVME_BIO_BASED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"Inconsistent table: different target types can't be mixed up\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@device_supports_dax = common dso_local global i32 0, align 4
@DM_TYPE_REQUEST_BASED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"%s DM doesn't support multiple targets\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"nvme bio-based\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"request-based\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"table load rejected: immutable target is required\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"table load rejected: immutable target that splits IO is not supported\00", align 1
@device_is_rq_based = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"table load rejected: including non-request-stackable devices\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"table load rejected: not all devices are blk-mq request-stackable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*)* @dm_table_determine_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_determine_type(%struct.dm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.verify_rq_based_data, align 8
  %9 = alloca %struct.dm_target*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dm_table*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = bitcast %struct.verify_rq_based_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %17 = call %struct.list_head* @dm_table_get_devices(%struct.dm_table* %16)
  store %struct.list_head* %17, %struct.list_head** %10, align 8
  %18 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %19 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dm_get_md_type(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %24 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DM_TYPE_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %1
  %29 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %30 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DM_TYPE_BIO_BASED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %109

35:                                               ; preds = %28
  %36 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %37 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DM_TYPE_DAX_BIO_BASED, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %44 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DM_TYPE_NVME_BIO_BASED, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  br label %173

50:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %54 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %59 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %58, i32 0, i32 3
  %60 = load %struct.dm_target*, %struct.dm_target** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %60, i64 %62
  store %struct.dm_target* %63, %struct.dm_target** %9, align 8
  %64 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %65 = call i64 @dm_target_hybrid(%struct.dm_target* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 1, i32* %7, align 4
  br label %75

68:                                               ; preds = %57
  %69 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %70 = call i64 @dm_target_request_based(%struct.dm_target* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, i32* %6, align 4
  br label %74

73:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %261

85:                                               ; preds = %78, %75
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %51

89:                                               ; preds = %51
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %105, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = call i64 @__table_type_request_based(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 1, i32* %6, align 4
  br label %104

103:                                              ; preds = %98
  store i32 1, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %102
  br label %105

105:                                              ; preds = %104, %95, %92, %89
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %164

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %108, %34
  %110 = load i64, i64* @DM_TYPE_BIO_BASED, align 8
  %111 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %112 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %114 = load i32, i32* @device_supports_dax, align 4
  %115 = call i64 @dm_table_supports_dax(%struct.dm_table* %113, i32 %114, i32* %12)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %109
  %118 = load %struct.list_head*, %struct.list_head** %10, align 8
  %119 = call i64 @list_empty(%struct.list_head* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* @DM_TYPE_DAX_BIO_BASED, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %121, %109
  %127 = load i64, i64* @DM_TYPE_DAX_BIO_BASED, align 8
  %128 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %129 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %163

130:                                              ; preds = %121, %117
  %131 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %132 = call %struct.dm_target* @dm_table_get_immutable_target(%struct.dm_table* %131)
  store %struct.dm_target* %132, %struct.dm_target** %9, align 8
  %133 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %134 = icmp ne %struct.dm_target* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %137 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %135
  %141 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %142 = call i64 @dm_table_does_not_support_partial_completion(%struct.dm_table* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i64, i64* @DM_TYPE_NVME_BIO_BASED, align 8
  %146 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %147 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %173

148:                                              ; preds = %140, %135, %130
  %149 = load %struct.list_head*, %struct.list_head** %10, align 8
  %150 = call i64 @list_empty(%struct.list_head* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* @DM_TYPE_NVME_BIO_BASED, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load i64, i64* @DM_TYPE_NVME_BIO_BASED, align 8
  %159 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %160 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %152, %148
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162, %126
  store i32 0, i32* %2, align 4
  br label %261

164:                                              ; preds = %105
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = call i32 @BUG_ON(i32 %168)
  %170 = load i64, i64* @DM_TYPE_REQUEST_BASED, align 8
  %171 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %172 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  br label %173

173:                                              ; preds = %164, %144, %35
  %174 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %175 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp ugt i32 %176, 1
  br i1 %177, label %178, label %189

178:                                              ; preds = %173
  %179 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %180 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @DM_TYPE_NVME_BIO_BASED, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  %186 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %185)
  %187 = load i32, i32* @EINVAL, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %2, align 4
  br label %261

189:                                              ; preds = %173
  %190 = load %struct.list_head*, %struct.list_head** %10, align 8
  %191 = call i64 @list_empty(%struct.list_head* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %212

193:                                              ; preds = %189
  %194 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %195 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.dm_table* @dm_get_live_table(i32 %196, i32* %13)
  store %struct.dm_table* %197, %struct.dm_table** %14, align 8
  %198 = load %struct.dm_table*, %struct.dm_table** %14, align 8
  %199 = icmp ne %struct.dm_table* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load %struct.dm_table*, %struct.dm_table** %14, align 8
  %202 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %205 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %200, %193
  %207 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %208 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @dm_put_live_table(i32 %209, i32 %210)
  store i32 0, i32* %2, align 4
  br label %261

212:                                              ; preds = %189
  %213 = load %struct.dm_table*, %struct.dm_table** %3, align 8
  %214 = call %struct.dm_target* @dm_table_get_immutable_target(%struct.dm_table* %213)
  store %struct.dm_target* %214, %struct.dm_target** %9, align 8
  %215 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %216 = icmp ne %struct.dm_target* %215, null
  br i1 %216, label %221, label %217

217:                                              ; preds = %212
  %218 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %219 = load i32, i32* @EINVAL, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %2, align 4
  br label %261

221:                                              ; preds = %212
  %222 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %223 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %2, align 4
  br label %261

230:                                              ; preds = %221
  br label %231

231:                                              ; preds = %230
  %232 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %233 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %232, i32 0, i32 0
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32 (%struct.dm_target*, i32, %struct.verify_rq_based_data*)*, i32 (%struct.dm_target*, i32, %struct.verify_rq_based_data*)** %235, align 8
  %237 = icmp ne i32 (%struct.dm_target*, i32, %struct.verify_rq_based_data*)* %236, null
  br i1 %237, label %238, label %248

238:                                              ; preds = %231
  %239 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %240 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %239, i32 0, i32 0
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 0
  %243 = load i32 (%struct.dm_target*, i32, %struct.verify_rq_based_data*)*, i32 (%struct.dm_target*, i32, %struct.verify_rq_based_data*)** %242, align 8
  %244 = load %struct.dm_target*, %struct.dm_target** %9, align 8
  %245 = load i32, i32* @device_is_rq_based, align 4
  %246 = call i32 %243(%struct.dm_target* %244, i32 %245, %struct.verify_rq_based_data* %8)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %238, %231
  %249 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %250 = load i32, i32* @EINVAL, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %2, align 4
  br label %261

252:                                              ; preds = %238
  %253 = getelementptr inbounds %struct.verify_rq_based_data, %struct.verify_rq_based_data* %8, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  %258 = load i32, i32* @EINVAL, align 4
  %259 = sub nsw i32 0, %258
  store i32 %259, i32* %2, align 4
  br label %261

260:                                              ; preds = %252
  store i32 0, i32* %2, align 4
  br label %261

261:                                              ; preds = %260, %256, %248, %226, %217, %206, %178, %163, %81
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.list_head* @dm_table_get_devices(%struct.dm_table*) #2

declare dso_local i32 @dm_get_md_type(i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i64 @dm_target_hybrid(%struct.dm_target*) #2

declare dso_local i64 @dm_target_request_based(%struct.dm_target*) #2

declare dso_local i32 @DMERR(i8*, ...) #2

declare dso_local i64 @__table_type_request_based(i32) #2

declare dso_local i64 @dm_table_supports_dax(%struct.dm_table*, i32, i32*) #2

declare dso_local i64 @list_empty(%struct.list_head*) #2

declare dso_local %struct.dm_target* @dm_table_get_immutable_target(%struct.dm_table*) #2

declare dso_local i64 @dm_table_does_not_support_partial_completion(%struct.dm_table*) #2

declare dso_local %struct.dm_table* @dm_get_live_table(i32, i32*) #2

declare dso_local i32 @dm_put_live_table(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
