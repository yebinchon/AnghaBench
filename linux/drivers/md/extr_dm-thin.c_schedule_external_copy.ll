; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_schedule_external_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_schedule_external_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i64, i32, %struct.pool* }
%struct.pool = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, i32, i32, %struct.dm_bio_prison_cell*, %struct.bio*)* @schedule_external_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_external_copy(%struct.thin_c* %0, i32 %1, i32 %2, %struct.dm_bio_prison_cell* %3, %struct.bio* %4) #0 {
  %6 = alloca %struct.thin_c*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_bio_prison_cell*, align 8
  %10 = alloca %struct.bio*, align 8
  %11 = alloca %struct.pool*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.thin_c* %0, %struct.thin_c** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dm_bio_prison_cell* %3, %struct.dm_bio_prison_cell** %9, align 8
  store %struct.bio* %4, %struct.bio** %10, align 8
  %14 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %15 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %14, i32 0, i32 2
  %16 = load %struct.pool*, %struct.pool** %15, align 8
  store %struct.pool* %16, %struct.pool** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.pool*, %struct.pool** %11, align 8
  %19 = getelementptr inbounds %struct.pool, %struct.pool* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = load %struct.pool*, %struct.pool** %11, align 8
  %26 = getelementptr inbounds %struct.pool, %struct.pool* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %32 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %30, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %5
  %36 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %39 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %9, align 8
  %44 = load %struct.bio*, %struct.bio** %10, align 8
  %45 = load %struct.pool*, %struct.pool** %11, align 8
  %46 = getelementptr inbounds %struct.pool, %struct.pool* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @schedule_copy(%struct.thin_c* %36, i32 %37, i32 %40, i32 %41, i32 %42, %struct.dm_bio_prison_cell* %43, %struct.bio* %44, i64 %48)
  br label %80

50:                                               ; preds = %5
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %53 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %60 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %9, align 8
  %65 = load %struct.bio*, %struct.bio** %10, align 8
  %66 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %67 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = sub nsw i64 %68, %69
  %71 = call i32 @schedule_copy(%struct.thin_c* %57, i32 %58, i32 %61, i32 %62, i32 %63, %struct.dm_bio_prison_cell* %64, %struct.bio* %65, i64 %70)
  br label %79

72:                                               ; preds = %50
  %73 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %9, align 8
  %77 = load %struct.bio*, %struct.bio** %10, align 8
  %78 = call i32 @schedule_zero(%struct.thin_c* %73, i32 %74, i32 %75, %struct.dm_bio_prison_cell* %76, %struct.bio* %77)
  br label %79

79:                                               ; preds = %72, %56
  br label %80

80:                                               ; preds = %79, %35
  ret void
}

declare dso_local i32 @schedule_copy(%struct.thin_c*, i32, i32, i32, i32, %struct.dm_bio_prison_cell*, %struct.bio*, i64) #1

declare dso_local i32 @schedule_zero(%struct.thin_c*, i32, i32, %struct.dm_bio_prison_cell*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
