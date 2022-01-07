; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.thin_c* }
%struct.thin_c = type { %struct.TYPE_9__*, i64, %struct.TYPE_7__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@PM_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"dm_thin_get_mapped_count returned %d\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"dm_thin_get_highest_mapped_block returned %d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%llu \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @thin_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thin_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.thin_c*, align 8
  %18 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @BDEVNAME_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %24 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %23, i32 0, i32 0
  %25 = load %struct.thin_c*, %struct.thin_c** %24, align 8
  store %struct.thin_c* %25, %struct.thin_c** %17, align 8
  %26 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %27 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = call i64 @get_pool_mode(%struct.TYPE_10__* %28)
  %30 = load i64, i64* @PM_FAIL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %18, align 4
  br label %120

34:                                               ; preds = %5
  %35 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %36 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %117

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %116 [
    i32 129, label %43
    i32 128, label %88
  ]

43:                                               ; preds = %41
  %44 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %45 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dm_thin_get_mapped_count(i32 %46, i32* %13)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @DMERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %118

53:                                               ; preds = %43
  %54 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %55 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dm_thin_get_highest_mapped_block(i32 %56, i32* %14)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @DMERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %118

63:                                               ; preds = %53
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %66 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %64, %69
  %71 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  %77 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %78 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %76, %81
  %83 = sub nsw i32 %82, 1
  %84 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  br label %87

85:                                               ; preds = %63
  %86 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %74
  br label %116

88:                                               ; preds = %41
  %89 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %90 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %89, i32 0, i32 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @format_dev_t(i8* %22, i32 %95)
  %97 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %98 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %96, i64 %99)
  %101 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %102 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = icmp ne %struct.TYPE_9__* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %88
  %106 = load %struct.thin_c*, %struct.thin_c** %17, align 8
  %107 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @format_dev_t(i8* %22, i32 %112)
  %114 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %105, %88
  br label %116

116:                                              ; preds = %41, %115, %87
  br label %117

117:                                              ; preds = %116, %39
  store i32 1, i32* %18, align 4
  br label %120

118:                                              ; preds = %60, %50
  %119 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %120

120:                                              ; preds = %118, %117, %32
  %121 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %18, align 4
  switch i32 %122, label %124 [
    i32 0, label %123
    i32 1, label %123
  ]

123:                                              ; preds = %120, %120
  ret void

124:                                              ; preds = %120
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_pool_mode(%struct.TYPE_10__*) #2

declare dso_local i32 @DMEMIT(i8*, ...) #2

declare dso_local i32 @dm_thin_get_mapped_count(i32, i32*) #2

declare dso_local i32 @DMERR(i8*, i32) #2

declare dso_local i32 @dm_thin_get_highest_mapped_block(i32, i32*) #2

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
