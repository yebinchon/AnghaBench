; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid6_takeover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid6_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32, i32* }

@raid5_personality = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ALGORITHM_LEFT_ASYMMETRIC_6 = common dso_local global i32 0, align 4
@ALGORITHM_RIGHT_ASYMMETRIC_6 = common dso_local global i32 0, align 4
@ALGORITHM_LEFT_SYMMETRIC_6 = common dso_local global i32 0, align 4
@ALGORITHM_RIGHT_SYMMETRIC_6 = common dso_local global i32 0, align 4
@ALGORITHM_PARITY_0_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid6_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid6_takeover(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 6
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, @raid5_personality
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call i8* @ERR_PTR(i32 %11)
  store i8* %12, i8** %2, align 8
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.mddev*, %struct.mddev** %3, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %2, align 8
  br label %73

22:                                               ; preds = %13
  %23 = load %struct.mddev*, %struct.mddev** %3, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 253
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i8* @ERR_PTR(i32 %29)
  store i8* %30, i8** %2, align 8
  br label %73

31:                                               ; preds = %22
  %32 = load %struct.mddev*, %struct.mddev** %3, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i8* @ERR_PTR(i32 %38)
  store i8* %39, i8** %2, align 8
  br label %73

40:                                               ; preds = %31
  %41 = load %struct.mddev*, %struct.mddev** %3, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %55 [
    i32 133, label %44
    i32 129, label %46
    i32 132, label %48
    i32 128, label %50
    i32 131, label %52
    i32 130, label %54
  ]

44:                                               ; preds = %40
  %45 = load i32, i32* @ALGORITHM_LEFT_ASYMMETRIC_6, align 4
  store i32 %45, i32* %4, align 4
  br label %59

46:                                               ; preds = %40
  %47 = load i32, i32* @ALGORITHM_RIGHT_ASYMMETRIC_6, align 4
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %40
  %49 = load i32, i32* @ALGORITHM_LEFT_SYMMETRIC_6, align 4
  store i32 %49, i32* %4, align 4
  br label %59

50:                                               ; preds = %40
  %51 = load i32, i32* @ALGORITHM_RIGHT_SYMMETRIC_6, align 4
  store i32 %51, i32* %4, align 4
  br label %59

52:                                               ; preds = %40
  %53 = load i32, i32* @ALGORITHM_PARITY_0_6, align 4
  store i32 %53, i32* %4, align 4
  br label %59

54:                                               ; preds = %40
  store i32 130, i32* %4, align 4
  br label %59

55:                                               ; preds = %40
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i8* @ERR_PTR(i32 %57)
  store i8* %58, i8** %2, align 8
  br label %73

59:                                               ; preds = %54, %52, %50, %48, %46, %44
  %60 = load %struct.mddev*, %struct.mddev** %3, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 3
  store i32 6, i32* %61, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.mddev*, %struct.mddev** %3, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mddev*, %struct.mddev** %3, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 5
  store i32 1, i32* %66, align 4
  %67 = load %struct.mddev*, %struct.mddev** %3, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.mddev*, %struct.mddev** %3, align 8
  %72 = call i8* @setup_conf(%struct.mddev* %71)
  store i8* %72, i8** %2, align 8
  br label %73

73:                                               ; preds = %59, %55, %36, %27, %18, %9
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @setup_conf(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
