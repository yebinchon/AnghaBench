; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_log_dirty_mblocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_log_dirty_mblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, %struct.list_head*)* @dmz_log_dirty_mblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_log_dirty_mblocks(%struct.dmz_metadata* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmz_metadata*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %8 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %9 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %13 = load %struct.list_head*, %struct.list_head** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dmz_write_dirty_mblocks(%struct.dmz_metadata* %12, %struct.list_head* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.dmz_metadata*, %struct.dmz_metadata** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dmz_write_sb(%struct.dmz_metadata* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %26, %18
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @dmz_write_dirty_mblocks(%struct.dmz_metadata*, %struct.list_head*, i32) #1

declare dso_local i32 @dmz_write_sb(%struct.dmz_metadata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
