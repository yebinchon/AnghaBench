; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_file_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_file_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@BITMAP_STALE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: kicking failed bitmap file %s from array!\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: disabling internal bitmap due to errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitmap*)* @md_bitmap_file_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_bitmap_file_kick(%struct.bitmap* %0) #0 {
  %2 = alloca %struct.bitmap*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.bitmap* %0, %struct.bitmap** %2, align 8
  store i8* null, i8** %4, align 8
  %5 = load i32, i32* @BITMAP_STALE, align 4
  %6 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %7 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %6, i32 0, i32 1
  %8 = call i32 @test_and_set_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %1
  %11 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %12 = call i32 @md_bitmap_update_sb(%struct.bitmap* %11)
  %13 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %14 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %10
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kmalloc(i32 %19, i32 %20)
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %26 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i8* @file_path(i64 %28, i8* %29, i32 %30)
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %24, %18
  %33 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %34 = call i32 @bmname(%struct.bitmap* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %41

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %38 ], [ %40, %39 ]
  %43 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %42)
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @kfree(i8* %44)
  br label %50

46:                                               ; preds = %10
  %47 = load %struct.bitmap*, %struct.bitmap** %2, align 8
  %48 = call i32 @bmname(%struct.bitmap* %47)
  %49 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %41
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @md_bitmap_update_sb(%struct.bitmap*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @file_path(i64, i8*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @bmname(%struct.bitmap*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
