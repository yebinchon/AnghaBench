; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_lru_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_lru_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { %struct.dm_zone* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_metadata*, %struct.dm_zone*)* @dmz_lru_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmz_lru_zone(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %5 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %6 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %7 = call i32 @__dmz_lru_zone(%struct.dmz_metadata* %5, %struct.dm_zone* %6)
  %8 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %9 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %8, i32 0, i32 0
  %10 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  %11 = icmp ne %struct.dm_zone* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %14 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %15 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %14, i32 0, i32 0
  %16 = load %struct.dm_zone*, %struct.dm_zone** %15, align 8
  %17 = call i32 @__dmz_lru_zone(%struct.dmz_metadata* %13, %struct.dm_zone* %16)
  br label %18

18:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @__dmz_lru_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
