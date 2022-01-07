; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_set_padding_dist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_set_padding_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pblk*, i8*, i64)* @pblk_sysfs_set_padding_dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pblk_sysfs_set_padding_dist(%struct.pblk* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.pblk*, %struct.pblk** %5, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %10, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strcspn(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %60

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @kstrtouint(i8* %25, i32 0, i32* %9)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %60

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %4, align 8
  br label %60

37:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.pblk*, %struct.pblk** %5, align 8
  %44 = getelementptr inbounds %struct.pblk, %struct.pblk* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @atomic64_set(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.pblk*, %struct.pblk** %5, align 8
  %55 = getelementptr inbounds %struct.pblk, %struct.pblk* %54, i32 0, i32 1
  %56 = call i32 @atomic64_read(i32* %55)
  %57 = load %struct.pblk*, %struct.pblk** %5, align 8
  %58 = getelementptr inbounds %struct.pblk, %struct.pblk* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %53, %34, %28, %21
  %61 = load i64, i64* %4, align 8
  ret i64 %61
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
