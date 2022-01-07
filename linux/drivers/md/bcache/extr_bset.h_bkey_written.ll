; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bkey_written.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bkey_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bkey* }
%struct.bkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree_keys*, %struct.bkey*)* @bkey_written to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bkey_written(%struct.btree_keys* %0, %struct.bkey* %1) #0 {
  %3 = alloca %struct.btree_keys*, align 8
  %4 = alloca %struct.bkey*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %3, align 8
  store %struct.bkey* %1, %struct.bkey** %4, align 8
  %5 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %6 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.bkey*, %struct.bkey** %4, align 8
  %11 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %12 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %15 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.bkey*, %struct.bkey** %20, align 8
  %22 = icmp ult %struct.bkey* %10, %21
  br label %23

23:                                               ; preds = %9, %2
  %24 = phi i1 [ true, %2 ], [ %22, %9 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
