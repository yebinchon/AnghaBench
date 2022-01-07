; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_setup_geo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_setup_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geom = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mddev = type { i32, i32, i32, i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"This RAID10 layout does not provide data safety - please backup and create new array\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.geom*, %struct.mddev*, i32)* @setup_geo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_geo(%struct.geom* %0, %struct.mddev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.geom*, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.geom* %0, %struct.geom** %5, align 8
  store %struct.mddev* %1, %struct.mddev** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %39 [
    i32 129, label %15
    i32 130, label %29
    i32 128, label %40
  ]

15:                                               ; preds = %3
  %16 = load %struct.mddev*, %struct.mddev** %6, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.mddev*, %struct.mddev** %6, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.mddev*, %struct.mddev** %6, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mddev*, %struct.mddev** %6, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %13, align 4
  br label %54

29:                                               ; preds = %3
  %30 = load %struct.mddev*, %struct.mddev** %6, align 8
  %31 = getelementptr inbounds %struct.mddev, %struct.mddev* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mddev*, %struct.mddev** %6, align 8
  %34 = getelementptr inbounds %struct.mddev, %struct.mddev* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.mddev*, %struct.mddev** %6, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  br label %54

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %3, %39
  %41 = load %struct.mddev*, %struct.mddev** %6, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.mddev*, %struct.mddev** %6, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.mddev*, %struct.mddev** %6, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mddev*, %struct.mddev** %6, align 8
  %51 = getelementptr inbounds %struct.mddev, %struct.mddev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %40, %29, %15
  %55 = load i32, i32* %11, align 4
  %56 = ashr i32 %55, 19
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %128

59:                                               ; preds = %54
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = ashr i32 %61, 9
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @is_power_of_2(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64, %59
  store i32 -2, i32* %4, align 4
  br label %128

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 255
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %11, align 4
  %73 = ashr i32 %72, 8
  %74 = and i32 %73, 255
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 65536
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.geom*, %struct.geom** %5, align 8
  %79 = getelementptr inbounds %struct.geom, %struct.geom* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.geom*, %struct.geom** %5, align 8
  %82 = getelementptr inbounds %struct.geom, %struct.geom* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.geom*, %struct.geom** %5, align 8
  %85 = getelementptr inbounds %struct.geom, %struct.geom* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.geom*, %struct.geom** %5, align 8
  %88 = getelementptr inbounds %struct.geom, %struct.geom* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %11, align 4
  %90 = ashr i32 %89, 17
  switch i32 %90, label %114 [
    i32 0, label %91
    i32 1, label %95
    i32 2, label %108
  ]

91:                                               ; preds = %69
  %92 = load i32, i32* %13, align 4
  %93 = load %struct.geom*, %struct.geom** %5, align 8
  %94 = getelementptr inbounds %struct.geom, %struct.geom* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  br label %115

95:                                               ; preds = %69
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sdiv i32 %96, %97
  %99 = load %struct.geom*, %struct.geom** %5, align 8
  %100 = getelementptr inbounds %struct.geom, %struct.geom* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.geom*, %struct.geom** %5, align 8
  %102 = getelementptr inbounds %struct.geom, %struct.geom* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @WARN(i32 %106, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  br label %115

108:                                              ; preds = %69
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.geom*, %struct.geom** %5, align 8
  %113 = getelementptr inbounds %struct.geom, %struct.geom* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  br label %115

114:                                              ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %128

115:                                              ; preds = %108, %95, %91
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.geom*, %struct.geom** %5, align 8
  %119 = getelementptr inbounds %struct.geom, %struct.geom* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %12, align 4
  %121 = xor i32 %120, -1
  %122 = call i32 @ffz(i32 %121)
  %123 = load %struct.geom*, %struct.geom** %5, align 8
  %124 = getelementptr inbounds %struct.geom, %struct.geom* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %125, %126
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %115, %114, %68, %58
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ffz(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
