; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_is_gid_entry_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_is_gid_entry_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_gid_table_entry = type { i64 }

@GID_TABLE_ENTRY_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_gid_table_entry*)* @is_gid_entry_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_gid_entry_valid(%struct.ib_gid_table_entry* %0) #0 {
  %2 = alloca %struct.ib_gid_table_entry*, align 8
  store %struct.ib_gid_table_entry* %0, %struct.ib_gid_table_entry** %2, align 8
  %3 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %2, align 8
  %4 = icmp ne %struct.ib_gid_table_entry* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.ib_gid_table_entry*, %struct.ib_gid_table_entry** %2, align 8
  %7 = getelementptr inbounds %struct.ib_gid_table_entry, %struct.ib_gid_table_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GID_TABLE_ENTRY_VALID, align 8
  %10 = icmp eq i64 %8, %9
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i1 [ false, %1 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
