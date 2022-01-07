; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_map_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid0.c_map_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32 }
%struct.mddev = type { i32, %struct.r0conf* }
%struct.r0conf = type { %struct.strip_zone*, %struct.md_rdev** }
%struct.strip_zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.md_rdev* (%struct.mddev*, %struct.strip_zone*, i32, i32*)* @map_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.md_rdev* @map_sector(%struct.mddev* %0, %struct.strip_zone* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca %struct.strip_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.r0conf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store %struct.strip_zone* %1, %struct.strip_zone** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load %struct.mddev*, %struct.mddev** %5, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 1
  %17 = load %struct.r0conf*, %struct.r0conf** %16, align 8
  store %struct.r0conf* %17, %struct.r0conf** %11, align 8
  %18 = load %struct.r0conf*, %struct.r0conf** %11, align 8
  %19 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %18, i32 0, i32 0
  %20 = load %struct.strip_zone*, %struct.strip_zone** %19, align 8
  %21 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %20, i64 0
  %22 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.mddev*, %struct.mddev** %5, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @is_power_of_2(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  %32 = xor i32 %31, -1
  %33 = call i32 @ffz(i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub i32 %35, 1
  %37 = and i32 %34, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %45 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = shl i32 %46, %47
  %49 = call i32 @sector_div(i32 %43, i32 %48)
  br label %63

50:                                               ; preds = %4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @sector_div(i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %59 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %57, %60
  %62 = call i32 @sector_div(i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %50, %30
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %13, align 4
  %66 = mul i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %66, %67
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.r0conf*, %struct.r0conf** %11, align 8
  %71 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %70, i32 0, i32 1
  %72 = load %struct.md_rdev**, %struct.md_rdev*** %71, align 8
  %73 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %74 = load %struct.r0conf*, %struct.r0conf** %11, align 8
  %75 = getelementptr inbounds %struct.r0conf, %struct.r0conf* %74, i32 0, i32 0
  %76 = load %struct.strip_zone*, %struct.strip_zone** %75, align 8
  %77 = ptrtoint %struct.strip_zone* %73 to i64
  %78 = ptrtoint %struct.strip_zone* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %80, %82
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.strip_zone*, %struct.strip_zone** %6, align 8
  %86 = getelementptr inbounds %struct.strip_zone, %struct.strip_zone* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sector_div(i32 %84, i32 %87)
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %83, %89
  %91 = getelementptr inbounds %struct.md_rdev*, %struct.md_rdev** %72, i64 %90
  %92 = load %struct.md_rdev*, %struct.md_rdev** %91, align 8
  ret %struct.md_rdev* %92
}

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @sector_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
