; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_aiptek_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_aiptek_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiptek = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"aiptek_program: failed, tried to send: 0x%02x 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aiptek*, i8, i8)* @aiptek_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiptek_command(%struct.aiptek* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aiptek*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.aiptek* %0, %struct.aiptek** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 12, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32* @kmalloc(i32 12, i32 %11)
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %51

18:                                               ; preds = %3
  %19 = load i32*, i32** %10, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 2, i32* %20, align 4
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  %25 = load i8, i8* %7, align 1
  %26 = zext i8 %25 to i32
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.aiptek*, %struct.aiptek** %5, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @aiptek_set_report(%struct.aiptek* %29, i32 3, i32 2, i32* %30, i32 12)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 12
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.aiptek*, %struct.aiptek** %5, align 8
  %35 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i8, i8* %6, align 1
  %39 = load i8, i8* %7, align 1
  %40 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8 zeroext %38, i8 zeroext %39)
  br label %41

41:                                               ; preds = %33, %18
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @kfree(i32* %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  br label %49

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @aiptek_set_report(%struct.aiptek*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
