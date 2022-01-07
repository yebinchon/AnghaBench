; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_resync_start_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_resync_start_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@MaxSector = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MD_SB_CHANGE_CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @resync_start_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resync_start_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @cmd_match(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @MaxSector, align 8
  store i64 %14, i64* %8, align 8
  br label %30

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @kstrtoull(i8* %16, i32 10, i64* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %80

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %80

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %13
  %31 = load %struct.mddev*, %struct.mddev** %5, align 8
  %32 = call i32 @mddev_lock(%struct.mddev* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %80

37:                                               ; preds = %30
  %38 = load %struct.mddev*, %struct.mddev** %5, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %44 = load %struct.mddev*, %struct.mddev** %5, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 3
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %48, %42, %37
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.mddev*, %struct.mddev** %5, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.mddev*, %struct.mddev** %5, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i32, i32* @MD_SB_CHANGE_CLEAN, align 4
  %64 = load %struct.mddev*, %struct.mddev** %5, align 8
  %65 = getelementptr inbounds %struct.mddev, %struct.mddev* %64, i32 0, i32 1
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %54
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.mddev*, %struct.mddev** %5, align 8
  %70 = call i32 @mddev_unlock(%struct.mddev* %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = sext i32 %71 to i64
  br label %77

75:                                               ; preds = %68
  %76 = load i64, i64* %7, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %35, %26, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
