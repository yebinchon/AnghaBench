; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_reshape_direction_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_reshape_direction_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"forwards\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"backwards\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @reshape_direction_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reshape_direction_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @cmd_match(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @cmd_match(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 1, i32* %8, align 4
  br label %22

19:                                               ; preds = %14
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %77

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %13
  %24 = load %struct.mddev*, %struct.mddev** %5, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %4, align 8
  br label %77

31:                                               ; preds = %23
  %32 = load %struct.mddev*, %struct.mddev** %5, align 8
  %33 = call i32 @mddev_lock(%struct.mddev* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %4, align 8
  br label %77

39:                                               ; preds = %31
  %40 = load %struct.mddev*, %struct.mddev** %5, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %66

47:                                               ; preds = %39
  %48 = load %struct.mddev*, %struct.mddev** %5, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.mddev*, %struct.mddev** %5, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, i64* @EINVAL, align 8
  %59 = sub i64 0, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  br label %65

61:                                               ; preds = %52, %47
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.mddev*, %struct.mddev** %5, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %44
  %67 = load %struct.mddev*, %struct.mddev** %5, align 8
  %68 = call i32 @mddev_unlock(%struct.mddev* %67)
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = sext i32 %69 to i64
  br label %75

73:                                               ; preds = %66
  %74 = load i64, i64* %7, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %36, %29, %19
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
