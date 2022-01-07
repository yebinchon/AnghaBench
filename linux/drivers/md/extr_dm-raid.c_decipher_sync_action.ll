; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_decipher_sync_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_decipher_sync_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32 }

@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@st_frozen = common dso_local global i32 0, align 4
@MD_RECOVERY_DONE = common dso_local global i32 0, align 4
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@MD_RECOVERY_RESHAPE = common dso_local global i32 0, align 4
@st_reshape = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@st_resync = common dso_local global i32 0, align 4
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@st_check = common dso_local global i32 0, align 4
@st_repair = common dso_local global i32 0, align 4
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@st_recover = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@st_idle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i64)* @decipher_sync_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decipher_sync_action(%struct.mddev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %7 = call i64 @test_bit(i32 %6, i64* %5)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @st_frozen, align 4
  store i32 %10, i32* %3, align 4
  br label %69

11:                                               ; preds = %2
  %12 = load i32, i32* @MD_RECOVERY_DONE, align 4
  %13 = call i64 @test_bit(i32 %12, i64* %5)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %67, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %17 = call i64 @test_bit(i32 %16, i64* %5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load %struct.mddev*, %struct.mddev** %4, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %67, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %26 = call i64 @test_bit(i32 %25, i64* %5)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %24, %15
  %29 = load i32, i32* @MD_RECOVERY_RESHAPE, align 4
  %30 = call i64 @test_bit(i32 %29, i64* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @st_reshape, align 4
  store i32 %33, i32* %3, align 4
  br label %69

34:                                               ; preds = %28
  %35 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %36 = call i64 @test_bit(i32 %35, i64* %5)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %40 = call i64 @test_bit(i32 %39, i64* %5)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @st_resync, align 4
  store i32 %43, i32* %3, align 4
  br label %69

44:                                               ; preds = %38
  %45 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %46 = call i64 @test_bit(i32 %45, i64* %5)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @st_check, align 4
  store i32 %49, i32* %3, align 4
  br label %69

50:                                               ; preds = %44
  %51 = load i32, i32* @st_repair, align 4
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %34
  %53 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %54 = call i64 @test_bit(i32 %53, i64* %5)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @st_recover, align 4
  store i32 %57, i32* %3, align 4
  br label %69

58:                                               ; preds = %52
  %59 = load %struct.mddev*, %struct.mddev** %4, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MaxSector, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @st_reshape, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %24, %19, %11
  %68 = load i32, i32* @st_idle, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %64, %56, %50, %48, %42, %32, %9
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
