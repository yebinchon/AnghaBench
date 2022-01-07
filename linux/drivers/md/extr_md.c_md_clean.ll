; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { %struct.TYPE_2__, i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64, i64, i64, i64*, i8*, i64, i64, i8*, i8*, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64 }

@MaxSector = common dso_local global i8* null, align 8
@LEVEL_NONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mddev*)* @md_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_clean(%struct.mddev* %0) #0 {
  %2 = alloca %struct.mddev*, align 8
  store %struct.mddev* %0, %struct.mddev** %2, align 8
  %3 = load %struct.mddev*, %struct.mddev** %2, align 8
  %4 = getelementptr inbounds %struct.mddev, %struct.mddev* %3, i32 0, i32 41
  store i64 0, i64* %4, align 8
  %5 = load %struct.mddev*, %struct.mddev** %2, align 8
  %6 = getelementptr inbounds %struct.mddev, %struct.mddev* %5, i32 0, i32 40
  store i64 0, i64* %6, align 8
  %7 = load %struct.mddev*, %struct.mddev** %2, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 39
  store i64 0, i64* %8, align 8
  %9 = load %struct.mddev*, %struct.mddev** %2, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 38
  store i64 0, i64* %10, align 8
  %11 = load %struct.mddev*, %struct.mddev** %2, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 37
  store i64 0, i64* %12, align 8
  %13 = load %struct.mddev*, %struct.mddev** %2, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 36
  store i64 0, i64* %14, align 8
  %15 = load i8*, i8** @MaxSector, align 8
  %16 = load %struct.mddev*, %struct.mddev** %2, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 35
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** @MaxSector, align 8
  %19 = load %struct.mddev*, %struct.mddev** %2, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 34
  store i8* %18, i8** %20, align 8
  %21 = load %struct.mddev*, %struct.mddev** %2, align 8
  %22 = getelementptr inbounds %struct.mddev, %struct.mddev* %21, i32 0, i32 33
  store i64 0, i64* %22, align 8
  %23 = load %struct.mddev*, %struct.mddev** %2, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 32
  store i64 0, i64* %24, align 8
  %25 = load i8*, i8** @LEVEL_NONE, align 8
  %26 = load %struct.mddev*, %struct.mddev** %2, align 8
  %27 = getelementptr inbounds %struct.mddev, %struct.mddev* %26, i32 0, i32 31
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mddev*, %struct.mddev** %2, align 8
  %29 = getelementptr inbounds %struct.mddev, %struct.mddev* %28, i32 0, i32 30
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.mddev*, %struct.mddev** %2, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 29
  store i64 0, i64* %33, align 8
  %34 = load %struct.mddev*, %struct.mddev** %2, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 28
  store i64 0, i64* %35, align 8
  %36 = load %struct.mddev*, %struct.mddev** %2, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 27
  store i64 0, i64* %37, align 8
  %38 = load %struct.mddev*, %struct.mddev** %2, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 26
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.mddev*, %struct.mddev** %2, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 25
  store i64 0, i64* %43, align 8
  %44 = load %struct.mddev*, %struct.mddev** %2, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 23
  store i64 0, i64* %45, align 8
  %46 = load %struct.mddev*, %struct.mddev** %2, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 24
  store i64 0, i64* %47, align 8
  %48 = load %struct.mddev*, %struct.mddev** %2, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 22
  store i64 0, i64* %49, align 8
  %50 = load %struct.mddev*, %struct.mddev** %2, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 21
  store i64 0, i64* %51, align 8
  %52 = load %struct.mddev*, %struct.mddev** %2, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 20
  store i64 0, i64* %53, align 8
  %54 = load %struct.mddev*, %struct.mddev** %2, align 8
  %55 = getelementptr inbounds %struct.mddev, %struct.mddev* %54, i32 0, i32 19
  store i64 0, i64* %55, align 8
  %56 = load %struct.mddev*, %struct.mddev** %2, align 8
  %57 = getelementptr inbounds %struct.mddev, %struct.mddev* %56, i32 0, i32 18
  store i64 0, i64* %57, align 8
  %58 = load %struct.mddev*, %struct.mddev** %2, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 17
  store i64 0, i64* %59, align 8
  %60 = load i8*, i8** @LEVEL_NONE, align 8
  %61 = load %struct.mddev*, %struct.mddev** %2, align 8
  %62 = getelementptr inbounds %struct.mddev, %struct.mddev* %61, i32 0, i32 16
  store i8* %60, i8** %62, align 8
  %63 = load %struct.mddev*, %struct.mddev** %2, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 15
  store i64 0, i64* %64, align 8
  %65 = load %struct.mddev*, %struct.mddev** %2, align 8
  %66 = getelementptr inbounds %struct.mddev, %struct.mddev* %65, i32 0, i32 14
  store i64 0, i64* %66, align 8
  %67 = load %struct.mddev*, %struct.mddev** %2, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 13
  store i64 0, i64* %68, align 8
  %69 = load %struct.mddev*, %struct.mddev** %2, align 8
  %70 = getelementptr inbounds %struct.mddev, %struct.mddev* %69, i32 0, i32 12
  %71 = call i32 @atomic64_set(i32* %70, i32 0)
  %72 = load %struct.mddev*, %struct.mddev** %2, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 10
  store i64 0, i64* %73, align 8
  %74 = load %struct.mddev*, %struct.mddev** %2, align 8
  %75 = getelementptr inbounds %struct.mddev, %struct.mddev* %74, i32 0, i32 11
  store i64 0, i64* %75, align 8
  %76 = load %struct.mddev*, %struct.mddev** %2, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 8
  store i64 0, i64* %77, align 8
  %78 = load %struct.mddev*, %struct.mddev** %2, align 8
  %79 = getelementptr inbounds %struct.mddev, %struct.mddev* %78, i32 0, i32 9
  store i64 0, i64* %79, align 8
  %80 = load %struct.mddev*, %struct.mddev** %2, align 8
  %81 = getelementptr inbounds %struct.mddev, %struct.mddev* %80, i32 0, i32 7
  store i64 0, i64* %81, align 8
  %82 = load %struct.mddev*, %struct.mddev** %2, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 6
  store i64 0, i64* %83, align 8
  %84 = load %struct.mddev*, %struct.mddev** %2, align 8
  %85 = getelementptr inbounds %struct.mddev, %struct.mddev* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load %struct.mddev*, %struct.mddev** %2, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  %88 = load %struct.mddev*, %struct.mddev** %2, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.mddev*, %struct.mddev** %2, align 8
  %91 = getelementptr inbounds %struct.mddev, %struct.mddev* %90, i32 0, i32 2
  store i32* null, i32** %91, align 8
  %92 = load %struct.mddev*, %struct.mddev** %2, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 1
  store i32* null, i32** %93, align 8
  %94 = load %struct.mddev*, %struct.mddev** %2, align 8
  %95 = getelementptr inbounds %struct.mddev, %struct.mddev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 6
  store i64 0, i64* %96, align 8
  %97 = load %struct.mddev*, %struct.mddev** %2, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  store i64 0, i64* %99, align 8
  %100 = load %struct.mddev*, %struct.mddev** %2, align 8
  %101 = getelementptr inbounds %struct.mddev, %struct.mddev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.mddev*, %struct.mddev** %2, align 8
  %104 = getelementptr inbounds %struct.mddev, %struct.mddev* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.mddev*, %struct.mddev** %2, align 8
  %107 = getelementptr inbounds %struct.mddev, %struct.mddev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.mddev*, %struct.mddev** %2, align 8
  %110 = getelementptr inbounds %struct.mddev, %struct.mddev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  %112 = load %struct.mddev*, %struct.mddev** %2, align 8
  %113 = getelementptr inbounds %struct.mddev, %struct.mddev* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  ret void
}

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
