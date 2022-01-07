; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c___smu_get_sdb_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_smu.c___smu_get_sdb_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.smu_sdbp_header = type { i32 }

@smu = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"sdb-partition-%02x\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"smu_get_sdb_partition(%02x)\0A\00", align 1
@smu_part_access = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"trying to extract from SMU ...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smu_sdbp_header* @__smu_get_sdb_partition(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.smu_sdbp_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca %struct.smu_sdbp_header*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smu, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.smu_sdbp_header* null, %struct.smu_sdbp_header** %4, align 8
  br label %60

14:                                               ; preds = %3
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = call i32 @mutex_lock_interruptible(i32* @smu_part_access)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.smu_sdbp_header* @ERR_PTR(i32 %27)
  store %struct.smu_sdbp_header* %28, %struct.smu_sdbp_header** %4, align 8
  br label %60

29:                                               ; preds = %22
  br label %32

30:                                               ; preds = %14
  %31 = call i32 @mutex_lock(i32* @smu_part_access)
  br label %32

32:                                               ; preds = %30, %29
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @smu, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.smu_sdbp_header* @of_get_property(i32 %35, i8* %36, i32* %37)
  store %struct.smu_sdbp_header* %38, %struct.smu_sdbp_header** %9, align 8
  %39 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %9, align 8
  %40 = icmp eq %struct.smu_sdbp_header* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.smu_sdbp_header* @smu_create_sdb_partition(i32 %43)
  store %struct.smu_sdbp_header* %44, %struct.smu_sdbp_header** %9, align 8
  %45 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %9, align 8
  %46 = icmp ne %struct.smu_sdbp_header* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %9, align 8
  %52 = getelementptr inbounds %struct.smu_sdbp_header, %struct.smu_sdbp_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 2
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %47, %41
  br label %57

57:                                               ; preds = %56, %32
  %58 = call i32 @mutex_unlock(i32* @smu_part_access)
  %59 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %9, align 8
  store %struct.smu_sdbp_header* %59, %struct.smu_sdbp_header** %4, align 8
  br label %60

60:                                               ; preds = %57, %26, %13
  %61 = load %struct.smu_sdbp_header*, %struct.smu_sdbp_header** %4, align 8
  ret %struct.smu_sdbp_header* %61
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.smu_sdbp_header* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.smu_sdbp_header* @of_get_property(i32, i8*, i32*) #1

declare dso_local %struct.smu_sdbp_header* @smu_create_sdb_partition(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
