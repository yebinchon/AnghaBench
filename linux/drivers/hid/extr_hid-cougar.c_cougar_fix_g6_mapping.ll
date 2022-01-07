; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cougar.c_cougar_fix_g6_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cougar.c_cougar_fix_g6_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cougar_mapping = common dso_local global i64** null, align 8
@COUGAR_KEY_G6 = common dso_local global i64 0, align 8
@g6_is_space = common dso_local global i64 0, align 8
@KEY_SPACE = common dso_local global i64 0, align 8
@KEY_F18 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"cougar: G6 mapped to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"F18\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"cougar: no mappings defined for G6/spacebar\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cougar_fix_g6_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cougar_fix_g6_mapping() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %42, %0
  %3 = load i64**, i64*** @cougar_mapping, align 8
  %4 = load i32, i32* %1, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i64*, i64** %3, i64 %5
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load i64**, i64*** @cougar_mapping, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64*, i64** %12, i64 %14
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @COUGAR_KEY_G6, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %11
  %22 = load i64, i64* @g6_is_space, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @KEY_SPACE, align 8
  br label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @KEY_F18, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i64 [ %25, %24 ], [ %27, %26 ]
  %30 = load i64**, i64*** @cougar_mapping, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64*, i64** %30, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 %29, i64* %35, align 8
  %36 = load i64, i64* @g6_is_space, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %47

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %2

45:                                               ; preds = %2
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %28
  ret void
}

declare dso_local i32 @pr_info(i8*, i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
