; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_print_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_print_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.md_rdev = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"RAID1 conf printout:\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(!conf)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" --- wd:%d rd:%d\0A\00", align 1
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c" disk %d, wo:%d, o:%d, dev:%s\0A\00", align 1
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*)* @print_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_conf(%struct.r1conf* %0) #0 {
  %2 = alloca %struct.r1conf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.md_rdev*, align 8
  store %struct.r1conf* %0, %struct.r1conf** %2, align 8
  %7 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %9 = icmp ne %struct.r1conf* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %78

12:                                               ; preds = %1
  %13 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %14 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %18 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %16, %21
  %23 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %24 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %22, i32 %25)
  %27 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %73, %12
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %31 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %28
  %35 = load i32, i32* @BDEVNAME_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %4, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %5, align 8
  %39 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %40 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.md_rdev* @rcu_dereference(i32 %46)
  store %struct.md_rdev* %47, %struct.md_rdev** %6, align 8
  %48 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %49 = icmp ne %struct.md_rdev* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %34
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @In_sync, align 4
  %53 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %54 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %53, i32 0, i32 1
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @Faulty, align 4
  %60 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %61 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %60, i32 0, i32 1
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %67 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bdevname(i32 %68, i8* %38)
  %70 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %58, i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %50, %34
  %72 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %72)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %28

76:                                               ; preds = %28
  %77 = call i32 (...) @rcu_read_unlock()
  br label %78

78:                                               ; preds = %76, %10
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @rcu_read_lock(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.md_rdev* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bdevname(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
