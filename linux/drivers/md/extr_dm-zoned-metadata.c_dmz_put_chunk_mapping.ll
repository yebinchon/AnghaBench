; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_put_chunk_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_put_chunk_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32 }
%struct.dm_zone = type { %struct.dm_zone* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmz_put_chunk_mapping(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %6 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %7 = call i32 @dmz_lock_map(%struct.dmz_metadata* %6)
  %8 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %9 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %8, i32 0, i32 0
  %10 = load %struct.dm_zone*, %struct.dm_zone** %9, align 8
  store %struct.dm_zone* %10, %struct.dm_zone** %5, align 8
  %11 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %12 = icmp ne %struct.dm_zone* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %15 = call i64 @dmz_weight(%struct.dm_zone* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %19 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %20 = call i32 @dmz_lru_zone(%struct.dmz_metadata* %18, %struct.dm_zone* %19)
  br label %28

21:                                               ; preds = %13
  %22 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %23 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %24 = call i32 @dmz_unmap_zone(%struct.dmz_metadata* %22, %struct.dm_zone* %23)
  %25 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %26 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %27 = call i32 @dmz_free_zone(%struct.dmz_metadata* %25, %struct.dm_zone* %26)
  store %struct.dm_zone* null, %struct.dm_zone** %5, align 8
  br label %28

28:                                               ; preds = %21, %17
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %31 = call i32 @dmz_deactivate_zone(%struct.dm_zone* %30)
  %32 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %33 = call i64 @dmz_is_active(%struct.dm_zone* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %37 = icmp ne %struct.dm_zone* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %40 = call i64 @dmz_weight(%struct.dm_zone* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38, %35, %29
  %43 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %44 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %45 = call i32 @dmz_lru_zone(%struct.dmz_metadata* %43, %struct.dm_zone* %44)
  br label %53

46:                                               ; preds = %38
  %47 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %48 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %49 = call i32 @dmz_unmap_zone(%struct.dmz_metadata* %47, %struct.dm_zone* %48)
  %50 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %51 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %52 = call i32 @dmz_free_zone(%struct.dmz_metadata* %50, %struct.dm_zone* %51)
  br label %53

53:                                               ; preds = %46, %42
  %54 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %55 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %54)
  ret void
}

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

declare dso_local i64 @dmz_weight(%struct.dm_zone*) #1

declare dso_local i32 @dmz_lru_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_unmap_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_free_zone(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @dmz_deactivate_zone(%struct.dm_zone*) #1

declare dso_local i64 @dmz_is_active(%struct.dm_zone*) #1

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
