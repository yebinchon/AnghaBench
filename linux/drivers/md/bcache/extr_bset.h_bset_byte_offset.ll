; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bset_byte_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bset_byte_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree_keys*, %struct.bset*)* @bset_byte_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bset_byte_offset(%struct.btree_keys* %0, %struct.bset* %1) #0 {
  %3 = alloca %struct.btree_keys*, align 8
  %4 = alloca %struct.bset*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %3, align 8
  store %struct.bset* %1, %struct.bset** %4, align 8
  %5 = load %struct.bset*, %struct.bset** %4, align 8
  %6 = ptrtoint %struct.bset* %5 to i64
  %7 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %8 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %6, %11
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
