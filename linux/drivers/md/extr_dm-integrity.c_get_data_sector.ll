; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_get_data_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_get_data_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_integrity_c*, i32, i32)* @get_data_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_data_sector(%struct.dm_integrity_c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_integrity_c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %10 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %18 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %16, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %24 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %15
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %34 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %32, %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %48

39:                                               ; preds = %15
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %43 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %39, %30
  %49 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %50 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %5, align 8
  %58 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %48, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
