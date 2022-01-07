; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c_dm_cell_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bio-prison-v1.c_dm_cell_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_cell_error(%struct.dm_bio_prison* %0, %struct.dm_bio_prison_cell* %1, i32 %2) #0 {
  %4 = alloca %struct.dm_bio_prison*, align 8
  %5 = alloca %struct.dm_bio_prison_cell*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio_list, align 4
  %8 = alloca %struct.bio*, align 8
  store %struct.dm_bio_prison* %0, %struct.dm_bio_prison** %4, align 8
  store %struct.dm_bio_prison_cell* %1, %struct.dm_bio_prison_cell** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @bio_list_init(%struct.bio_list* %7)
  %10 = load %struct.dm_bio_prison*, %struct.dm_bio_prison** %4, align 8
  %11 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %5, align 8
  %12 = call i32 @dm_cell_release(%struct.dm_bio_prison* %10, %struct.dm_bio_prison_cell* %11, %struct.bio_list* %7)
  br label %13

13:                                               ; preds = %16, %3
  %14 = call %struct.bio* @bio_list_pop(%struct.bio_list* %7)
  store %struct.bio* %14, %struct.bio** %8, align 8
  %15 = icmp ne %struct.bio* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.bio*, %struct.bio** %8, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bio*, %struct.bio** %8, align 8
  %21 = call i32 @bio_endio(%struct.bio* %20)
  br label %13

22:                                               ; preds = %13
  ret void
}

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @dm_cell_release(%struct.dm_bio_prison*, %struct.dm_bio_prison_cell*, %struct.bio_list*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
