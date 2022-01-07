; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_get_hash_table_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_get_hash_table_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table_bucket = type { i32 }
%struct.clone = type { %struct.hash_table_bucket* }

@HASH_TABLE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hash_table_bucket* (%struct.clone*, i64)* @get_hash_table_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_table_bucket* @get_hash_table_bucket(%struct.clone* %0, i64 %1) #0 {
  %3 = alloca %struct.clone*, align 8
  %4 = alloca i64, align 8
  store %struct.clone* %0, %struct.clone** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.clone*, %struct.clone** %3, align 8
  %6 = getelementptr inbounds %struct.clone, %struct.clone* %5, i32 0, i32 0
  %7 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @HASH_TABLE_BITS, align 4
  %10 = call i64 @hash_long(i64 %8, i32 %9)
  %11 = getelementptr inbounds %struct.hash_table_bucket, %struct.hash_table_bucket* %7, i64 %10
  ret %struct.hash_table_bucket* %11
}

declare dso_local i64 @hash_long(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
