; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_retry_on_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_retry_on_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32 }
%struct.dm_thin_endio_hook = type { %struct.thin_c* }
%struct.thin_c = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @retry_on_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retry_on_resume(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.dm_thin_endio_hook*, align 8
  %4 = alloca %struct.thin_c*, align 8
  %5 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %6 = load %struct.bio*, %struct.bio** %2, align 8
  %7 = call %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio* %6, i32 8)
  store %struct.dm_thin_endio_hook* %7, %struct.dm_thin_endio_hook** %3, align 8
  %8 = load %struct.dm_thin_endio_hook*, %struct.dm_thin_endio_hook** %3, align 8
  %9 = getelementptr inbounds %struct.dm_thin_endio_hook, %struct.dm_thin_endio_hook* %8, i32 0, i32 0
  %10 = load %struct.thin_c*, %struct.thin_c** %9, align 8
  store %struct.thin_c* %10, %struct.thin_c** %4, align 8
  %11 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %12 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %16 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %15, i32 0, i32 1
  %17 = load %struct.bio*, %struct.bio** %2, align 8
  %18 = call i32 @bio_list_add(i32* %16, %struct.bio* %17)
  %19 = load %struct.thin_c*, %struct.thin_c** %4, align 8
  %20 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  ret void
}

declare dso_local %struct.dm_thin_endio_hook* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_add(i32*, %struct.bio*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
