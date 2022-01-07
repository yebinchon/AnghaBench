; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_get_metadata_sector_and_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_get_metadata_sector_and_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_integrity_c*, i32, i32, i32*)* @get_metadata_sector_and_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_metadata_sector_and_offset(%struct.dm_integrity_c* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dm_integrity_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %13 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %11, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %19 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %28 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %9, align 4
  br label %41

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %36 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %34, %37
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %43 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = lshr i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @sector_to_block(%struct.dm_integrity_c* %47, i32 %48)
  %50 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %51 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp uge i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @likely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %41
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @SECTOR_SHIFT, align 4
  %60 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %61 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add i32 %59, %62
  %64 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %65 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = sub i32 %63, %66
  %68 = lshr i32 %58, %67
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %73 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %71, %74
  %76 = load i32, i32* @SECTOR_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %79 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %77, %80
  %82 = sub i32 %81, 1
  %83 = and i32 %75, %82
  store i32 %83, i32* %10, align 4
  br label %111

84:                                               ; preds = %41
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %87 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = mul i32 %85, %88
  %90 = load i32, i32* @SECTOR_SHIFT, align 4
  %91 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %92 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add i32 %90, %93
  %95 = lshr i32 %89, %94
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %100 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = mul i32 %98, %101
  %103 = load i32, i32* @SECTOR_SHIFT, align 4
  %104 = shl i32 1, %103
  %105 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %106 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 %104, %107
  %109 = sub i32 %108, 1
  %110 = and i32 %102, %109
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %84, %57
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %8, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %9, align 4
  ret i32 %114
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sector_to_block(%struct.dm_integrity_c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
