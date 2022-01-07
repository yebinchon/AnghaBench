; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-flakey.c_parse_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-flakey.c_parse_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_arg = type { i32, i32, i8* }
%struct.dm_arg_set = type { i32 }
%struct.flakey_c = type { i64, i32, i32, i32, i32 }
%struct.dm_target = type { i8* }

@parse_features._args = internal constant [4 x %struct.dm_arg] [%struct.dm_arg { i32 0, i32 6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0) }, %struct.dm_arg { i32 1, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0) }, %struct.dm_arg { i32 0, i32 255, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0) }, %struct.dm_arg { i32 0, i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [31 x i8] c"Invalid number of feature args\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid corrupt bio byte\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Invalid corrupt value to write into bio byte (0-255)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid corrupt bio flags mask\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Insufficient feature arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"drop_writes\00", align 1
@DROP_WRITES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Feature drop_writes duplicated\00", align 1
@ERROR_WRITES = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [56 x i8] c"Feature drop_writes conflicts with feature error_writes\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"error_writes\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Feature error_writes duplicated\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"Feature error_writes conflicts with feature drop_writes\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"corrupt_bio_byte\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Feature corrupt_bio_byte requires parameters\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@WRITE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@READ = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [39 x i8] c"Invalid corrupt bio direction (r or w)\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"Unrecognised flakey feature requested\00", align 1
@.str.17 = private unnamed_addr constant [74 x i8] c"drop_writes is incompatible with corrupt_bio_byte with the WRITE flag set\00", align 1
@.str.18 = private unnamed_addr constant [75 x i8] c"error_writes is incompatible with corrupt_bio_byte with the WRITE flag set\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_arg_set*, %struct.flakey_c*, %struct.dm_target*)* @parse_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_features(%struct.dm_arg_set* %0, %struct.flakey_c* %1, %struct.dm_target* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_arg_set*, align 8
  %6 = alloca %struct.flakey_c*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %5, align 8
  store %struct.flakey_c* %1, %struct.flakey_c** %6, align 8
  store %struct.dm_target* %2, %struct.dm_target** %7, align 8
  %11 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %12 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %216

16:                                               ; preds = %3
  %17 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %18 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %19 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %18, i32 0, i32 0
  %20 = call i32 @dm_read_arg_group(%struct.dm_arg* getelementptr inbounds ([4 x %struct.dm_arg], [4 x %struct.dm_arg]* @parse_features._args, i64 0, i64 0), %struct.dm_arg_set* %17, i32* %9, i8** %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %216

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %172, %96, %68, %25
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %180

29:                                               ; preds = %26
  %30 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %31 = call i8* @dm_shift_arg(%struct.dm_arg_set* %30)
  store i8* %31, i8** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %38 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %216

41:                                               ; preds = %29
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @strcasecmp(i8* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @DROP_WRITES, align 4
  %47 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %48 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %47, i32 0, i32 1
  %49 = call i64 @test_and_set_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %53 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8** %53, align 8
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %216

56:                                               ; preds = %45
  %57 = load i32, i32* @ERROR_WRITES, align 4
  %58 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %59 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %58, i32 0, i32 1
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %216

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67
  br label %26

69:                                               ; preds = %41
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @strcasecmp(i8* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* @ERROR_WRITES, align 4
  %75 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %76 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %75, i32 0, i32 1
  %77 = call i64 @test_and_set_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %81 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8** %81, align 8
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %216

84:                                               ; preds = %73
  %85 = load i32, i32* @DROP_WRITES, align 4
  %86 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %87 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %86, i32 0, i32 1
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %92 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i8** %92, align 8
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %216

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  br label %26

97:                                               ; preds = %69
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @strcasecmp(i8* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %175, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %106 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %105, i32 0, i32 0
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8** %106, align 8
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %216

109:                                              ; preds = %101
  %110 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %111 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %112 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %111, i32 0, i32 4
  %113 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %114 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %113, i32 0, i32 0
  %115 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([4 x %struct.dm_arg], [4 x %struct.dm_arg]* @parse_features._args, i64 0, i64 1), %struct.dm_arg_set* %110, i32* %112, i8** %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %4, align 4
  br label %216

120:                                              ; preds = %109
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, -1
  store i32 %122, i32* %9, align 4
  %123 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %124 = call i8* @dm_shift_arg(%struct.dm_arg_set* %123)
  store i8* %124, i8** %10, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @strcasecmp(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %120
  %129 = load i64, i64* @WRITE, align 8
  %130 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %131 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %146

132:                                              ; preds = %120
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @strcasecmp(i8* %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* @READ, align 8
  %138 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %139 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  br label %145

140:                                              ; preds = %132
  %141 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %142 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %141, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i8** %142, align 8
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %216

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %145, %128
  %147 = load i32, i32* %9, align 4
  %148 = add i32 %147, -1
  store i32 %148, i32* %9, align 4
  %149 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %150 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %151 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %150, i32 0, i32 3
  %152 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %153 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %152, i32 0, i32 0
  %154 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([4 x %struct.dm_arg], [4 x %struct.dm_arg]* @parse_features._args, i64 0, i64 2), %struct.dm_arg_set* %149, i32* %151, i8** %153)
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %146
  %158 = load i32, i32* %8, align 4
  store i32 %158, i32* %4, align 4
  br label %216

159:                                              ; preds = %146
  %160 = load i32, i32* %9, align 4
  %161 = add i32 %160, -1
  store i32 %161, i32* %9, align 4
  %162 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %163 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %164 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %163, i32 0, i32 2
  %165 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %166 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %165, i32 0, i32 0
  %167 = call i32 @dm_read_arg(%struct.dm_arg* getelementptr inbounds ([4 x %struct.dm_arg], [4 x %struct.dm_arg]* @parse_features._args, i64 0, i64 3), %struct.dm_arg_set* %162, i32* %164, i8** %166)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %216

172:                                              ; preds = %159
  %173 = load i32, i32* %9, align 4
  %174 = add i32 %173, -1
  store i32 %174, i32* %9, align 4
  br label %26

175:                                              ; preds = %97
  %176 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %177 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %176, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i8** %177, align 8
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %216

180:                                              ; preds = %26
  %181 = load i32, i32* @DROP_WRITES, align 4
  %182 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %183 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %182, i32 0, i32 1
  %184 = call i64 @test_bit(i32 %181, i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %188 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @WRITE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %186
  %193 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %194 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %193, i32 0, i32 0
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.17, i64 0, i64 0), i8** %194, align 8
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %4, align 4
  br label %216

197:                                              ; preds = %186, %180
  %198 = load i32, i32* @ERROR_WRITES, align 4
  %199 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %200 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %199, i32 0, i32 1
  %201 = call i64 @test_bit(i32 %198, i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %197
  %204 = load %struct.flakey_c*, %struct.flakey_c** %6, align 8
  %205 = getelementptr inbounds %struct.flakey_c, %struct.flakey_c* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @WRITE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %203
  %210 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %211 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %210, i32 0, i32 0
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.18, i64 0, i64 0), i8** %211, align 8
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %4, align 4
  br label %216

214:                                              ; preds = %203, %197
  br label %215

215:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %209, %192, %175, %170, %157, %140, %118, %104, %90, %79, %62, %51, %36, %23, %15
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @dm_read_arg_group(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

declare dso_local i8* @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dm_read_arg(%struct.dm_arg*, %struct.dm_arg_set*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
