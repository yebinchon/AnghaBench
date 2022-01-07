; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_chunk_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_chunk_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32, i32 }
%struct.dm_zone = type { i32, %struct.dm_zone*, i32, i32 }

@DMZ_ALLOC_RND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMZ_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_zone* @dmz_get_chunk_buffer(%struct.dmz_metadata* %0, %struct.dm_zone* %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca %struct.dm_zone*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %4, align 8
  %6 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %7 = call i32 @dmz_lock_map(%struct.dmz_metadata* %6)
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %10 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %9, i32 0, i32 1
  %11 = load %struct.dm_zone*, %struct.dm_zone** %10, align 8
  store %struct.dm_zone* %11, %struct.dm_zone** %5, align 8
  %12 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %13 = icmp ne %struct.dm_zone* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %66

15:                                               ; preds = %8
  %16 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %17 = load i32, i32* @DMZ_ALLOC_RND, align 4
  %18 = call %struct.dm_zone* @dmz_alloc_zone(%struct.dmz_metadata* %16, i32 %17)
  store %struct.dm_zone* %18, %struct.dm_zone** %5, align 8
  %19 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %20 = icmp ne %struct.dm_zone* %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @dmz_bdev_is_dying(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.dm_zone* @ERR_PTR(i32 %29)
  store %struct.dm_zone* %30, %struct.dm_zone** %5, align 8
  br label %66

31:                                               ; preds = %21
  %32 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %33 = call i32 @dmz_wait_for_free_zones(%struct.dmz_metadata* %32)
  br label %8

34:                                               ; preds = %15
  %35 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %36 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %37 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %40 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %41 = call i32 @dmz_id(%struct.dmz_metadata* %39, %struct.dm_zone* %40)
  %42 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %43 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %44 = call i32 @dmz_id(%struct.dmz_metadata* %42, %struct.dm_zone* %43)
  %45 = call i32 @dmz_set_chunk_mapping(%struct.dmz_metadata* %35, i32 %38, i32 %41, i32 %44)
  %46 = load i32, i32* @DMZ_BUF, align 4
  %47 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %48 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %47, i32 0, i32 3
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %51 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %54 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %56 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %57 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %56, i32 0, i32 1
  store %struct.dm_zone* %55, %struct.dm_zone** %57, align 8
  %58 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %59 = load %struct.dm_zone*, %struct.dm_zone** %4, align 8
  %60 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %59, i32 0, i32 1
  store %struct.dm_zone* %58, %struct.dm_zone** %60, align 8
  %61 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %62 = getelementptr inbounds %struct.dm_zone, %struct.dm_zone* %61, i32 0, i32 0
  %63 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %64 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %62, i32* %64)
  br label %66

66:                                               ; preds = %34, %27, %14
  %67 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %68 = call i32 @dmz_unlock_map(%struct.dmz_metadata* %67)
  %69 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  ret %struct.dm_zone* %69
}

declare dso_local i32 @dmz_lock_map(%struct.dmz_metadata*) #1

declare dso_local %struct.dm_zone* @dmz_alloc_zone(%struct.dmz_metadata*, i32) #1

declare dso_local i64 @dmz_bdev_is_dying(i32) #1

declare dso_local %struct.dm_zone* @ERR_PTR(i32) #1

declare dso_local i32 @dmz_wait_for_free_zones(%struct.dmz_metadata*) #1

declare dso_local i32 @dmz_set_chunk_mapping(%struct.dmz_metadata*, i32, i32, i32) #1

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dmz_unlock_map(%struct.dmz_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
