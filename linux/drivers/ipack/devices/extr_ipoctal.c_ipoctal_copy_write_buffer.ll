; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_copy_write_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_copy_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoctal_channel = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoctal_channel*, i8*, i32)* @ipoctal_copy_write_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoctal_copy_write_buffer(%struct.ipoctal_channel* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ipoctal_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ipoctal_channel* %0, %struct.ipoctal_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %11 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %10, i32 0, i32 0
  store i32* %11, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %58, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %20 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  %23 = icmp ule i32 %17, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %16
  %25 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %26 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %25, i32 0, i32 2
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %35 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %33, i8* %41, align 1
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, 1
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = urem i32 %44, %45
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %49 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %53 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %52, i32 0, i32 2
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %57

56:                                               ; preds = %16
  br label %61

57:                                               ; preds = %24
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %12

61:                                               ; preds = %56, %12
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
