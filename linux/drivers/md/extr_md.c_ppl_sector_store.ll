; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_ppl_sector_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_ppl_sector_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i64, i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@MD_HAS_PPL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@S16_MAX = common dso_local global i64 0, align 8
@S16_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.md_rdev*, i8*, i64)* @ppl_sector_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ppl_sector_store(%struct.md_rdev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @kstrtoull(i8* %9, i32 10, i64* %8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* @EINVAL, align 8
  %14 = sub i64 0, %13
  store i64 %14, i64* %4, align 8
  br label %120

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i64, i64* @EINVAL, align 8
  %21 = sub i64 0, %20
  store i64 %21, i64* %4, align 8
  br label %120

22:                                               ; preds = %15
  %23 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %24 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %22
  %30 = load i32, i32* @MD_HAS_PPL, align 4
  %31 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %32 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = call i64 @test_bit(i32 %30, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %39 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* @EBUSY, align 8
  %44 = sub i64 0, %43
  store i64 %44, i64* %4, align 8
  br label %120

45:                                               ; preds = %37, %29, %22
  %46 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %45
  %53 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %54 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %53, i32 0, i32 3
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i64, i64* @EINVAL, align 8
  %61 = sub i64 0, %60
  store i64 %61, i64* %4, align 8
  br label %120

62:                                               ; preds = %52
  %63 = load i64, i64* %8, align 8
  %64 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %65 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = load i64, i64* %8, align 8
  %70 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %71 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  %74 = load i64, i64* @S16_MAX, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %68, %62
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %79 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ult i64 %77, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %84 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub i64 %85, %86
  %88 = load i64, i64* @S16_MIN, align 8
  %89 = sub i64 0, %88
  %90 = icmp ugt i64 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82, %68
  %92 = load i64, i64* @EINVAL, align 8
  %93 = sub i64 0, %92
  store i64 %93, i64* %4, align 8
  br label %120

94:                                               ; preds = %82, %76
  %95 = load i64, i64* %8, align 8
  %96 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %97 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %95, %98
  %100 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %101 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  br label %114

103:                                              ; preds = %45
  %104 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %105 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %104, i32 0, i32 3
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  %111 = load i64, i64* @EBUSY, align 8
  %112 = sub i64 0, %111
  store i64 %112, i64* %4, align 8
  br label %120

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %94
  %115 = load i64, i64* %8, align 8
  %116 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %117 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* %7, align 8
  store i64 %119, i64* %4, align 8
  br label %120

120:                                              ; preds = %114, %110, %91, %59, %42, %19, %12
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
