; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_yealink.c_store_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_yealink.c_store_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.yealink_dev = type { i32 }

@sysfs_rwsema = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64, i32, i64)* @store_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_line(%struct.device* %0, i8* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.yealink_dev*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = call i32 @down_write(i32* @sysfs_rwsema)
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.yealink_dev* @dev_get_drvdata(%struct.device* %15)
  store %struct.yealink_dev* %16, %struct.yealink_dev** %12, align 8
  %17 = load %struct.yealink_dev*, %struct.yealink_dev** %12, align 8
  %18 = icmp eq %struct.yealink_dev* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = call i32 @up_write(i32* @sysfs_rwsema)
  %21 = load i64, i64* @ENODEV, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %6, align 8
  br label %51

23:                                               ; preds = %5
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  store i64 %28, i64* %11, align 8
  br label %29

29:                                               ; preds = %27, %23
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %11, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load %struct.yealink_dev*, %struct.yealink_dev** %12, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @setChar(%struct.yealink_dev* %36, i32 %37, i8 signext %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %30

48:                                               ; preds = %30
  %49 = call i32 @up_write(i32* @sysfs_rwsema)
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %48, %19
  %52 = load i64, i64* %6, align 8
  ret i64 %52
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.yealink_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @setChar(%struct.yealink_dev*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
