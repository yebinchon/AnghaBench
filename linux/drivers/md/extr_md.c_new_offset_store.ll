; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_new_offset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_new_offset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.md_rdev*, i64)* }
%struct.md_rdev = type { i64, i64, i64, %struct.mddev* }
%struct.mddev = type { i64, i32, i64, i64, i64, i32, i64 }

@EINVAL = common dso_local global i64 0, align 8
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i64 0, align 8
@super_types = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.md_rdev*, i8*, i64)* @new_offset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @new_offset_store(%struct.md_rdev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mddev*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %11 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %10, i32 0, i32 3
  %12 = load %struct.mddev*, %struct.mddev** %11, align 8
  store %struct.mddev* %12, %struct.mddev** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @kstrtoull(i8* %13, i32 10, i64* %8)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %4, align 8
  br label %142

19:                                               ; preds = %3
  %20 = load %struct.mddev*, %struct.mddev** %9, align 8
  %21 = getelementptr inbounds %struct.mddev, %struct.mddev* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %26 = load %struct.mddev*, %struct.mddev** %9, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 5
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %19
  %31 = load i64, i64* @EBUSY, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %4, align 8
  br label %142

33:                                               ; preds = %24
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %36 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %65

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ugt i64 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %49 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %47, %50
  %52 = load %struct.mddev*, %struct.mddev** %9, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %51, %54
  %56 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %57 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i64, i64* @E2BIG, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %4, align 8
  br label %142

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %40
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.mddev*, %struct.mddev** %9, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, i64* @EINVAL, align 8
  %78 = sub i64 0, %77
  store i64 %78, i64* %4, align 8
  br label %142

79:                                               ; preds = %71, %65
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %82 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ugt i64 %80, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.mddev*, %struct.mddev** %9, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i64, i64* @EINVAL, align 8
  %92 = sub i64 0, %91
  store i64 %92, i64* %4, align 8
  br label %142

93:                                               ; preds = %85, %79
  %94 = load %struct.mddev*, %struct.mddev** %9, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load %struct.mddev*, %struct.mddev** %9, align 8
  %100 = getelementptr inbounds %struct.mddev, %struct.mddev* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %98
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @super_types, align 8
  %105 = load %struct.mddev*, %struct.mddev** %9, align 8
  %106 = getelementptr inbounds %struct.mddev, %struct.mddev* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32 (%struct.md_rdev*, i64)*, i32 (%struct.md_rdev*, i64)** %109, align 8
  %111 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i32 %110(%struct.md_rdev* %111, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %103
  %116 = load i64, i64* @E2BIG, align 8
  %117 = sub i64 0, %116
  store i64 %117, i64* %4, align 8
  br label %142

118:                                              ; preds = %103, %98, %93
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %121 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %124 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ugt i64 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load %struct.mddev*, %struct.mddev** %9, align 8
  %129 = getelementptr inbounds %struct.mddev, %struct.mddev* %128, i32 0, i32 1
  store i32 1, i32* %129, align 8
  br label %140

130:                                              ; preds = %118
  %131 = load i64, i64* %8, align 8
  %132 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %133 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ult i64 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.mddev*, %struct.mddev** %9, align 8
  %138 = getelementptr inbounds %struct.mddev, %struct.mddev* %137, i32 0, i32 1
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %130
  br label %140

140:                                              ; preds = %139, %127
  %141 = load i64, i64* %7, align 8
  store i64 %141, i64* %4, align 8
  br label %142

142:                                              ; preds = %140, %115, %90, %76, %60, %30, %16
  %143 = load i64, i64* %4, align 8
  ret i64 %143
}

declare dso_local i64 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
