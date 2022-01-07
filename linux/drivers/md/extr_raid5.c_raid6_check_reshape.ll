; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid6_check_reshape.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid6_check_reshape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @raid6_check_reshape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid6_check_reshape(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.mddev*, %struct.mddev** %3, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @algorithm_valid_raid6(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %12, %1
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @is_power_of_2(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %54

31:                                               ; preds = %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = ashr i32 %33, 9
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %31
  %40 = load %struct.mddev*, %struct.mddev** %3, align 8
  %41 = getelementptr inbounds %struct.mddev, %struct.mddev* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.mddev*, %struct.mddev** %3, align 8
  %53 = call i32 @check_reshape(%struct.mddev* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %47, %36, %28, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @algorithm_valid_raid6(i64) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @check_reshape(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
