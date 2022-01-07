; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd = type { i64, i32, %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd*, i64, i64*, i32)* @write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_block(%struct.cxd* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store %struct.cxd* %0, %struct.cxd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.cxd*, %struct.cxd** %6, align 8
  %14 = getelementptr inbounds %struct.cxd, %struct.cxd* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %11, align 8
  %16 = load %struct.cxd*, %struct.cxd** %6, align 8
  %17 = getelementptr inbounds %struct.cxd, %struct.cxd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.cxd*, %struct.cxd** %6, align 8
  %23 = getelementptr inbounds %struct.cxd, %struct.cxd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @regmap_write(i32 %24, i32 0, i64 %25)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %21, %4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %85

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.cxd*, %struct.cxd** %6, align 8
  %35 = getelementptr inbounds %struct.cxd, %struct.cxd* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %75, %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.cxd*, %struct.cxd** %6, align 8
  %42 = getelementptr inbounds %struct.cxd, %struct.cxd* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.cxd*, %struct.cxd** %6, align 8
  %50 = getelementptr inbounds %struct.cxd, %struct.cxd* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.cxd*, %struct.cxd** %6, align 8
  %56 = getelementptr inbounds %struct.cxd, %struct.cxd* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %54, %46, %39
  %61 = load i64*, i64** %11, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @memcpy(i64* %61, i64* %62, i32 %63)
  %65 = load %struct.cxd*, %struct.cxd** %6, align 8
  %66 = getelementptr inbounds %struct.cxd, %struct.cxd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @regmap_raw_write(i32 %67, i32 1, i64* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %85

75:                                               ; preds = %60
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i64*, i64** %8, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64* %82, i64** %8, align 8
  br label %36

83:                                               ; preds = %36
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %73, %30
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @regmap_raw_write(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
