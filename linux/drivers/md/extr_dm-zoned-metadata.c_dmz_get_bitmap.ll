; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_get_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_mblock = type { i32 }
%struct.dmz_metadata = type { i32, i32 }
%struct.dm_zone = type { i32 }

@DMZ_BLOCK_SHIFT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dmz_mblock* (%struct.dmz_metadata*, %struct.dm_zone*, i32)* @dmz_get_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dmz_mblock* @dmz_get_bitmap(%struct.dmz_metadata* %0, %struct.dm_zone* %1, i32 %2) #0 {
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca %struct.dm_zone*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store %struct.dm_zone* %1, %struct.dm_zone** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %9 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 1, %10
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %13 = load %struct.dm_zone*, %struct.dm_zone** %5, align 8
  %14 = call i32 @dmz_id(%struct.dmz_metadata* %12, %struct.dm_zone* %13)
  %15 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %16 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = add nsw i32 %11, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @DMZ_BLOCK_SHIFT_BITS, align 4
  %22 = ashr i32 %20, %21
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.dmz_mblock* @dmz_get_mblock(%struct.dmz_metadata* %24, i32 %25)
  ret %struct.dmz_mblock* %26
}

declare dso_local i32 @dmz_id(%struct.dmz_metadata*, %struct.dm_zone*) #1

declare dso_local %struct.dmz_mblock* @dmz_get_mblock(%struct.dmz_metadata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
