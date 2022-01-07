; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_get_bio_block_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_get_bio_block_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i64, i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*, i32*, i32*)* @get_bio_block_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_bio_block_range(%struct.thin_c* %0, %struct.bio* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.thin_c*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.thin_c* %0, %struct.thin_c** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %13 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %12, i32 0, i32 0
  %14 = load %struct.pool*, %struct.pool** %13, align 8
  store %struct.pool* %14, %struct.pool** %9, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.bio*, %struct.bio** %6, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SECTOR_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = add nsw i32 %19, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.pool*, %struct.pool** %9, align 8
  %28 = getelementptr inbounds %struct.pool, %struct.pool* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, 1
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.pool*, %struct.pool** %9, align 8
  %36 = call i64 @block_size_is_power_of_two(%struct.pool* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %4
  %39 = load %struct.pool*, %struct.pool** %9, align 8
  %40 = getelementptr inbounds %struct.pool, %struct.pool* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = ashr i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load %struct.pool*, %struct.pool** %9, align 8
  %45 = getelementptr inbounds %struct.pool, %struct.pool* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = ashr i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %60

49:                                               ; preds = %4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.pool*, %struct.pool** %9, align 8
  %52 = getelementptr inbounds %struct.pool, %struct.pool* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @sector_div(i32 %50, i64 %53)
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.pool*, %struct.pool** %9, align 8
  %57 = getelementptr inbounds %struct.pool, %struct.pool* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @sector_div(i32 %55, i64 %58)
  br label %60

60:                                               ; preds = %49, %38
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  ret void
}

declare dso_local i64 @block_size_is_power_of_two(%struct.pool*) #1

declare dso_local i32 @sector_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
