; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_snapshot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_snapshot* }
%struct.dm_snapshot = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32, i8*, i32)*, i32 (%struct.TYPE_9__*, i64*, i64*, i64*)* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Merge failed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Overflow\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%llu/%llu %llu\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c" discard_zeroes_cow\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c" discard_passdown_origin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, i32, i32, i8*, i32)* @snapshot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snapshot_status(%struct.dm_target* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_snapshot*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.dm_target* %0, %struct.dm_target** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %18 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %17, i32 0, i32 0
  %19 = load %struct.dm_snapshot*, %struct.dm_snapshot** %18, align 8
  store %struct.dm_snapshot* %19, %struct.dm_snapshot** %12, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %139 [
    i32 129, label %21
    i32 128, label %79
  ]

21:                                               ; preds = %5
  %22 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %23 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %22, i32 0, i32 5
  %24 = call i32 @down_write(i32* %23)
  %25 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %26 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %75

31:                                               ; preds = %21
  %32 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %33 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %74

38:                                               ; preds = %31
  %39 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %40 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %73

45:                                               ; preds = %38
  %46 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %47 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %46, i32 0, i32 2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32 (%struct.TYPE_9__*, i64*, i64*, i64*)*, i32 (%struct.TYPE_9__*, i64*, i64*, i64*)** %51, align 8
  %53 = icmp ne i32 (%struct.TYPE_9__*, i64*, i64*, i64*)* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %56 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %55, i32 0, i32 2
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32 (%struct.TYPE_9__*, i64*, i64*, i64*)*, i32 (%struct.TYPE_9__*, i64*, i64*, i64*)** %60, align 8
  %62 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %63 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = call i32 %61(%struct.TYPE_9__* %64, i64* %14, i64* %15, i64* %16)
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %16, align 8
  %69 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %66, i64 %67, i64 %68)
  br label %72

70:                                               ; preds = %45
  %71 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %54
  br label %73

73:                                               ; preds = %72, %43
  br label %74

74:                                               ; preds = %73, %36
  br label %75

75:                                               ; preds = %74, %29
  %76 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %77 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %76, i32 0, i32 5
  %78 = call i32 @up_write(i32* %77)
  br label %139

79:                                               ; preds = %5
  %80 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %81 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %80, i32 0, i32 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %86 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %85, i32 0, i32 3
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %89)
  %91 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %92 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_9__*, i32, i8*, i32)*, i32 (%struct.TYPE_9__*, i32, i8*, i32)** %96, align 8
  %98 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %99 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %98, i32 0, i32 2
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub i32 %106, %107
  %109 = call i32 %97(%struct.TYPE_9__* %100, i32 %101, i8* %105, i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %113 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %116 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %114, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %79
  %122 = load i32, i32* %13, align 4
  %123 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %122)
  %124 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %125 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %121
  %131 = load %struct.dm_snapshot*, %struct.dm_snapshot** %12, align 8
  %132 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %130
  br label %138

138:                                              ; preds = %137, %79
  br label %139

139:                                              ; preds = %5, %138, %75
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
