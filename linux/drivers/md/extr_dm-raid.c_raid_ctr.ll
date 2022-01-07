; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, %struct.raid_set* }
%struct.raid_set = type { %struct.TYPE_15__, i32, %struct.TYPE_13__, i32, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_14__*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*)*, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.raid_type = type { i32 }
%struct.rs_layout = type { i32 }
%struct.dm_arg_set = type { i32, i8**, i32 }
%struct.dm_arg = type { i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Cannot understand number of raid parameters\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Cannot understand number of raid devices parameters\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"No arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Unrecognised raid_type\00", align 1
@MAX_RAID_DEVICES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Invalid number of supplied raid devices\00", align 1
@super_sync = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Invalid rdev size\00", align 1
@do_table_event = common dso_local global i32 0, align 4
@MD_ARRAY_FIRST_USE = common dso_local global i32 0, align 4
@__CTR_FLAG_NOSYNC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"'nosync' not allowed for new raid6 set\00", align 1
@RT_FLAG_UPDATE_SBS = common dso_local global i32 0, align 4
@__CTR_FLAG_REBUILD = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"Can't resize a reshaping raid set\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Can't takeover a reshaping raid set\00", align 1
@__CTR_FLAG_JOURNAL_DEV = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"Can't takeover a journaled raid4/5/6 set\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Can't reshape a journaled raid4/5/6 set\00", align 1
@__CTR_FLAG_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"Failed to run raid array\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Failed to start raid array\00", align 1
@raid_is_congested = common dso_local global i32 0, align 4
@__CTR_FLAG_JOURNAL_MODE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Failed to set raid4/5/6 journal mode\00", align 1
@RT_FLAG_RS_SUSPENDED = common dso_local global i32 0, align 4
@RT_FLAG_RESHAPE_RS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c"Reshape check failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @raid_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.raid_type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.raid_set*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.rs_layout, align 4
  %19 = alloca %struct.dm_arg_set, align 8
  %20 = alloca %struct.dm_arg_set, align 8
  %21 = alloca [2 x %struct.dm_arg], align 16
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.raid_set* null, %struct.raid_set** %16, align 8
  %22 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %19, i32 0, i32 0
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %19, i32 0, i32 1
  %25 = load i8**, i8*** %7, align 8
  store i8** %25, i8*** %24, align 8
  %26 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %19, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds [2 x %struct.dm_arg], [2 x %struct.dm_arg]* %21, i64 0, i64 0
  %28 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %27, i32 0, i32 1
  %30 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %19, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %29, align 4
  %32 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %27, i32 0, i32 2
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %27, i32 0, i32 3
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %27, i64 1
  %35 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %34, i32 0, i32 1
  store i32 254, i32* %36, align 4
  %37 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %34, i32 0, i32 2
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %34, i32 0, i32 3
  store i32 0, i32* %38, align 8
  %39 = call i8* @dm_shift_arg(%struct.dm_arg_set* %19)
  store i8* %39, i8** %17, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %3
  %43 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %44 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %524

47:                                               ; preds = %3
  %48 = load i8*, i8** %17, align 8
  %49 = call %struct.raid_type* @get_raid_type(i8* %48)
  store %struct.raid_type* %49, %struct.raid_type** %10, align 8
  %50 = load %struct.raid_type*, %struct.raid_type** %10, align 8
  %51 = icmp ne %struct.raid_type* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %54 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %524

57:                                               ; preds = %47
  %58 = getelementptr inbounds [2 x %struct.dm_arg], [2 x %struct.dm_arg]* %21, i64 0, i64 0
  %59 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %60 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %59, i32 0, i32 0
  %61 = call i64 @dm_read_arg_group(%struct.dm_arg* %58, %struct.dm_arg_set* %19, i32* %11, i8** %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %524

66:                                               ; preds = %57
  %67 = bitcast %struct.dm_arg_set* %20 to i8*
  %68 = bitcast %struct.dm_arg_set* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 24, i1 false)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @dm_consume_args(%struct.dm_arg_set* %20, i32 %69)
  %71 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %20, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = sdiv i32 %73, 2
  %75 = getelementptr inbounds [2 x %struct.dm_arg], [2 x %struct.dm_arg]* %21, i64 0, i64 1
  %76 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  %77 = getelementptr inbounds [2 x %struct.dm_arg], [2 x %struct.dm_arg]* %21, i64 0, i64 0
  %78 = getelementptr inbounds %struct.dm_arg, %struct.dm_arg* %77, i64 1
  %79 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %80 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %79, i32 0, i32 0
  %81 = call i64 @dm_read_arg(%struct.dm_arg* %78, %struct.dm_arg_set* %20, i32* %12, i8** %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %524

86:                                               ; preds = %66
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @MAX_RAID_DEVICES, align 4
  %89 = call i32 @__within_range(i32 %87, i32 1, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %93 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %92, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8** %93, align 8
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %524

96:                                               ; preds = %86
  %97 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %98 = load %struct.raid_type*, %struct.raid_type** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call %struct.raid_set* @raid_set_alloc(%struct.dm_target* %97, %struct.raid_type* %98, i32 %99)
  store %struct.raid_set* %100, %struct.raid_set** %16, align 8
  %101 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %102 = call i64 @IS_ERR(%struct.raid_set* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %106 = call i32 @PTR_ERR(%struct.raid_set* %105)
  store i32 %106, i32* %4, align 4
  br label %524

107:                                              ; preds = %96
  %108 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @parse_raid_params(%struct.raid_set* %108, %struct.dm_arg_set* %19, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %520

114:                                              ; preds = %107
  %115 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %116 = call i32 @parse_dev_params(%struct.raid_set* %115, %struct.dm_arg_set* %19)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %520

120:                                              ; preds = %114
  %121 = load i32, i32* @super_sync, align 4
  %122 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %123 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 7
  store i32 %121, i32* %124, align 4
  %125 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %126 = call i32 @rs_set_dev_and_array_sectors(%struct.raid_set* %125, i32 0)
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %520

130:                                              ; preds = %120
  %131 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %132 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %13, align 8
  %135 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %136 = call i32 @rs_config_backup(%struct.raid_set* %135, %struct.rs_layout* %18)
  %137 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %138 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %139 = call i32 @analyse_superblocks(%struct.dm_target* %137, %struct.raid_set* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %520

143:                                              ; preds = %130
  %144 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %145 = call i64 @__rdev_sectors(%struct.raid_set* %144)
  store i64 %145, i64* %14, align 8
  %146 = load i64, i64* %14, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %143
  %149 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %150 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %149, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %150, align 8
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %8, align 4
  br label %520

153:                                              ; preds = %143
  %154 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %155 = call i64 @_get_reshape_sectors(%struct.raid_set* %154)
  store i64 %155, i64* %15, align 8
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* %14, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %153
  %160 = load i64, i64* %13, align 8
  %161 = load i64, i64* %15, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i64, i64* %14, align 8
  %165 = load i64, i64* %15, align 8
  %166 = sub nsw i64 %164, %165
  br label %169

167:                                              ; preds = %159
  %168 = load i64, i64* %14, align 8
  br label %169

169:                                              ; preds = %167, %163
  %170 = phi i64 [ %166, %163 ], [ %168, %167 ]
  %171 = icmp ne i64 %160, %170
  %172 = zext i1 %171 to i32
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %169, %153
  %174 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %175 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 6
  %177 = load i32, i32* @do_table_event, align 4
  %178 = call i32 @INIT_WORK(i32* %176, i32 %177)
  %179 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %180 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %181 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %180, i32 0, i32 3
  store %struct.raid_set* %179, %struct.raid_set** %181, align 8
  %182 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %183 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %182, i32 0, i32 1
  store i32 1, i32* %183, align 8
  %184 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %185 = call i32 @rs_config_restore(%struct.raid_set* %184, %struct.rs_layout* %18)
  %186 = load i32, i32* @MD_ARRAY_FIRST_USE, align 4
  %187 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %188 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 5
  %190 = call i64 @test_bit(i32 %186, i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %216

192:                                              ; preds = %173
  %193 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %194 = call i64 @rs_is_raid6(%struct.raid_set* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = load i32, i32* @__CTR_FLAG_NOSYNC, align 4
  %198 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %199 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %198, i32 0, i32 3
  %200 = call i64 @test_bit(i32 %197, i32* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %196
  %203 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %204 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %203, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8** %204, align 8
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %8, align 4
  br label %520

207:                                              ; preds = %196, %192
  %208 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %209 = call i32 @rs_setup_recovery(%struct.raid_set* %208, i64 0)
  %210 = load i32, i32* @RT_FLAG_UPDATE_SBS, align 4
  %211 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %212 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %211, i32 0, i32 1
  %213 = call i32 @set_bit(i32 %210, i32* %212)
  %214 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %215 = call i32 @rs_set_new(%struct.raid_set* %214)
  br label %370

216:                                              ; preds = %173
  %217 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %218 = call i64 @rs_is_recovering(%struct.raid_set* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %216
  %221 = load i32, i32* @__CTR_FLAG_REBUILD, align 4
  %222 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %223 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %222, i32 0, i32 3
  %224 = call i64 @test_bit(i32 %221, i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  %227 = load i32, i32* @RT_FLAG_UPDATE_SBS, align 4
  %228 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %229 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %228, i32 0, i32 1
  %230 = call i32 @set_bit(i32 %227, i32* %229)
  %231 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %232 = load i64, i64* @MaxSector, align 8
  %233 = call i32 @rs_setup_recovery(%struct.raid_set* %231, i64 %232)
  br label %234

234:                                              ; preds = %226, %220
  br label %369

235:                                              ; preds = %216
  %236 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %237 = call i64 @rs_is_reshaping(%struct.raid_set* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %235
  %240 = load i32, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %239
  %243 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %244 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %243, i32 0, i32 0
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8** %244, align 8
  %245 = load i32, i32* @EPERM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %8, align 4
  br label %520

247:                                              ; preds = %239
  br label %368

248:                                              ; preds = %235
  %249 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %250 = call i64 @rs_takeover_requested(%struct.raid_set* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %294

252:                                              ; preds = %248
  %253 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %254 = call i64 @rs_is_reshaping(%struct.raid_set* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %258 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %257, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i8** %258, align 8
  %259 = load i32, i32* @EPERM, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %8, align 4
  br label %520

261:                                              ; preds = %252
  %262 = load i32, i32* @__CTR_FLAG_JOURNAL_DEV, align 4
  %263 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %264 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %263, i32 0, i32 3
  %265 = call i64 @test_bit(i32 %262, i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %261
  %268 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %269 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %268, i32 0, i32 0
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i8** %269, align 8
  %270 = load i32, i32* @EPERM, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %8, align 4
  br label %520

272:                                              ; preds = %261
  %273 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %274 = call i32 @rs_check_takeover(%struct.raid_set* %273)
  store i32 %274, i32* %8, align 4
  %275 = load i32, i32* %8, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %520

278:                                              ; preds = %272
  %279 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %280 = call i32 @rs_setup_takeover(%struct.raid_set* %279)
  store i32 %280, i32* %8, align 4
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  br label %520

284:                                              ; preds = %278
  %285 = load i32, i32* @RT_FLAG_UPDATE_SBS, align 4
  %286 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %287 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %286, i32 0, i32 1
  %288 = call i32 @set_bit(i32 %285, i32* %287)
  %289 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %290 = load i64, i64* @MaxSector, align 8
  %291 = call i32 @rs_setup_recovery(%struct.raid_set* %289, i64 %290)
  %292 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %293 = call i32 @rs_set_new(%struct.raid_set* %292)
  br label %367

294:                                              ; preds = %248
  %295 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %296 = call i64 @rs_reshape_requested(%struct.raid_set* %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %329

298:                                              ; preds = %294
  %299 = load i32, i32* @__CTR_FLAG_JOURNAL_DEV, align 4
  %300 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %301 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %300, i32 0, i32 3
  %302 = call i64 @test_bit(i32 %299, i32* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %298
  %305 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %306 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %305, i32 0, i32 0
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8** %306, align 8
  %307 = load i32, i32* @EPERM, align 4
  %308 = sub nsw i32 0, %307
  store i32 %308, i32* %8, align 4
  br label %520

309:                                              ; preds = %298
  %310 = load i64, i64* %15, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %316, label %312

312:                                              ; preds = %309
  %313 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %314 = call i64 @rs_is_raid1(%struct.raid_set* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %312, %309
  %317 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %318 = call i32 @rs_prepare_reshape(%struct.raid_set* %317)
  store i32 %318, i32* %8, align 4
  %319 = load i32, i32* %8, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  br label %520

322:                                              ; preds = %316
  %323 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %324 = load i64, i64* @MaxSector, align 8
  %325 = call i32 @rs_setup_recovery(%struct.raid_set* %323, i64 %324)
  br label %326

326:                                              ; preds = %322, %312
  %327 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %328 = call i32 @rs_set_cur(%struct.raid_set* %327)
  br label %366

329:                                              ; preds = %294
  %330 = load i32, i32* @__CTR_FLAG_REBUILD, align 4
  %331 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %332 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %331, i32 0, i32 3
  %333 = call i64 @test_bit(i32 %330, i32* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %329
  %336 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %337 = load i64, i64* @MaxSector, align 8
  %338 = call i32 @rs_setup_recovery(%struct.raid_set* %336, i64 %337)
  %339 = load i32, i32* @RT_FLAG_UPDATE_SBS, align 4
  %340 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %341 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %340, i32 0, i32 1
  %342 = call i32 @set_bit(i32 %339, i32* %341)
  br label %363

343:                                              ; preds = %329
  %344 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %345 = load i32, i32* @__CTR_FLAG_SYNC, align 4
  %346 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %347 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %346, i32 0, i32 3
  %348 = call i64 @test_bit(i32 %345, i32* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %343
  br label %360

351:                                              ; preds = %343
  %352 = load i32, i32* %9, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %356

354:                                              ; preds = %351
  %355 = load i64, i64* %13, align 8
  br label %358

356:                                              ; preds = %351
  %357 = load i64, i64* @MaxSector, align 8
  br label %358

358:                                              ; preds = %356, %354
  %359 = phi i64 [ %355, %354 ], [ %357, %356 ]
  br label %360

360:                                              ; preds = %358, %350
  %361 = phi i64 [ 0, %350 ], [ %359, %358 ]
  %362 = call i32 @rs_setup_recovery(%struct.raid_set* %344, i64 %361)
  br label %363

363:                                              ; preds = %360, %335
  %364 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %365 = call i32 @rs_set_cur(%struct.raid_set* %364)
  br label %366

366:                                              ; preds = %363, %326
  br label %367

367:                                              ; preds = %366, %284
  br label %368

368:                                              ; preds = %367, %247
  br label %369

369:                                              ; preds = %368, %234
  br label %370

370:                                              ; preds = %369, %207
  %371 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %372 = call i32 @rs_adjust_data_offsets(%struct.raid_set* %371)
  store i32 %372, i32* %8, align 4
  %373 = load i32, i32* %8, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %370
  br label %520

376:                                              ; preds = %370
  %377 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %378 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %378, i32 0, i32 1
  store i32 1, i32* %379, align 8
  %380 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %381 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %381, i32 0, i32 2
  store i32 1, i32* %382, align 4
  %383 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %384 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %385 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 4
  %387 = call i32 @set_bit(i32 %383, i32* %386)
  %388 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %389 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %388, i32 0, i32 0
  %390 = call i32 @mddev_lock_nointr(%struct.TYPE_15__* %389)
  %391 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %392 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %391, i32 0, i32 0
  %393 = call i32 @md_run(%struct.TYPE_15__* %392)
  store i32 %393, i32* %8, align 4
  %394 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %395 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 2
  store i32 0, i32* %396, align 4
  %397 = load i32, i32* %8, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %376
  %400 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %401 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %400, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8** %401, align 8
  %402 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %403 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %402, i32 0, i32 0
  %404 = call i32 @mddev_unlock(%struct.TYPE_15__* %403)
  br label %520

405:                                              ; preds = %376
  %406 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %407 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %406, i32 0, i32 0
  %408 = call i32 @md_start(%struct.TYPE_15__* %407)
  store i32 %408, i32* %8, align 4
  %409 = load i32, i32* %8, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %405
  %412 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %413 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %412, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %413, align 8
  %414 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %415 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %414, i32 0, i32 0
  %416 = call i32 @mddev_unlock(%struct.TYPE_15__* %415)
  br label %513

417:                                              ; preds = %405
  %418 = load i32, i32* @raid_is_congested, align 4
  %419 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %420 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %419, i32 0, i32 4
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 0
  store i32 %418, i32* %421, align 4
  %422 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %423 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %426 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %425, i32 0, i32 4
  %427 = call i32 @dm_table_add_target_callbacks(i32 %424, %struct.TYPE_12__* %426)
  %428 = load i32, i32* @__CTR_FLAG_JOURNAL_MODE, align 4
  %429 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %430 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %429, i32 0, i32 3
  %431 = call i64 @test_bit(i32 %428, i32* %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %450

433:                                              ; preds = %417
  %434 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %435 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %434, i32 0, i32 0
  %436 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %437 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @r5c_journal_mode_set(%struct.TYPE_15__* %435, i32 %439)
  store i32 %440, i32* %8, align 4
  %441 = load i32, i32* %8, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %433
  %444 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %445 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %444, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8** %445, align 8
  %446 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %447 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %446, i32 0, i32 0
  %448 = call i32 @mddev_unlock(%struct.TYPE_15__* %447)
  br label %514

449:                                              ; preds = %433
  br label %450

450:                                              ; preds = %449, %417
  %451 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %452 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %451, i32 0, i32 0
  %453 = call i32 @mddev_suspend(%struct.TYPE_15__* %452)
  %454 = load i32, i32* @RT_FLAG_RS_SUSPENDED, align 4
  %455 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %456 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %455, i32 0, i32 1
  %457 = call i32 @set_bit(i32 %454, i32* %456)
  %458 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %459 = call i64 @rs_is_raid456(%struct.raid_set* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %468

461:                                              ; preds = %450
  %462 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %463 = call i32 @rs_set_raid456_stripe_cache(%struct.raid_set* %462)
  store i32 %463, i32* %8, align 4
  %464 = load i32, i32* %8, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %461
  br label %515

467:                                              ; preds = %461
  br label %468

468:                                              ; preds = %467, %450
  %469 = load i32, i32* @RT_FLAG_RESHAPE_RS, align 4
  %470 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %471 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %470, i32 0, i32 1
  %472 = call i64 @test_bit(i32 %469, i32* %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %507

474:                                              ; preds = %468
  %475 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %476 = call i32 @rs_check_reshape(%struct.raid_set* %475)
  store i32 %476, i32* %8, align 4
  %477 = load i32, i32* %8, align 4
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %474
  br label %516

480:                                              ; preds = %474
  %481 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %482 = call i32 @rs_config_restore(%struct.raid_set* %481, %struct.rs_layout* %18)
  %483 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %484 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %484, i32 0, i32 3
  %486 = load %struct.TYPE_14__*, %struct.TYPE_14__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %506

490:                                              ; preds = %480
  %491 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %492 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %492, i32 0, i32 3
  %494 = load %struct.TYPE_14__*, %struct.TYPE_14__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %494, i32 0, i32 0
  %496 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %495, align 8
  %497 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %498 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %497, i32 0, i32 0
  %499 = call i32 %496(%struct.TYPE_15__* %498)
  store i32 %499, i32* %8, align 4
  %500 = load i32, i32* %8, align 4
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %505

502:                                              ; preds = %490
  %503 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %504 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %503, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i8** %504, align 8
  br label %516

505:                                              ; preds = %490
  br label %506

506:                                              ; preds = %505, %480
  br label %507

507:                                              ; preds = %506, %468
  %508 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %509 = call i32 @configure_discard_support(%struct.raid_set* %508)
  %510 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %511 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %510, i32 0, i32 0
  %512 = call i32 @mddev_unlock(%struct.TYPE_15__* %511)
  store i32 0, i32* %4, align 4
  br label %524

513:                                              ; preds = %411
  br label %514

514:                                              ; preds = %513, %443
  br label %515

515:                                              ; preds = %514, %466
  br label %516

516:                                              ; preds = %515, %502, %479
  %517 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %518 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %517, i32 0, i32 0
  %519 = call i32 @md_stop(%struct.TYPE_15__* %518)
  br label %520

520:                                              ; preds = %516, %399, %375, %321, %304, %283, %277, %267, %256, %242, %202, %148, %142, %129, %119, %113
  %521 = load %struct.raid_set*, %struct.raid_set** %16, align 8
  %522 = call i32 @raid_set_free(%struct.raid_set* %521)
  %523 = load i32, i32* %8, align 4
  store i32 %523, i32* %4, align 4
  br label %524

524:                                              ; preds = %520, %507, %104, %91, %83, %63, %52, %42
  %525 = load i32, i32* %4, align 4
  ret i32 %525
}

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local %struct.raid_type* @get_raid_type(i8*) #1

declare dso_local i64 @dm_read_arg_group(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dm_consume_args(%struct.dm_arg_set*, i32) #1

declare dso_local i64 @dm_read_arg(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local i32 @__within_range(i32, i32, i32) #1

declare dso_local %struct.raid_set* @raid_set_alloc(%struct.dm_target*, %struct.raid_type*, i32) #1

declare dso_local i64 @IS_ERR(%struct.raid_set*) #1

declare dso_local i32 @PTR_ERR(%struct.raid_set*) #1

declare dso_local i32 @parse_raid_params(%struct.raid_set*, %struct.dm_arg_set*, i32) #1

declare dso_local i32 @parse_dev_params(%struct.raid_set*, %struct.dm_arg_set*) #1

declare dso_local i32 @rs_set_dev_and_array_sectors(%struct.raid_set*, i32) #1

declare dso_local i32 @rs_config_backup(%struct.raid_set*, %struct.rs_layout*) #1

declare dso_local i32 @analyse_superblocks(%struct.dm_target*, %struct.raid_set*) #1

declare dso_local i64 @__rdev_sectors(%struct.raid_set*) #1

declare dso_local i64 @_get_reshape_sectors(%struct.raid_set*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @rs_config_restore(%struct.raid_set*, %struct.rs_layout*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @rs_is_raid6(%struct.raid_set*) #1

declare dso_local i32 @rs_setup_recovery(%struct.raid_set*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rs_set_new(%struct.raid_set*) #1

declare dso_local i64 @rs_is_recovering(%struct.raid_set*) #1

declare dso_local i64 @rs_is_reshaping(%struct.raid_set*) #1

declare dso_local i64 @rs_takeover_requested(%struct.raid_set*) #1

declare dso_local i32 @rs_check_takeover(%struct.raid_set*) #1

declare dso_local i32 @rs_setup_takeover(%struct.raid_set*) #1

declare dso_local i64 @rs_reshape_requested(%struct.raid_set*) #1

declare dso_local i64 @rs_is_raid1(%struct.raid_set*) #1

declare dso_local i32 @rs_prepare_reshape(%struct.raid_set*) #1

declare dso_local i32 @rs_set_cur(%struct.raid_set*) #1

declare dso_local i32 @rs_adjust_data_offsets(%struct.raid_set*) #1

declare dso_local i32 @mddev_lock_nointr(%struct.TYPE_15__*) #1

declare dso_local i32 @md_run(%struct.TYPE_15__*) #1

declare dso_local i32 @mddev_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @md_start(%struct.TYPE_15__*) #1

declare dso_local i32 @dm_table_add_target_callbacks(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @r5c_journal_mode_set(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @mddev_suspend(%struct.TYPE_15__*) #1

declare dso_local i64 @rs_is_raid456(%struct.raid_set*) #1

declare dso_local i32 @rs_set_raid456_stripe_cache(%struct.raid_set*) #1

declare dso_local i32 @rs_check_reshape(%struct.raid_set*) #1

declare dso_local i32 @configure_discard_support(%struct.raid_set*) #1

declare dso_local i32 @md_stop(%struct.TYPE_15__*) #1

declare dso_local i32 @raid_set_free(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
