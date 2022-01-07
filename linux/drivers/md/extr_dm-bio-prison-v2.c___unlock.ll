; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c___unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v2.c___unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_v2 = type { i32 }
%struct.dm_bio_prison_cell_v2 = type { i32, i64, i64, i32 }
%struct.bio_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_bio_prison_v2*, %struct.dm_bio_prison_cell_v2*, %struct.bio_list*)* @__unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__unlock(%struct.dm_bio_prison_v2* %0, %struct.dm_bio_prison_cell_v2* %1, %struct.bio_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_bio_prison_v2*, align 8
  %6 = alloca %struct.dm_bio_prison_cell_v2*, align 8
  %7 = alloca %struct.bio_list*, align 8
  store %struct.dm_bio_prison_v2* %0, %struct.dm_bio_prison_v2** %5, align 8
  store %struct.dm_bio_prison_cell_v2* %1, %struct.dm_bio_prison_cell_v2** %6, align 8
  store %struct.bio_list* %2, %struct.bio_list** %7, align 8
  %8 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %6, align 8
  %9 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.bio_list*, %struct.bio_list** %7, align 8
  %16 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %6, align 8
  %17 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %16, i32 0, i32 3
  %18 = call i32 @bio_list_merge(%struct.bio_list* %15, i32* %17)
  %19 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %6, align 8
  %20 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %19, i32 0, i32 3
  %21 = call i32 @bio_list_init(i32* %20)
  %22 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %6, align 8
  %23 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %6, align 8
  %28 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  store i32 0, i32* %4, align 4
  br label %35

29:                                               ; preds = %3
  %30 = load %struct.dm_bio_prison_cell_v2*, %struct.dm_bio_prison_cell_v2** %6, align 8
  %31 = getelementptr inbounds %struct.dm_bio_prison_cell_v2, %struct.dm_bio_prison_cell_v2* %30, i32 0, i32 0
  %32 = load %struct.dm_bio_prison_v2*, %struct.dm_bio_prison_v2** %5, align 8
  %33 = getelementptr inbounds %struct.dm_bio_prison_v2, %struct.dm_bio_prison_v2* %32, i32 0, i32 0
  %34 = call i32 @rb_erase(i32* %31, i32* %33)
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
