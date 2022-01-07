; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c_igt_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_selftest_timeline.c_igt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__igt_sync = type { i8*, i32, i32, i32, i64 }
%struct.intel_timeline = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"0a\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"1a\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"1b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"0b\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"2a\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"INT_MAX\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"INT_MAX-1\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"INT_MAX+1\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"UINT_MAX\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"unwrap\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_sync(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [16 x %struct.__igt_sync], align 16
  %4 = alloca %struct.__igt_sync*, align 8
  %5 = alloca %struct.intel_timeline, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %11 = getelementptr inbounds [16 x %struct.__igt_sync], [16 x %struct.__igt_sync]* %3, i64 0, i64 0
  %12 = bitcast %struct.__igt_sync* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %13, align 16
  %14 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %11, i64 1
  %15 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %14, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %14, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %14, i32 0, i32 3
  store i32 1, i32* %18, align 16
  %19 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %14, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %14, i64 1
  %21 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 16
  %22 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %20, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %20, i32 0, i32 2
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %20, i32 0, i32 3
  store i32 1, i32* %24, align 16
  %25 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %20, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %20, i64 1
  %27 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %27, align 16
  %28 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %26, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %26, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %26, i32 0, i32 3
  store i32 1, i32* %30, align 16
  %31 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %26, i32 0, i32 4
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %26, i64 1
  %33 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %32, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %33, align 16
  %34 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %32, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %32, i32 0, i32 2
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %32, i32 0, i32 3
  store i32 1, i32* %36, align 16
  %37 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %32, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %32, i64 1
  %39 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %39, align 16
  %40 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %38, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %38, i32 0, i32 2
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %38, i32 0, i32 3
  store i32 0, i32* %42, align 16
  %43 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %38, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %38, i64 1
  %45 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %45, align 16
  %46 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %44, i32 0, i32 1
  store i32 2, i32* %46, align 8
  %47 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %44, i32 0, i32 2
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %44, i32 0, i32 3
  store i32 1, i32* %48, align 16
  %49 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %44, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %44, i64 1
  %51 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %51, align 16
  %52 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %50, i32 0, i32 1
  store i32 4, i32* %52, align 8
  %53 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %50, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %50, i32 0, i32 3
  store i32 1, i32* %54, align 16
  %55 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %50, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %50, i64 1
  %57 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %56, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %57, align 16
  %58 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %56, i32 0, i32 1
  %59 = load i32, i32* @INT_MAX, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %56, i32 0, i32 2
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %56, i32 0, i32 3
  store i32 1, i32* %61, align 16
  %62 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %56, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %56, i64 1
  %64 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8** %64, align 16
  %65 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %63, i32 0, i32 1
  %66 = load i32, i32* @INT_MAX, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %63, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %63, i32 0, i32 3
  store i32 0, i32* %69, align 16
  %70 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %63, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %63, i64 1
  %72 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %71, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8** %72, align 16
  %73 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %71, i32 0, i32 1
  %74 = load i32, i32* @INT_MAX, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %71, i32 0, i32 2
  store i32 0, i32* %76, align 4
  %77 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %71, i32 0, i32 3
  store i32 1, i32* %77, align 16
  %78 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %71, i32 0, i32 4
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %71, i64 1
  %80 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %79, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %80, align 16
  %81 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %79, i32 0, i32 1
  %82 = load i32, i32* @INT_MAX, align 4
  store i32 %82, i32* %81, align 8
  %83 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %79, i32 0, i32 2
  store i32 1, i32* %83, align 4
  %84 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %79, i32 0, i32 3
  store i32 0, i32* %84, align 16
  %85 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %79, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %79, i64 1
  %87 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %86, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %87, align 16
  %88 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %86, i32 0, i32 1
  %89 = load i32, i32* @UINT_MAX, align 4
  store i32 %89, i32* %88, align 8
  %90 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %86, i32 0, i32 2
  store i32 0, i32* %90, align 4
  %91 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %86, i32 0, i32 3
  store i32 1, i32* %91, align 16
  %92 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %86, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %86, i64 1
  %94 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %93, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %94, align 16
  %95 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %93, i32 0, i32 1
  store i32 0, i32* %95, align 8
  %96 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %93, i32 0, i32 2
  store i32 0, i32* %96, align 4
  %97 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %93, i32 0, i32 3
  store i32 1, i32* %97, align 16
  %98 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %93, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %93, i64 1
  %100 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %100, align 16
  %101 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %99, i32 0, i32 1
  %102 = load i32, i32* @UINT_MAX, align 4
  store i32 %102, i32* %101, align 8
  %103 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %99, i32 0, i32 2
  store i32 1, i32* %103, align 4
  %104 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %99, i32 0, i32 3
  store i32 0, i32* %104, align 16
  %105 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %99, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %99, i64 1
  %107 = bitcast %struct.__igt_sync* %106 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %107, i8 0, i64 32, i1 false)
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %8, align 4
  %110 = call i32 @mock_timeline_init(%struct.intel_timeline* %5, i32 0)
  %111 = getelementptr inbounds [16 x %struct.__igt_sync], [16 x %struct.__igt_sync]* %3, i64 0, i64 0
  store %struct.__igt_sync* %111, %struct.__igt_sync** %4, align 8
  br label %112

