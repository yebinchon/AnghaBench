; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_bitmap_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_bitmap_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @bitmap_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mddev*, %struct.mddev** %5, align 8
  %13 = call i32 @mddev_lock(%struct.mddev* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.mddev*, %struct.mddev** %5, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %76

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %62, %24
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @simple_strtoul(i8* %30, i8** %8, i32 0)
  store i64 %31, i64* %10, align 8
  store i64 %31, i64* %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %71

36:                                               ; preds = %29
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 45
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @simple_strtoul(i8* %44, i8** %8, i32 0)
  store i64 %45, i64* %10, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %71

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %8, align 8
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @isspace(i8 signext %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %71

62:                                               ; preds = %56, %51
  %63 = load %struct.mddev*, %struct.mddev** %5, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @md_bitmap_dirty_bits(i32 %65, i64 %66, i64 %67)
  %69 = load i8*, i8** %8, align 8
  %70 = call i8* @skip_spaces(i8* %69)
  store i8* %70, i8** %6, align 8
  br label %25

71:                                               ; preds = %61, %49, %35, %25
  %72 = load %struct.mddev*, %struct.mddev** %5, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @md_bitmap_unplug(i32 %74)
  br label %76

76:                                               ; preds = %71, %23
  %77 = load %struct.mddev*, %struct.mddev** %5, align 8
  %78 = call i32 @mddev_unlock(%struct.mddev* %77)
  %79 = load i64, i64* %7, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @md_bitmap_dirty_bits(i32, i64, i64) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @md_bitmap_unplug(i32) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
