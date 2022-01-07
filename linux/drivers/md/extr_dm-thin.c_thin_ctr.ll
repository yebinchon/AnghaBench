; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.dm_target = type { i8*, i32, i32, i32, i32, i32, i32, %struct.thin_c* }
%struct.thin_c = type { %struct.dm_dev*, %struct.dm_dev*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dm_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.mapped_device = type { i32 }

@dm_thin_pool_table = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Error setting origin device\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Error opening origin device\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Error opening pool device\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Invalid device id\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Couldn't get pool mapped device\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Couldn't find pool object\00", align 1
@PM_FAIL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"Couldn't open thin device, Pool is in fail mode\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Couldn't open thin internal device\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Unable to activate thin device while pool is suspended\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @thin_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thin_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.thin_c*, align 8
  %10 = alloca %struct.dm_dev*, align 8
  %11 = alloca %struct.dm_dev*, align 8
  %12 = alloca %struct.mapped_device*, align 8
  %13 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %14 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_thin_pool_table, i32 0, i32 0))
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  br label %299

25:                                               ; preds = %17, %3
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.thin_c* @kzalloc(i32 72, i32 %26)
  %28 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %29 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %28, i32 0, i32 7
  store %struct.thin_c* %27, %struct.thin_c** %29, align 8
  store %struct.thin_c* %27, %struct.thin_c** %9, align 8
  %30 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %31 = icmp ne %struct.thin_c* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %34 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %299

37:                                               ; preds = %25
  %38 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %39 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dm_table_get_md(i32 %40)
  %42 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %43 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %42, i32 0, i32 13
  store i32 %41, i32* %43, align 8
  %44 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %45 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %44, i32 0, i32 12
  %46 = call i32 @spin_lock_init(i32* %45)
  %47 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %48 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %47, i32 0, i32 11
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %51 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %50, i32 0, i32 10
  %52 = call i32 @bio_list_init(i32* %51)
  %53 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %54 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %53, i32 0, i32 9
  %55 = call i32 @bio_list_init(i32* %54)
  %56 = load i32, i32* @RB_ROOT, align 4
  %57 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %58 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %91

61:                                               ; preds = %37
  %62 = load i8**, i8*** %7, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @strcmp(i8* %64, i8* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %61
  %71 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %72 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8** %72, align 8
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %296

75:                                               ; preds = %61
  %76 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %77 = load i8**, i8*** %7, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @FMODE_READ, align 4
  %81 = call i32 @dm_get_device(%struct.dm_target* %76, i8* %79, i32 %80, %struct.dm_dev** %11)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %86 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %86, align 8
  br label %296

87:                                               ; preds = %75
  %88 = load %struct.dm_dev*, %struct.dm_dev** %11, align 8
  %89 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %90 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %89, i32 0, i32 0
  store %struct.dm_dev* %88, %struct.dm_dev** %90, align 8
  br label %91

91:                                               ; preds = %87, %37
  %92 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %93 = load i8**, i8*** %7, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %97 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dm_table_get_mode(i32 %98)
  %100 = call i32 @dm_get_device(%struct.dm_target* %92, i8* %95, i32 %99, %struct.dm_dev** %10)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %105 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %104, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8** %105, align 8
  br label %284

106:                                              ; preds = %91
  %107 = load %struct.dm_dev*, %struct.dm_dev** %10, align 8
  %108 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %109 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %108, i32 0, i32 1
  store %struct.dm_dev* %107, %struct.dm_dev** %109, align 8
  %110 = load i8**, i8*** %7, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %114 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %113, i32 0, i32 7
  %115 = bitcast i32* %114 to i64*
  %116 = call i64 @read_dev_id(i8* %112, i64* %115, i32 0)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %106
  %119 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %120 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %119, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %120, align 8
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %8, align 4
  br label %278

123:                                              ; preds = %106
  %124 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %125 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %124, i32 0, i32 1
  %126 = load %struct.dm_dev*, %struct.dm_dev** %125, align 8
  %127 = getelementptr inbounds %struct.dm_dev, %struct.dm_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.mapped_device* @dm_get_md(i32 %130)
  store %struct.mapped_device* %131, %struct.mapped_device** %12, align 8
  %132 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %133 = icmp ne %struct.mapped_device* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %123
  %135 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %136 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %135, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %136, align 8
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %8, align 4
  br label %278

139:                                              ; preds = %123
  %140 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %141 = call %struct.TYPE_10__* @__pool_table_lookup(%struct.mapped_device* %140)
  %142 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %143 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %142, i32 0, i32 2
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %143, align 8
  %144 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %145 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = icmp ne %struct.TYPE_10__* %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %139
  %149 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %150 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %149, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %150, align 8
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %275

153:                                              ; preds = %139
  %154 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %155 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %154, i32 0, i32 2
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = call i32 @__pool_inc(%struct.TYPE_10__* %156)
  %158 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %159 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %158, i32 0, i32 2
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = call i64 @get_pool_mode(%struct.TYPE_10__* %160)
  %162 = load i64, i64* @PM_FAIL, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %169

164:                                              ; preds = %153
  %165 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %166 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %165, i32 0, i32 0
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8** %166, align 8
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %8, align 4
  br label %270

169:                                              ; preds = %153
  %170 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %171 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %170, i32 0, i32 2
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %176 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %179 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %178, i32 0, i32 3
  %180 = call i32 @dm_pool_open_thin_device(i32 %174, i32 %177, i32* %179)
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %169
  %184 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %185 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %184, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8** %185, align 8
  br label %270

186:                                              ; preds = %169
  %187 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %188 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %189 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %188, i32 0, i32 2
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @dm_set_target_max_io_len(%struct.dm_target* %187, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  br label %265

197:                                              ; preds = %186
  %198 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %199 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %198, i32 0, i32 1
  store i32 1, i32* %199, align 8
  %200 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %201 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %200, i32 0, i32 2
  store i32 1, i32* %201, align 4
  %202 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %203 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %202, i32 0, i32 3
  store i32 4, i32* %203, align 8
  %204 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %205 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %204, i32 0, i32 2
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %197
  %212 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %213 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %212, i32 0, i32 4
  store i32 1, i32* %213, align 4
  %214 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %215 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %214, i32 0, i32 5
  store i32 1, i32* %215, align 8
  br label %216

216:                                              ; preds = %211, %197
  %217 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_thin_pool_table, i32 0, i32 0))
  %218 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %219 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %218, i32 0, i32 2
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 0
  %222 = load i64, i64* %13, align 8
  %223 = call i32 @spin_lock_irqsave(i32* %221, i64 %222)
  %224 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %225 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %224, i32 0, i32 2
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %216
  %231 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %232 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %231, i32 0, i32 2
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load i64, i64* %13, align 8
  %236 = call i32 @spin_unlock_irqrestore(i32* %234, i64 %235)
  %237 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_thin_pool_table, i32 0, i32 0))
  %238 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %239 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %238, i32 0, i32 0
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i8** %239, align 8
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %8, align 4
  br label %265

