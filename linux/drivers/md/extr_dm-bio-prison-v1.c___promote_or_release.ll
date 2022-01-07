; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c___promote_or_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c___promote_or_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison = type { i32 }
%struct.dm_bio_prison_cell = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_bio_prison*, %struct.dm_bio_prison_cell*)* @__promote_or_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__promote_or_release(%struct.dm_bio_prison* %0, %struct.dm_bio_prison_cell* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_bio_prison*, align 8
  %5 = alloca %struct.dm_bio_prison_cell*, align 8
  store %struct.dm_bio_prison* %0, %struct.dm_bio_prison** %4, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %5, align 8
  %6 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %5, align 8
  %7 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %6, i32 0, i32 0
  %8 = call i64 @bio_list_empty(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %5, align 8
  %12 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %11, i32 0, i32 2
  %13 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %4, align 8
  %14 = getelementptr inbounds %struct.dm_bio_prison, %struct.dm_bio_prison* %13, i32 0, i32 0
  %15 = call i32 @rb_erase(i32* %12, i32* %14)
  store i32 1, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %5, align 8
  %18 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %17, i32 0, i32 0
  %19 = call i32 @bio_list_pop(i32* %18)
  %20 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %5, align 8
  %21 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @bio_list_empty(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @bio_list_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
