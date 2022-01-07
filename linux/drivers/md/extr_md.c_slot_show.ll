; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_slot_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_slot_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, i32 }

@Journal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"journal\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i8*)* @slot_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slot_show(%struct.md_rdev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i8*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @Journal, align 4
  %7 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %8 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %16 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %14
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %19, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
