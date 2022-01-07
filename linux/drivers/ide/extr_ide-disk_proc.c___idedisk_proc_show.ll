; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-disk_proc.c___idedisk_proc_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-disk_proc.c___idedisk_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@SECTOR_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%04x%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i32*, i32)* @__idedisk_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__idedisk_proc_show(%struct.seq_file* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @SECTOR_SIZE, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 %11, i32 %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @smart_enable(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @get_smart_data(i32* %22, i32* %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %19
  %28 = load i32*, i32** %8, align 8
  store i32* %28, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %49, %27
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SECTOR_SIZE, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = srem i32 %42, 8
  %44 = icmp eq i32 %43, 7
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 10, i32 32
  %47 = trunc i32 %46 to i8
  %48 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %41, i8 signext %47)
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %29

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %19
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @kfree(i32* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @smart_enable(i32*) #1

declare dso_local i64 @get_smart_data(i32*, i32*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8 signext) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
