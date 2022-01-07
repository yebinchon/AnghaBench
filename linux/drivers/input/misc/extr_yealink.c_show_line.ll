; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_yealink.c_show_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_yealink.c_show_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.yealink_dev = type { i32* }

@sysfs_rwsema = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@lcdMap = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32, i32)* @show_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_line(%struct.device* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.yealink_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 @down_read(i32* @sysfs_rwsema)
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.yealink_dev* @dev_get_drvdata(%struct.device* %13)
  store %struct.yealink_dev* %14, %struct.yealink_dev** %10, align 8
  %15 = load %struct.yealink_dev*, %struct.yealink_dev** %10, align 8
  %16 = icmp eq %struct.yealink_dev* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = call i32 @up_read(i32* @sysfs_rwsema)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %72

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %37, %21
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcdMap, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  store i8 %34, i8* %35, align 1
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  store i8 10, i8* %41, align 1
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %59, %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.yealink_dev*, %struct.yealink_dev** %10, align 8
  %50 = getelementptr inbounds %struct.yealink_dev, %struct.yealink_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8 %56, i8* %57, align 1
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  store i8 10, i8* %63, align 1
  %65 = load i8*, i8** %7, align 8
  store i8 0, i8* %65, align 1
  %66 = call i32 @up_read(i32* @sysfs_rwsema)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %67, %68
  %70 = shl i32 %69, 1
  %71 = add nsw i32 3, %70
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %62, %17
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.yealink_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
