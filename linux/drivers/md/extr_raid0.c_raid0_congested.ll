; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_congested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_raid0_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r0conf* }
%struct.r0conf = type { %struct.TYPE_2__*, %struct.md_rdev** }
%struct.TYPE_2__ = type { i32 }
%struct.md_rdev = type { i32 }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32)* @raid0_congested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid0_congested(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r0conf*, align 8
  %6 = alloca %struct.md_rdev**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.request_queue*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = load %struct.r0conf*, %struct.r0conf** %12, align 8
  store %struct.r0conf* %13, %struct.r0conf** %5, align 8
  %14 = load %struct.r0conf*, %struct.r0conf** %5, align 8
  %15 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %14, i32 0, i32 1
  %16 = load %struct.md_rdev**, %struct.md_rdev*** %15, align 8
  store %struct.md_rdev** %16, %struct.md_rdev*** %6, align 8
  %17 = load %struct.r0conf*, %struct.r0conf** %5, align 8
  %18 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %49, %2
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i1 [ false, %23 ], [ %30, %27 ]
  br i1 %32, label %33, label %52

33:                                               ; preds = %31
  %34 = load %struct.md_rdev**, %struct.md_rdev*** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.md_rdev*, %struct.md_rdev** %34, i64 %36
  %38 = load %struct.md_rdev*, %struct.md_rdev** %37, align 8
  %39 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.request_queue* @bdev_get_queue(i32 %40)
  store %struct.request_queue* %41, %struct.request_queue** %10, align 8
  %42 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %43 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @bdi_congested(i32 %44, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %23

52:                                               ; preds = %31
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @bdi_congested(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
