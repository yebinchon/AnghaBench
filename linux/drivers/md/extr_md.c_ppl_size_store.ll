; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_ppl_size_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_ppl_size_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i64, i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@MD_HAS_PPL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@U16_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.md_rdev*, i8*, i64)* @ppl_size_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ppl_size_store(%struct.md_rdev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @kstrtouint(i8* %9, i32 10, i32* %8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @EINVAL, align 8
  %14 = sub i64 0, %13
  store i64 %14, i64* %4, align 8
  br label %80

15:                                               ; preds = %3
  %16 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %17 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load i32, i32* @MD_HAS_PPL, align 4
  %24 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %25 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = call i64 @test_bit(i32 %23, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* @EBUSY, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %80

38:                                               ; preds = %30, %22, %15
  %39 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %40 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %4, align 8
  br label %80

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @U16_MAX, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* @EINVAL, align 8
  %61 = sub i64 0, %60
  store i64 %61, i64* %4, align 8
  br label %80

62:                                               ; preds = %55
  br label %74

63:                                               ; preds = %38
  %64 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %65 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i64, i64* @EBUSY, align 8
  %72 = sub i64 0, %71
  store i64 %72, i64* %4, align 8
  br label %80

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %77 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load i64, i64* %7, align 8
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %74, %70, %59, %52, %35, %12
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