242:                                              ; preds = %216
  %243 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %244 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %243, i32 0, i32 6
  %245 = call i32 @refcount_set(i32* %244, i32 1)
  %246 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %247 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %246, i32 0, i32 5
  %248 = call i32 @init_completion(i32* %247)
  %249 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %250 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %249, i32 0, i32 4
  %251 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %252 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %251, i32 0, i32 2
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = call i32 @list_add_tail_rcu(i32* %250, i32* %254)
  %256 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %257 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %256, i32 0, i32 2
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i64, i64* %13, align 8
  %261 = call i32 @spin_unlock_irqrestore(i32* %259, i64 %260)
  %262 = call i32 (...) @synchronize_rcu()
  %263 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %264 = call i32 @dm_put(%struct.mapped_device* %263)
  store i32 0, i32* %4, align 4
  br label %302

265:                                              ; preds = %230, %196
  %266 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %267 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @dm_pool_close_thin_device(i32 %268)
  br label %270

270:                                              ; preds = %265, %183, %164
  %271 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %272 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %271, i32 0, i32 2
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = call i32 @__pool_dec(%struct.TYPE_10__* %273)
  br label %275

275:                                              ; preds = %270, %148
  %276 = load %struct.mapped_device*, %struct.mapped_device** %12, align 8
  %277 = call i32 @dm_put(%struct.mapped_device* %276)
  br label %278

278:                                              ; preds = %275, %134, %118
  %279 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %280 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %281 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %280, i32 0, i32 1
  %282 = load %struct.dm_dev*, %struct.dm_dev** %281, align 8
  %283 = call i32 @dm_put_device(%struct.dm_target* %279, %struct.dm_dev* %282)
  br label %284

284:                                              ; preds = %278, %103
  %285 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %286 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %285, i32 0, i32 0
  %287 = load %struct.dm_dev*, %struct.dm_dev** %286, align 8
  %288 = icmp ne %struct.dm_dev* %287, null
  br i1 %288, label %289, label %295

289:                                              ; preds = %284
  %290 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %291 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %292 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %291, i32 0, i32 0
  %293 = load %struct.dm_dev*, %struct.dm_dev** %292, align 8
  %294 = call i32 @dm_put_device(%struct.dm_target* %290, %struct.dm_dev* %293)
  br label %295

295:                                              ; preds = %289, %284
  br label %296

296:                                              ; preds = %295, %84, %70
  %297 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  %298 = call i32 @kfree(%struct.thin_c* %297)
  br label %299

299:                                              ; preds = %296, %32, %20
  %300 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @dm_thin_pool_table, i32 0, i32 0))
  %301 = load i32, i32* %8, align 4
  store i32 %301, i32* %4, align 4
  br label %302

302:                                              ; preds = %299, %242
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.thin_c* @kzalloc(i32, i32) #1

declare dso_local i32 @dm_table_get_md(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, %struct.dm_dev**) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i64 @read_dev_id(i8*, i64*, i32) #1

declare dso_local %struct.mapped_device* @dm_get_md(i32) #1

declare dso_local %struct.TYPE_10__* @__pool_table_lookup(%struct.mapped_device*) #1

declare dso_local i32 @__pool_inc(%struct.TYPE_10__*) #1

declare dso_local i64 @get_pool_mode(%struct.TYPE_10__*) #1

declare dso_local i32 @dm_pool_open_thin_device(i32, i32, i32*) #1

declare dso_local i32 @dm_set_target_max_io_len(%struct.dm_target*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @dm_pool_close_thin_device(i32) #1

declare dso_local i32 @__pool_dec(%struct.TYPE_10__*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.dm_dev*) #1

declare dso_local i32 @kfree(%struct.thin_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
