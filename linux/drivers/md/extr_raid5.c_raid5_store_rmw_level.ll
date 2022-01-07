; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_store_rmw_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid5_store_rmw_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mddev = type { %struct.r5conf* }
%struct.r5conf = type { i64 }

@ENODEV = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@PARITY_DISABLE_RMW = common dso_local global i64 0, align 8
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PARITY_ENABLE_RMW = common dso_local global i64 0, align 8
@PARITY_PREFER_RMW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @raid5_store_rmw_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @raid5_store_rmw_level(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.r5conf*, align 8
  %9 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.mddev*, %struct.mddev** %5, align 8
  %11 = getelementptr inbounds %struct.mddev, %struct.mddev* %10, i32 0, i32 0
  %12 = load %struct.r5conf*, %struct.r5conf** %11, align 8
  store %struct.r5conf* %12, %struct.r5conf** %8, align 8
  %13 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %14 = icmp ne %struct.r5conf* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @ENODEV, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %62

18:                                               ; preds = %3
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %62

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @kstrtoul(i8* %26, i32 10, i64* %9)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %62

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @PARITY_DISABLE_RMW, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %4, align 8
  br label %62

42:                                               ; preds = %36, %32
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @PARITY_DISABLE_RMW, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @PARITY_ENABLE_RMW, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @PARITY_PREFER_RMW, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %4, align 8
  br label %62

57:                                               ; preds = %50, %46, %42
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.r5conf*, %struct.r5conf** %8, align 8
  %60 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  store i64 %61, i64* %4, align 8
  br label %62

62:                                               ; preds = %57, %54, %39, %29, %22, %15
  %63 = load i64, i64* %4, align 8
  ret i64 %63
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
