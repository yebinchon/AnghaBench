; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c___dmz_lru_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c___dmz_lru_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32 }
%struct.dm_zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmz_metadata*, %struct.dm_zone*)* @__dmz_lru_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dmz_lru_zone(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %5 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %6 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %5, i32 0, i32 0
  %7 = call i64 @list_empty(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %29

10:                                               ; preds = %2
  %11 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %12 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %11, i32 0, i32 0
  %13 = call i32 @list_del_init(i32* %12)
  %14 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %15 = call i64 @dmz_is_seq(%struct.dm_zone* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %19 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %18, i32 0, i32 0
  %20 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %21 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %20, i32 0, i32 1
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  br label %29

23:                                               ; preds = %10
  %24 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %25 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %24, i32 0, i32 0
  %26 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %27 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %26, i32 0, i32 0
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  br label %29

29:                                               ; preds = %9, %23, %17
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @dmz_is_seq(%struct.dm_zone*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
