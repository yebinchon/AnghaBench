; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-linear.c_which_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-linear.c_which_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { i64 }
%struct.mddev = type { i32, %struct.linear_conf* }
%struct.linear_conf = type { %struct.dev_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dev_info* (%struct.mddev*, i64)* @which_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dev_info* @which_dev(%struct.mddev* %0, i64 %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.linear_conf*, align 8
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.mddev*, %struct.mddev** %3, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 1
  %15 = load %struct.linear_conf*, %struct.linear_conf** %14, align 8
  store %struct.linear_conf* %15, %struct.linear_conf** %8, align 8
  br label %16

16:                                               ; preds = %40, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.linear_conf*, %struct.linear_conf** %8, align 8
  %27 = getelementptr inbounds %struct.linear_conf, %struct.linear_conf* %26, i32 0, i32 0
  %28 = load %struct.dev_info*, %struct.dev_info** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %28, i64 %30
  %32 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %25, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %7, align 4
  br label %40

37:                                               ; preds = %20
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %35
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.linear_conf*, %struct.linear_conf** %8, align 8
  %43 = getelementptr inbounds %struct.linear_conf, %struct.linear_conf* %42, i32 0, i32 0
  %44 = load %struct.dev_info*, %struct.dev_info** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %44, i64 %46
  ret %struct.dev_info* %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
