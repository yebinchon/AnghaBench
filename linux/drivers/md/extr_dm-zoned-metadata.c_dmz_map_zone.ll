; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_map_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_map_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32 }
%struct.dm_zone = type { i32, i32 }

@DMZ_MAP_UNMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmz_map_zone(%struct.dmz_metadata* %0, %struct.dm_zone* %1, i32 %2) #0 {
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %10 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %11 = call i32 @dmz_id(%struct.dmz_metadata* %9, %struct.dm_zone* %10)
  %12 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %13 = call i32 @dmz_set_chunk_mapping(%struct.dmz_metadata* %7, i32 %8, i32 %11, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %16 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %18 = call i64 @dmz_is_rnd(%struct.dm_zone* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %22 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %21, i32 0, i32 1
  %23 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %24 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %28 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %27, i32 0, i32 1
  %29 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %30 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  br label %32

32:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @dmz_set_chunk_mapping(%struct.dmz_metadata*, i32, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i64 @dmz_is_rnd(%struct.dm_zone*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
