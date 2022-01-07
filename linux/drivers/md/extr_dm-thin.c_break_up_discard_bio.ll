; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_break_up_discard_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_break_up_discard_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.pool*, i32 }
%struct.pool = type { i32 (%struct.dm_thin_new_mapping*)*, i32 }
%struct.dm_thin_new_mapping = type opaque
%struct.bio = type { i32 }
%struct.dm_cell_key = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.dm_thin_new_mapping.0 = type { i32, i32, %struct.bio*, %struct.dm_bio_prison_cell*, i64, i64, i64, %struct.thin_c* }

@PHYSICAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, i64, i64, %struct.bio*)* @break_up_discard_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_up_discard_bio(%struct.thin_c* %0, i64 %1, i64 %2, %struct.bio* %3) #0 {
  %5 = alloca %struct.thin_c*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.pool*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_cell_key, align 4
  %13 = alloca %struct.dm_bio_prison_cell*, align 8
  %14 = alloca %struct.dm_thin_new_mapping.0*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.thin_c* %0, %struct.thin_c** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.bio* %3, %struct.bio** %8, align 8
  %18 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %19 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %18, i32 0, i32 0
  %20 = load %struct.pool*, %struct.pool** %19, align 8
  store %struct.pool* %20, %struct.pool** %9, align 8
  br label %21

21:                                               ; preds = %100, %58, %4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %102

25:                                               ; preds = %21
  %26 = load %struct.pool*, %struct.pool** %9, align 8
  %27 = call i32 @ensure_next_mapping(%struct.pool* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %102

31:                                               ; preds = %25
  %32 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %33 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @dm_thin_find_mapped_range(i32 %34, i64 %35, i64 %36, i64* %15, i64* %16, i64* %17, i32* %11)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %102

41:                                               ; preds = %31
  %42 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %43 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PHYSICAL, align 4
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %16, align 8
  %49 = load i64, i64* %15, align 8
  %50 = sub nsw i64 %48, %49
  %51 = add nsw i64 %47, %50
  %52 = call i32 @build_key(i32 %44, i32 %45, i64 %46, i64 %51, %struct.dm_cell_key* %12)
  %53 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %54 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %53, i32 0, i32 0
  %55 = load %struct.pool*, %struct.pool** %54, align 8
  %56 = call i64 @bio_detain(%struct.pool* %55, %struct.dm_cell_key* %12, i32* null, %struct.dm_bio_prison_cell** %13)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i64, i64* %16, align 8
  store i64 %59, i64* %6, align 8
  br label %21

60:                                               ; preds = %41
  %61 = load %struct.pool*, %struct.pool** %9, align 8
  %62 = call %struct.dm_thin_new_mapping.0* @get_next_mapping(%struct.pool* %61)
  store %struct.dm_thin_new_mapping.0* %62, %struct.dm_thin_new_mapping.0** %14, align 8
  %63 = load %struct.thin_c*, %struct.thin_c** %5, align 8
  %64 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %65 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %64, i32 0, i32 7
  store %struct.thin_c* %63, %struct.thin_c** %65, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %68 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* %15, align 8
  %70 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %71 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %70, i32 0, i32 6
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %16, align 8
  %73 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %74 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %17, align 8
  %76 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %77 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %13, align 8
  %79 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %80 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %79, i32 0, i32 3
  store %struct.dm_bio_prison_cell* %78, %struct.dm_bio_prison_cell** %80, align 8
  %81 = load %struct.bio*, %struct.bio** %8, align 8
  %82 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %83 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %82, i32 0, i32 2
  store %struct.bio* %81, %struct.bio** %83, align 8
  %84 = load %struct.bio*, %struct.bio** %8, align 8
  %85 = call i32 @bio_inc_remaining(%struct.bio* %84)
  %86 = load %struct.pool*, %struct.pool** %9, align 8
  %87 = getelementptr inbounds %struct.pool, %struct.pool* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %90 = getelementptr inbounds %struct.dm_thin_new_mapping.0, %struct.dm_thin_new_mapping.0* %89, i32 0, i32 1
  %91 = call i32 @dm_deferred_set_add_work(i32 %88, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %60
  %94 = load %struct.pool*, %struct.pool** %9, align 8
  %95 = getelementptr inbounds %struct.pool, %struct.pool* %94, i32 0, i32 0
  %96 = load i32 (%struct.dm_thin_new_mapping*)*, i32 (%struct.dm_thin_new_mapping*)** %95, align 8
  %97 = load %struct.dm_thin_new_mapping.0*, %struct.dm_thin_new_mapping.0** %14, align 8
  %98 = bitcast %struct.dm_thin_new_mapping.0* %97 to %struct.dm_thin_new_mapping*
  %99 = call i32 %96(%struct.dm_thin_new_mapping* %98)
  br label %100

100:                                              ; preds = %93, %60
  %101 = load i64, i64* %16, align 8
  store i64 %101, i64* %6, align 8
  br label %21

102:                                              ; preds = %30, %40, %21
  ret void
}

declare dso_local i32 @ensure_next_mapping(%struct.pool*) #1

declare dso_local i32 @dm_thin_find_mapped_range(i32, i64, i64, i64*, i64*, i64*, i32*) #1

declare dso_local i32 @build_key(i32, i32, i64, i64, %struct.dm_cell_key*) #1

declare dso_local i64 @bio_detain(%struct.pool*, %struct.dm_cell_key*, i32*, %struct.dm_bio_prison_cell**) #1

declare dso_local %struct.dm_thin_new_mapping.0* @get_next_mapping(%struct.pool*) #1

declare dso_local i32 @bio_inc_remaining(%struct.bio*) #1

declare dso_local i32 @dm_deferred_set_add_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
