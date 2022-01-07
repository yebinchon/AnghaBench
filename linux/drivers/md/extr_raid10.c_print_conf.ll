; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_print_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_print_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"RAID10 conf printout:\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(!conf)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" --- wd:%d rd:%d\0A\00", align 1
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c" disk %d, wo:%d, o:%d, dev:%s\0A\00", align 1
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10conf*)* @print_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_conf(%struct.r10conf* %0) #0 {
  %2 = alloca %struct.r10conf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.r10conf* %0, %struct.r10conf** %2, align 8
  %7 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %9 = icmp ne %struct.r10conf* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %77

12:                                               ; preds = %1
  %13 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %14 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %19 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %17, %22
  %24 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %25 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %23, i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %74, %12
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %32 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %29
  %37 = load i32, i32* @BDEVNAME_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %5, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %6, align 8
  %41 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  %42 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.md_rdev*, %struct.md_rdev** %47, align 8
  store %struct.md_rdev* %48, %struct.md_rdev** %4, align 8
  %49 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %50 = icmp ne %struct.md_rdev* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %36
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @In_sync, align 4
  %54 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 1
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load i32, i32* @Faulty, align 4
  %61 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %62 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %61, i32 0, i32 1
  %63 = call i32 @test_bit(i32 %60, i32* %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bdevname(i32 %69, i8* %40)
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %59, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %51, %36
  %73 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %73)
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %29

77:                                               ; preds = %10, %29
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bdevname(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
