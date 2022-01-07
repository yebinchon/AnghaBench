; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxd*, i64, i64*, i32)* @read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_block(%struct.cxd* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cxd* %0, %struct.cxd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.cxd*, %struct.cxd** %6, align 8
  %13 = getelementptr inbounds %struct.cxd, %struct.cxd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.cxd*, %struct.cxd** %6, align 8
  %19 = getelementptr inbounds %struct.cxd, %struct.cxd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @regmap_write(i32 %20, i32 0, i64 %21)
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %17, %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %72, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.cxd*, %struct.cxd** %6, align 8
  %29 = getelementptr inbounds %struct.cxd, %struct.cxd* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %63, %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.cxd*, %struct.cxd** %6, align 8
  %36 = getelementptr inbounds %struct.cxd, %struct.cxd* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.cxd*, %struct.cxd** %6, align 8
  %43 = getelementptr inbounds %struct.cxd, %struct.cxd* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.cxd*, %struct.cxd** %6, align 8
  %49 = getelementptr inbounds %struct.cxd, %struct.cxd* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %47, %40, %33
  %53 = load %struct.cxd*, %struct.cxd** %6, align 8
  %54 = getelementptr inbounds %struct.cxd, %struct.cxd* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @regmap_raw_read(i32 %55, i32 1, i64* %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %74

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  %65 = load i64*, i64** %8, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64* %67, i64** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %30

71:                                               ; preds = %30
  br label %72

72:                                               ; preds = %71, %23
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %61
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @regmap_raw_read(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
