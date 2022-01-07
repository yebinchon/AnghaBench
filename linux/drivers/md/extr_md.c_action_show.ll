; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_action_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_action_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"reshape\00", align 1
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"repair\00", align 1
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@MaxSector = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*)* @action_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_show(%struct.mddev* %0, i8* %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %11 = call i64 @test_bit(i32 %10, i64* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %66

14:                                               ; preds = %2
  %15 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %16 = call i64 @test_bit(i32 %15, i64* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load %struct.mddev*, %struct.mddev** %3, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %65, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %25 = call i64 @test_bit(i32 %24, i64* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %23, %14
  %28 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %29 = call i64 @test_bit(i32 %28, i64* %6)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %64

32:                                               ; preds = %27
  %33 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %34 = call i64 @test_bit(i32 %33, i64* %6)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %38 = call i64 @test_bit(i32 %37, i64* %6)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %43 = call i64 @test_bit(i32 %42, i64* %6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %47

46:                                               ; preds = %41
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %40
  br label %63

49:                                               ; preds = %32
  %50 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %51 = call i64 @test_bit(i32 %50, i64* %6)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %5, align 8
  br label %62

54:                                               ; preds = %49
  %55 = load %struct.mddev*, %struct.mddev** %3, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MaxSector, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %61

61:                                               ; preds = %60, %54
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %48
  br label %64

64:                                               ; preds = %63, %31
  br label %65

65:                                               ; preds = %64, %23, %18
  br label %66

66:                                               ; preds = %65, %13
  %67 = load i8*, i8** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %68)
  ret i32 %69
}

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
