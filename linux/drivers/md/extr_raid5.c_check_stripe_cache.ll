; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_check_stripe_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_check_stripe_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, %struct.r5conf* }
%struct.r5conf = type { i32 }

@STRIPE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"md/raid:%s: reshape: not enough stripes.  Needed %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*)* @check_stripe_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_stripe_cache(%struct.mddev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r5conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %5 = load %struct.mddev*, %struct.mddev** %3, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 2
  %7 = load %struct.r5conf*, %struct.r5conf** %6, align 8
  store %struct.r5conf* %7, %struct.r5conf** %4, align 8
  %8 = load %struct.mddev*, %struct.mddev** %3, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 9
  %12 = load i32, i32* @STRIPE_SIZE, align 4
  %13 = sdiv i32 %11, %12
  %14 = mul nsw i32 %13, 4
  %15 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %16 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load %struct.mddev*, %struct.mddev** %3, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 9
  %24 = load i32, i32* @STRIPE_SIZE, align 4
  %25 = sdiv i32 %23, %24
  %26 = mul nsw i32 %25, 4
  %27 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %28 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %19, %1
  %32 = load %struct.mddev*, %struct.mddev** %3, align 8
  %33 = call i32 @mdname(%struct.mddev* %32)
  %34 = load %struct.mddev*, %struct.mddev** %3, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mddev*, %struct.mddev** %3, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @max(i32 %36, i32 %39)
  %41 = shl i32 %40, 9
  %42 = load i32, i32* @STRIPE_SIZE, align 4
  %43 = sdiv i32 %41, %42
  %44 = mul nsw i32 %43, 4
  %45 = call i32 @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %44)
  store i32 0, i32* %2, align 4
  br label %47

46:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
