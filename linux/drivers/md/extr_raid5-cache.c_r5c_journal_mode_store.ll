; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_journal_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-cache.c_r5c_journal_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }

@r5c_journal_mode_str = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @r5c_journal_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r5c_journal_mode_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32*, i32** @r5c_journal_mode_str, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %7, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %9, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %27, %19
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32*, i32** @r5c_journal_mode_str, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strlen(i32 %40)
  %42 = load i64, i64* %9, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load i8*, i8** %6, align 8
  %46 = load i32*, i32** @r5c_journal_mode_str, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @strncmp(i8* %45, i32 %50, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  br label %56

55:                                               ; preds = %44, %35
  br label %31

56:                                               ; preds = %54, %31
  %57 = load %struct.mddev*, %struct.mddev** %5, align 8
  %58 = call i32 @mddev_lock(%struct.mddev* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %56
  %64 = load %struct.mddev*, %struct.mddev** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @r5c_journal_mode_set(%struct.mddev* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.mddev*, %struct.mddev** %5, align 8
  %68 = call i32 @mddev_unlock(%struct.mddev* %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = sext i32 %69 to i64
  br label %75

73:                                               ; preds = %63
  %74 = load i64, i64* %7, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %61, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @r5c_journal_mode_set(%struct.mddev*, i32) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
