; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_get_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_get_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i32, %struct.mirror_set*, i32 }
%struct.dm_target = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%llu%c\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid offset\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Device lookup failure\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mirror_set*, %struct.dm_target*, i32, i8**)* @get_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mirror(%struct.mirror_set* %0, %struct.dm_target* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mirror_set*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.mirror_set* %0, %struct.mirror_set** %6, align 8
  store %struct.dm_target* %1, %struct.dm_target** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %13 = load i8**, i8*** %9, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64* %10, i8* %11)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18, %4
  %23 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %24 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %82

27:                                               ; preds = %18
  %28 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dm_table_get_mode(i32 %34)
  %36 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %37 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = call i32 @dm_get_device(%struct.dm_target* %28, i8* %31, i32 %35, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %48 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %82

50:                                               ; preds = %27
  %51 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %52 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %53 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store %struct.mirror_set* %51, %struct.mirror_set** %58, align 8
  %59 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %60 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = call i32 @atomic_set(i32* %65, i32 0)
  %67 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %68 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.mirror_set*, %struct.mirror_set** %6, align 8
  %76 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i64 %74, i64* %81, align 8
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %50, %46, %22
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i8*) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i8*, i32, i32*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
