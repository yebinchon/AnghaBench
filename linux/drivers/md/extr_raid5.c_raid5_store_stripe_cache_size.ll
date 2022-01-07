; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_store_stripe_cache_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_store_stripe_cache_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @raid5_store_stripe_cache_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid5_store_stripe_cache_size(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.r5conf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 10, i64* %9)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %17
  %25 = load %struct.mddev*, %struct.mddev** %5, align 8
  %26 = call i32 @mddev_lock(%struct.mddev* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %24
  %32 = load %struct.mddev*, %struct.mddev** %5, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 0
  %34 = load %struct.r5conf*, %struct.r5conf** %33, align 8
  store %struct.r5conf* %34, %struct.r5conf** %8, align 8
  %35 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %36 = icmp ne %struct.r5conf* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.mddev*, %struct.mddev** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @raid5_set_cache_size(%struct.mddev* %41, i64 %42)
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.mddev*, %struct.mddev** %5, align 8
  %46 = call i32 @mddev_unlock(%struct.mddev* %45)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = sext i32 %47 to i64
  br label %53

51:                                               ; preds = %44
  %52 = load i64, i64* %7, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %29, %21, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @raid5_set_cache_size(%struct.mddev*, i64) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
