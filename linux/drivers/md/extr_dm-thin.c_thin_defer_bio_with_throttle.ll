; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_defer_bio_with_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_thin_defer_bio_with_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { %struct.pool* }
%struct.pool = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*, %struct.bio*)* @thin_defer_bio_with_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thin_defer_bio_with_throttle(%struct.thin_c* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.thin_c*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.pool*, align 8
  store %struct.thin_c* %0, %struct.thin_c** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %7 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %6, i32 0, i32 0
  %8 = load %struct.pool*, %struct.pool** %7, align 8
  store %struct.pool* %8, %struct.pool** %5, align 8
  %9 = load %struct.pool*, %struct.pool** %5, align 8
  %10 = getelementptr inbounds %struct.pool, %struct.pool* %9, i32 0, i32 0
  %11 = call i32 @throttle_lock(i32* %10)
  %12 = load %struct.thin_c*, %struct.thin_c** %3, align 8
  %13 = load %struct.bio*, %struct.bio** %4, align 8
  %14 = call i32 @thin_defer_bio(%struct.thin_c* %12, %struct.bio* %13)
  %15 = load %struct.pool*, %struct.pool** %5, align 8
  %16 = getelementptr inbounds %struct.pool, %struct.pool* %15, i32 0, i32 0
  %17 = call i32 @throttle_unlock(i32* %16)
  ret void
}

declare dso_local i32 @throttle_lock(i32*) #1

declare dso_local i32 @thin_defer_bio(%struct.thin_c*, %struct.bio*) #1

declare dso_local i32 @throttle_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