112:                                              ; preds = %149, %1
  %113 = load %struct.__igt_sync*, %struct.__igt_sync** %4, align 8
  %114 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %152

117:                                              ; preds = %112
  store i32 1, i32* %6, align 4
  br label %118

118:                                              ; preds = %145, %117
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 64
  br i1 %120, label %121, label %148

121:                                              ; preds = %118
  store i32 -1, i32* %7, align 4
  br label %122

122:                                              ; preds = %141, %121
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp sgt i32 %124, 1
  %126 = zext i1 %125 to i32
  %127 = icmp sle i32 %123, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load i32, i32* %6, align 4
  %130 = call i64 @BIT_ULL(i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load %struct.__igt_sync*, %struct.__igt_sync** %4, align 8
  %136 = call i32 @__igt_sync(%struct.intel_timeline* %5, i64 %134, %struct.__igt_sync* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %197

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %122

144:                                              ; preds = %122
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %118

148:                                              ; preds = %118
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.__igt_sync*, %struct.__igt_sync** %4, align 8
  %151 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %150, i32 1
  store %struct.__igt_sync* %151, %struct.__igt_sync** %4, align 8
  br label %112

152:                                              ; preds = %112
  %153 = call i32 @mock_timeline_fini(%struct.intel_timeline* %5)
  %154 = call i32 @mock_timeline_init(%struct.intel_timeline* %5, i32 0)
  store i32 1, i32* %6, align 4
  br label %155

155:                                              ; preds = %193, %152
  %156 = load i32, i32* %6, align 4
  %157 = icmp slt i32 %156, 64
  br i1 %157, label %158, label %196

158:                                              ; preds = %155
  store i32 -1, i32* %7, align 4
  br label %159

159:                                              ; preds = %189, %158
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp sgt i32 %161, 1
  %163 = zext i1 %162 to i32
  %164 = icmp sle i32 %160, %163
  br i1 %164, label %165, label %192

165:                                              ; preds = %159
  %166 = load i32, i32* %6, align 4
  %167 = call i64 @BIT_ULL(i32 %166)
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  store i64 %170, i64* %10, align 8
  %171 = getelementptr inbounds [16 x %struct.__igt_sync], [16 x %struct.__igt_sync]* %3, i64 0, i64 0
  store %struct.__igt_sync* %171, %struct.__igt_sync** %4, align 8
  br label %172

172:                                              ; preds = %185, %165
  %173 = load %struct.__igt_sync*, %struct.__igt_sync** %4, align 8
  %174 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load i64, i64* %10, align 8
  %179 = load %struct.__igt_sync*, %struct.__igt_sync** %4, align 8
  %180 = call i32 @__igt_sync(%struct.intel_timeline* %5, i64 %178, %struct.__igt_sync* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %197

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.__igt_sync*, %struct.__igt_sync** %4, align 8
  %187 = getelementptr inbounds %struct.__igt_sync, %struct.__igt_sync* %186, i32 1
  store %struct.__igt_sync* %187, %struct.__igt_sync** %4, align 8
  br label %172

188:                                              ; preds = %172
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %159

192:                                              ; preds = %159
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  br label %155

196:                                              ; preds = %155
  br label %197

197:                                              ; preds = %196, %183, %139
  %198 = call i32 @mock_timeline_fini(%struct.intel_timeline* %5)
  %199 = load i32, i32* %8, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mock_timeline_init(%struct.intel_timeline*, i32) #2

declare dso_local i64 @BIT_ULL(i32) #2

declare dso_local i32 @__igt_sync(%struct.intel_timeline*, i64, %struct.__igt_sync*, i8*) #2

declare dso_local i32 @mock_timeline_fini(%struct.intel_timeline*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
