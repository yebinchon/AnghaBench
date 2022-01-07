; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_raid10_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.r10conf* }
%struct.r10conf = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32, i32)* @raid10_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid10_size(%struct.mddev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r10conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mddev*, %struct.mddev** %4, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load %struct.r10conf*, %struct.r10conf** %10, align 8
  store %struct.r10conf* %11, %struct.r10conf** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %3
  %15 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %16 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %20 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @min(i32 %18, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %14, %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %29 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %34 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %32, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %40 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sector_div(i32 %38, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %49 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sector_div(i32 %47, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.r10conf*, %struct.r10conf** %8, align 8
  %55 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %53, %57
  ret i32 %58
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
