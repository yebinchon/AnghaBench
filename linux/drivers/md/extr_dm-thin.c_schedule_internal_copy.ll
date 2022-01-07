; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_schedule_internal_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_schedule_internal_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dm_bio_prison_cell = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, i32, i32, i32, %struct.dm_bio_prison_cell*, %struct.bio*)* @schedule_internal_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schedule_internal_copy(%struct.thin_c* %0, i32 %1, i32 %2, i32 %3, %struct.dm_bio_prison_cell* %4, %struct.bio* %5) #0 {
  %7 = alloca %struct.thin_c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_bio_prison_cell*, align 8
  %12 = alloca %struct.bio*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dm_bio_prison_cell* %4, %struct.dm_bio_prison_cell** %11, align 8
  store %struct.bio* %5, %struct.bio** %12, align 8
  %13 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %16 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %11, align 8
  %21 = load %struct.bio*, %struct.bio** %12, align 8
  %22 = load %struct.thin_c*, %struct.thin_c** %7, align 8
  %23 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @schedule_copy(%struct.thin_c* %13, i32 %14, i32 %17, i32 %18, i32 %19, %struct.dm_bio_prison_cell* %20, %struct.bio* %21, i32 %26)
  ret void
}

declare dso_local i32 @schedule_copy(%struct.thin_c*, i32, i32, i32, i32, %struct.dm_bio_prison_cell*, %struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
