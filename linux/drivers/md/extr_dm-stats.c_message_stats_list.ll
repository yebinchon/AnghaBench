; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_message_stats_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stats.c_message_stats_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapped_device*, i32, i8**, i8*, i32)* @message_stats_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @message_stats_list(%struct.mapped_device* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mapped_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %47

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i8**, i8*** %9, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kstrdup(i8* %28, i32 %29)
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %47

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.mapped_device*, %struct.mapped_device** %7, align 8
  %39 = call i32 @dm_get_stats(%struct.mapped_device* %38)
  %40 = load i8*, i8** %13, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @dm_stats_list(i32 %39, i8* %40, i8* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @kfree(i8* %44)
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %37, %33, %19
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @dm_stats_list(i32, i8*, i8*, i32) #1

declare dso_local i32 @dm_get_stats(%struct.mapped_device*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
