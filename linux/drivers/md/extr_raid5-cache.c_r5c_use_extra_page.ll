; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_use_extra_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_use_extra_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, %struct.r5dev*, %struct.r5conf* }
%struct.r5dev = type { i64, i64 }
%struct.r5conf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r5c_use_extra_page(%struct.stripe_head* %0) #0 {
  %2 = alloca %struct.stripe_head*, align 8
  %3 = alloca %struct.r5conf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r5dev*, align 8
  store %struct.stripe_head* %0, %struct.stripe_head** %2, align 8
  %6 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %7 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %6, i32 0, i32 2
  %8 = load %struct.r5conf*, %struct.r5conf** %7, align 8
  store %struct.r5conf* %8, %struct.r5conf** %3, align 8
  %9 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %10 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load %struct.stripe_head*, %struct.stripe_head** %2, align 8
  %18 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %17, i32 0, i32 1
  %19 = load %struct.r5dev*, %struct.r5dev** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %19, i64 %21
  store %struct.r5dev* %22, %struct.r5dev** %5, align 8
  %23 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %24 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %27 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %32 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @put_page(i64 %33)
  br label %35

35:                                               ; preds = %30, %16
  %36 = load %struct.r5conf*, %struct.r5conf** %3, align 8
  %37 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.r5dev*, %struct.r5dev** %5, align 8
  %45 = getelementptr inbounds %struct.r5dev, %struct.r5dev* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %12

46:                                               ; preds = %12
  ret void
}

declare dso_local i32 @put_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
