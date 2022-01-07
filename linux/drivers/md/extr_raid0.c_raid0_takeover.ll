; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_takeover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i64 }

@.str = private unnamed_addr constant [49 x i8] c"md/raid0: %s: cannot takeover array with bitmap\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ALGORITHM_PARITY_N = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"md/raid0:%s: Raid can only takeover Raid5 with layout: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Takeover from raid%i to raid0 not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid0_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid0_takeover(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %4 = load %struct.mddev*, %struct.mddev** %3, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = call i32 @mdname(%struct.mddev* %9)
  %11 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  %14 = call i8* @ERR_PTR(i32 %13)
  store i8* %14, i8** %2, align 8
  br label %66

15:                                               ; preds = %1
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.mddev*, %struct.mddev** %3, align 8
  %22 = call i8* @raid0_takeover_raid45(%struct.mddev* %21)
  store i8* %22, i8** %2, align 8
  br label %66

23:                                               ; preds = %15
  %24 = load %struct.mddev*, %struct.mddev** %3, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.mddev*, %struct.mddev** %3, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ALGORITHM_PARITY_N, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.mddev*, %struct.mddev** %3, align 8
  %36 = call i8* @raid0_takeover_raid45(%struct.mddev* %35)
  store i8* %36, i8** %2, align 8
  br label %66

37:                                               ; preds = %28
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = call i32 @mdname(%struct.mddev* %38)
  %40 = load i64, i64* @ALGORITHM_PARITY_N, align 8
  %41 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %37, %23
  %43 = load %struct.mddev*, %struct.mddev** %3, align 8
  %44 = getelementptr inbounds %struct.mddev, %struct.mddev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.mddev*, %struct.mddev** %3, align 8
  %49 = call i8* @raid0_takeover_raid10(%struct.mddev* %48)
  store i8* %49, i8** %2, align 8
  br label %66

50:                                               ; preds = %42
  %51 = load %struct.mddev*, %struct.mddev** %3, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.mddev*, %struct.mddev** %3, align 8
  %57 = call i8* @raid0_takeover_raid1(%struct.mddev* %56)
  store i8* %57, i8** %2, align 8
  br label %66

58:                                               ; preds = %50
  %59 = load %struct.mddev*, %struct.mddev** %3, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i8* @ERR_PTR(i32 %64)
  store i8* %65, i8** %2, align 8
  br label %66

66:                                               ; preds = %58, %55, %47, %34, %20, %8
  %67 = load i8*, i8** %2, align 8
  ret i8* %67
}

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @raid0_takeover_raid45(%struct.mddev*) #1

declare dso_local i8* @raid0_takeover_raid10(%struct.mddev*) #1

declare dso_local i8* @raid0_takeover_raid1(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
