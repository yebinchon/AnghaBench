; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_max_sync_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_max_sync_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"max\00", align 1
@MaxSector = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @max_sync_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max_sync_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 4
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @strncmp(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i64, i64* @MaxSector, align 8
  %19 = load %struct.mddev*, %struct.mddev** %4, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %75

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @kstrtoull(i8* %24, i32 10, i64* %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %79

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.mddev*, %struct.mddev** %4, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %79

35:                                               ; preds = %28
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.mddev*, %struct.mddev** %4, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load %struct.mddev*, %struct.mddev** %4, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %50 = load %struct.mddev*, %struct.mddev** %4, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 6
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %79

55:                                               ; preds = %48, %43, %35
  %56 = load %struct.mddev*, %struct.mddev** %4, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %10, align 8
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %7, align 4
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @sector_div(i64 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %79

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.mddev*, %struct.mddev** %4, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %71, %17
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 5
  %78 = call i32 @wake_up(i32* %77)
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %69, %54, %34, %27
  %80 = load %struct.mddev*, %struct.mddev** %4, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 4
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = sext i32 %83 to i64
  br label %89

87:                                               ; preds = %79
  %88 = load i64, i64* %6, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  ret i64 %90
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @sector_div(i64, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
