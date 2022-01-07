; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_unmap_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_unmap_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }

@DMZ_MAP_UNMAPPED = common dso_local global i32 0, align 4
@DMZ_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmz_unmap_zone(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %7 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %8 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %59

14:                                               ; preds = %2
  %15 = load i32, i32* @DMZ_BUF, align 4
  %16 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %17 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %16, i32 0, i32 3
  %18 = call i64 @test_and_clear_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %22 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %23 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = call i32 @dmz_id(%struct.dmz_metadata* %21, %struct.TYPE_3__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %27 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %31 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %30, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %31, align 8
  br label %47

32:                                               ; preds = %14
  %33 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %34 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = call i64 @WARN_ON(%struct.TYPE_3__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %40 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %44 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %43, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %44, align 8
  br label %45

45:                                               ; preds = %38, %32
  %46 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %52 = call i32 @dmz_set_chunk_mapping(%struct.dmz_metadata* %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @DMZ_MAP_UNMAPPED, align 4
  %54 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %55 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %57 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %56, i32 0, i32 1
  %58 = call i32 @list_del_init(i32* %57)
  br label %59

59:                                               ; preds = %47, %13
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.TYPE_3__*) #1

declare dso_local i64 @WARN_ON(%struct.TYPE_3__*) #1

declare dso_local i32 @dmz_set_chunk_mapping(%struct.dmz_metadata*, i32, i32, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
