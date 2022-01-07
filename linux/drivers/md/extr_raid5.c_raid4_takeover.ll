; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid4_takeover.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_raid4_takeover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i32, i64 }

@ALGORITHM_PARITY_N = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mddev*)* @raid4_takeover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @raid4_takeover(%struct.mddev* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  %4 = load %struct.mddev*, %struct.mddev** %3, align 8
  %5 = getelementptr inbounds %struct.mddev, %struct.mddev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = call i8* @raid45_takeover_raid0(%struct.mddev* %9, i32 4)
  store i8* %10, i8** %2, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.mddev*, %struct.mddev** %3, align 8
  %13 = getelementptr inbounds %struct.mddev, %struct.mddev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 5
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.mddev*, %struct.mddev** %3, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ALGORITHM_PARITY_N, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.mddev*, %struct.mddev** %3, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.mddev*, %struct.mddev** %3, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 2
  store i32 4, i32* %26, align 8
  %27 = load %struct.mddev*, %struct.mddev** %3, align 8
  %28 = call i8* @setup_conf(%struct.mddev* %27)
  store i8* %28, i8** %2, align 8
  br label %33

29:                                               ; preds = %16, %11
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i8* @ERR_PTR(i32 %31)
  store i8* %32, i8** %2, align 8
  br label %33

33:                                               ; preds = %29, %22, %8
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i8* @raid45_takeover_raid0(%struct.mddev*, i32) #1

declare dso_local i8* @setup_conf(%struct.mddev*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
