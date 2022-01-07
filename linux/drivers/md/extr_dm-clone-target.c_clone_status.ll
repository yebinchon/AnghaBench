; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.clone* }
%struct.clone = type { i32, i32*, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_8__*, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@DM_STATUS_NOFLUSH_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"%s: dm_clone_get_free_metadata_block_count returned %d\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: dm_clone_get_metadata_dev_size returned %d\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"%u %llu/%llu %llu %lu/%lu %u \00", align 1
@DM_CLONE_METADATA_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @clone_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.clone*, align 8
  %19 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %20 = load i32, i32* @BDEVNAME_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 0
  %26 = load %struct.clone*, %struct.clone** %25, align 8
  store %struct.clone* %26, %struct.clone** %18, align 8
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %154 [
    i32 129, label %28
    i32 128, label %107
  ]

28:                                               ; preds = %5
  %29 = load %struct.clone*, %struct.clone** %18, align 8
  %30 = call i32 @get_clone_mode(%struct.clone* %29)
  %31 = icmp eq i32 %30, 132
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %154

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DM_STATUS_NOFLUSH_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %41 = call i32 @dm_suspended(%struct.dm_target* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load %struct.clone*, %struct.clone** %18, align 8
  %45 = call i32 @commit_metadata(%struct.clone* %44)
  br label %46

46:                                               ; preds = %43, %39, %34
  %47 = load %struct.clone*, %struct.clone** %18, align 8
  %48 = getelementptr inbounds %struct.clone, %struct.clone* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dm_clone_get_free_metadata_block_count(i32 %49, i64* %14)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.clone*, %struct.clone** %18, align 8
  %55 = call i32 @clone_device_name(%struct.clone* %54)
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @DMERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  br label %155

58:                                               ; preds = %46
  %59 = load %struct.clone*, %struct.clone** %18, align 8
  %60 = getelementptr inbounds %struct.clone, %struct.clone* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dm_clone_get_metadata_dev_size(i32 %61, i64* %15)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.clone*, %struct.clone** %18, align 8
  %67 = call i32 @clone_device_name(%struct.clone* %66)
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @DMERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  br label %155

70:                                               ; preds = %58
  %71 = load i32, i32* @DM_CLONE_METADATA_BLOCK_SIZE, align 4
  %72 = load i64, i64* %15, align 8
  %73 = load i64, i64* %14, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load i64, i64* %15, align 8
  %76 = load %struct.clone*, %struct.clone** %18, align 8
  %77 = getelementptr inbounds %struct.clone, %struct.clone* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.clone*, %struct.clone** %18, align 8
  %80 = getelementptr inbounds %struct.clone, %struct.clone* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dm_clone_nr_of_hydrated_regions(i32 %81)
  %83 = load %struct.clone*, %struct.clone** %18, align 8
  %84 = getelementptr inbounds %struct.clone, %struct.clone* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.clone*, %struct.clone** %18, align 8
  %87 = getelementptr inbounds %struct.clone, %struct.clone* %86, i32 0, i32 5
  %88 = call i32 @atomic_read(i32* %87)
  %89 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %71, i64 %74, i64 %75, i64 %78, i32 %82, i32 %85, i32 %88)
  %90 = load %struct.clone*, %struct.clone** %18, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @emit_flags(%struct.clone* %90, i8* %91, i32 %92, i32* %13)
  %94 = load %struct.clone*, %struct.clone** %18, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @emit_core_args(%struct.clone* %94, i8* %95, i32 %96, i32* %13)
  %98 = load %struct.clone*, %struct.clone** %18, align 8
  %99 = call i32 @get_clone_mode(%struct.clone* %98)
  switch i32 %99, label %106 [
    i32 130, label %100
    i32 131, label %102
    i32 132, label %104
  ]

100:                                              ; preds = %70
  %101 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %106

102:                                              ; preds = %70
  %103 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %106

104:                                              ; preds = %70
  %105 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %70, %102, %100
  br label %154

107:                                              ; preds = %5
  %108 = load %struct.clone*, %struct.clone** %18, align 8
  %109 = getelementptr inbounds %struct.clone, %struct.clone* %108, i32 0, i32 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @format_dev_t(i8* %23, i32 %114)
  %116 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %23)
  %117 = load %struct.clone*, %struct.clone** %18, align 8
  %118 = getelementptr inbounds %struct.clone, %struct.clone* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @format_dev_t(i8* %23, i32 %123)
  %125 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %23)
  %126 = load %struct.clone*, %struct.clone** %18, align 8
  %127 = getelementptr inbounds %struct.clone, %struct.clone* %126, i32 0, i32 2
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @format_dev_t(i8* %23, i32 %132)
  %134 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %23)
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %150, %107
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.clone*, %struct.clone** %18, align 8
  %138 = getelementptr inbounds %struct.clone, %struct.clone* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ult i32 %136, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = load %struct.clone*, %struct.clone** %18, align 8
  %143 = getelementptr inbounds %struct.clone, %struct.clone* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %12, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %135

153:                                              ; preds = %135
  br label %154

154:                                              ; preds = %153, %5, %106, %32
  store i32 1, i32* %19, align 4
  br label %157

155:                                              ; preds = %65, %53
  %156 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %19, align 4
  br label %157

157:                                              ; preds = %155, %154
  %158 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %19, align 4
  switch i32 %159, label %161 [
    i32 0, label %160
    i32 1, label %160
  ]

160:                                              ; preds = %157, %157
  ret void

161:                                              ; preds = %157
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_clone_mode(%struct.clone*) #2

declare dso_local i32 @DMEMIT(i8*, ...) #2

declare dso_local i32 @dm_suspended(%struct.dm_target*) #2

declare dso_local i32 @commit_metadata(%struct.clone*) #2

declare dso_local i32 @dm_clone_get_free_metadata_block_count(i32, i64*) #2

declare dso_local i32 @DMERR(i8*, i32, i32) #2

declare dso_local i32 @clone_device_name(%struct.clone*) #2

declare dso_local i32 @dm_clone_get_metadata_dev_size(i32, i64*) #2

declare dso_local i32 @dm_clone_nr_of_hydrated_regions(i32) #2

declare dso_local i32 @atomic_read(i32*) #2

declare dso_local i32 @emit_flags(%struct.clone*, i8*, i32, i32*) #2

declare dso_local i32 @emit_core_args(%struct.clone*, i8*, i32, i32*) #2

declare dso_local i32 @format_dev_t(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
