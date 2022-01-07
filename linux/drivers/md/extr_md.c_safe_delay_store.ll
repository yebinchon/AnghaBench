; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_safe_delay_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_safe_delay_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"md: Safemode is disabled for clustered mode\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @safe_delay_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @safe_delay_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.mddev*, %struct.mddev** %5, align 8
  %12 = call i64 @mddev_is_clustered(%struct.mddev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %61

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strict_strtoul_scaled(i8* %19, i64* %8, i32 3)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %61

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.mddev*, %struct.mddev** %5, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  br label %59

31:                                               ; preds = %25
  %32 = load %struct.mddev*, %struct.mddev** %5, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @HZ, align 8
  %37 = mul i64 %35, %36
  %38 = udiv i64 %37, 1000
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i64 1, i64* %10, align 8
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.mddev*, %struct.mddev** %5, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i64, i64* %9, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49, %42
  %53 = load %struct.mddev*, %struct.mddev** %5, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 1
  %55 = load i64, i64* @jiffies, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @mod_timer(i32* %54, i64 %56)
  br label %58

58:                                               ; preds = %52, %49
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i64, i64* %7, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %59, %22, %14
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i64 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @strict_strtoul_scaled(i8*, i64*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
