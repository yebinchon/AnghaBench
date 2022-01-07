; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_get_coefs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_dps310.c_dps310_get_coefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dps310_data = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@DPS310_COEF_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dps310_data*)* @dps310_get_coefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dps310_get_coefs(%struct.dps310_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dps310_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [18 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dps310_data* %0, %struct.dps310_data** %3, align 8
  %15 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %16 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DPS310_COEF_BASE, align 4
  %19 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0
  %20 = call i32 @regmap_bulk_read(i32 %17, i32 %18, i32* %19, i32 72)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %130

25:                                               ; preds = %1
  %26 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = shl i32 %27, 4
  %29 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 4
  %32 = or i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @sign_extend32(i32 %33, i32 11)
  %35 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %36 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %35, i32 0, i32 8
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GENMASK(i32 3, i32 0)
  %40 = and i32 %38, %39
  %41 = shl i32 %40, 8
  %42 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %41, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @sign_extend32(i32 %45, i32 11)
  %47 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %48 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 12
  %52 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 4
  %53 = load i32, i32* %52, align 16
  %54 = shl i32 %53, 4
  %55 = or i32 %51, %54
  %56 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 4
  %59 = or i32 %55, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i8* @sign_extend32(i32 %60, i32 19)
  %62 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %63 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %62, i32 0, i32 6
  store i8* %61, i8** %63, align 8
  %64 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @GENMASK(i32 3, i32 0)
  %67 = and i32 %65, %66
  %68 = shl i32 %67, 16
  %69 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 6
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 8
  %72 = or i32 %68, %71
  %73 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 7
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %72, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i8* @sign_extend32(i32 %76, i32 19)
  %78 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %79 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 8
  %81 = load i32, i32* %80, align 16
  %82 = shl i32 %81, 8
  %83 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 9
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %82, %84
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i8* @sign_extend32(i32 %86, i32 15)
  %88 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %89 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 10
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %91, 8
  %93 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 11
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %92, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i8* @sign_extend32(i32 %96, i32 15)
  %98 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %99 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 12
  %101 = load i32, i32* %100, align 16
  %102 = shl i32 %101, 8
  %103 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 13
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %102, %104
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i8* @sign_extend32(i32 %106, i32 15)
  %108 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %109 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  %110 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 14
  %111 = load i32, i32* %110, align 8
  %112 = shl i32 %111, 8
  %113 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 15
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %112, %114
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i8* @sign_extend32(i32 %116, i32 15)
  %118 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %119 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 16
  %121 = load i32, i32* %120, align 16
  %122 = shl i32 %121, 8
  %123 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 17
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %122, %124
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i8* @sign_extend32(i32 %126, i32 15)
  %128 = load %struct.dps310_data*, %struct.dps310_data** %3, align 8
  %129 = getelementptr inbounds %struct.dps310_data, %struct.dps310_data* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %25, %23
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i32 @regmap_bulk_read(i32, i32, i32*, i32) #1

declare dso_local i8* @sign_extend32(i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
