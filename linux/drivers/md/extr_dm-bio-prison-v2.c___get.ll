; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c___get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c___get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_v2 = type { i32 }
%struct.dm_cell_key_v2 = type { i32 }
%struct.bio = type { i32 }
%struct.dm_bio_prison_cell_v2 = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_bio_prison_v2*, %struct.dm_cell_key_v2*, i32, %struct.bio*, %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2**)* @__get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get(%struct.dm_bio_prison_v2* %0, %struct.dm_cell_key_v2* %1, i32 %2, %struct.bio* %3, %struct.dm_bio_prison_cell_v2* %4, %struct.dm_bio_prison_cell_v2** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_bio_prison_v2*, align 8
  %9 = alloca %struct.dm_cell_key_v2*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  %12 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  %13 = alloca %struct.dm_bio_prison_cell_v2**, align 8
  store %struct.dm_bio_prison_v2* %0, %struct.dm_bio_prison_v2** %8, align 8
  store %struct.dm_cell_key_v2* %1, %struct.dm_cell_key_v2** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.bio* %3, %struct.bio** %11, align 8
  store %struct.dm_bio_prison_cell_v2* %4, %struct.dm_bio_prison_cell_v2** %12, align 8
  store %struct.dm_bio_prison_cell_v2** %5, %struct.dm_bio_prison_cell_v2*** %13, align 8
  %14 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %8, align 8
  %15 = load %struct.dm_cell_key_v2*, %struct.dm_cell_key_v2** %9, align 8
  %16 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %12, align 8
  %17 = load %struct.dm_bio_prison_cell_v2**, %struct.dm_bio_prison_cell_v2*** %13, align 8
  %18 = call i64 @__find_or_insert(%struct.dm_bio_prison_v2* %14, %struct.dm_cell_key_v2* %15, %struct.dm_bio_prison_cell_v2* %16, %struct.dm_bio_prison_cell_v2** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %6
  %21 = load %struct.dm_bio_prison_cell_v2**, %struct.dm_bio_prison_cell_v2*** %13, align 8
  %22 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %21, align 8
  %23 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.dm_bio_prison_cell_v2**, %struct.dm_bio_prison_cell_v2*** %13, align 8
  %29 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %28, align 8
  %30 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ule i32 %27, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.dm_bio_prison_cell_v2**, %struct.dm_bio_prison_cell_v2*** %13, align 8
  %35 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %34, align 8
  %36 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %35, i32 0, i32 2
  %37 = load %struct.bio*, %struct.bio** %11, align 8
  %38 = call i32 @bio_list_add(i32* %36, %struct.bio* %37)
  store i32 0, i32* %7, align 4
  br label %51

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %20
  %41 = load %struct.dm_bio_prison_cell_v2**, %struct.dm_bio_prison_cell_v2*** %13, align 8
  %42 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %41, align 8
  %43 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %50

46:                                               ; preds = %6
  %47 = load %struct.dm_bio_prison_cell_v2**, %struct.dm_bio_prison_cell_v2*** %13, align 8
  %48 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %47, align 8
  %49 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %40
  store i32 1, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @__find_or_insert(%struct.dm_bio_prison_v2*, %struct.dm_cell_key_v2*, %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2**) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
