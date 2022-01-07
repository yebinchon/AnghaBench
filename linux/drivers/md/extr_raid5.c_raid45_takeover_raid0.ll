; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid45_takeover_raid0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid45_takeover_raid0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.r0conf* }
%struct.r0conf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"md/raid:%s: cannot takeover raid0 with more than one zone.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ALGORITHM_PARITY_N = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*, i32)* @raid45_takeover_raid0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid45_takeover_raid0(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r0conf*, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mddev*, %struct.mddev** %4, align 8
  %9 = getelementptr inbounds %struct.mddev, %struct.mddev* %8, i32 0, i32 8
  %10 = load %struct.r0conf*, %struct.r0conf** %9, align 8
  store %struct.r0conf* %10, %struct.r0conf** %6, align 8
  %11 = load %struct.r0conf*, %struct.r0conf** %6, align 8
  %12 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.mddev*, %struct.mddev** %4, align 8
  %17 = call i32 @mdname(%struct.mddev* %16)
  %18 = call i32 @pr_warn(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %3, align 8
  br label %62

22:                                               ; preds = %2
  %23 = load %struct.r0conf*, %struct.r0conf** %6, align 8
  %24 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.r0conf*, %struct.r0conf** %6, align 8
  %31 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sector_div(i32 %29, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.mddev*, %struct.mddev** %4, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ALGORITHM_PARITY_N, align 4
  %44 = load %struct.mddev*, %struct.mddev** %4, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mddev*, %struct.mddev** %4, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mddev*, %struct.mddev** %4, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mddev*, %struct.mddev** %4, align 8
  %52 = getelementptr inbounds %struct.mddev, %struct.mddev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.mddev*, %struct.mddev** %4, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 2
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* @MaxSector, align 4
  %58 = load %struct.mddev*, %struct.mddev** %4, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mddev*, %struct.mddev** %4, align 8
  %61 = call i8* @setup_conf(%struct.mddev* %60)
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %22, %15
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

declare dso_local i8* @setup_conf(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
