; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bch_bkey_to_text.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.h_bch_bkey_to_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { void (i8*, i64, %struct.bkey*)* }
%struct.bkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_keys*, i8*, i64, %struct.bkey*)* @bch_bkey_to_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_bkey_to_text(%struct.btree_keys* %0, i8* %1, i64 %2, %struct.bkey* %3) #0 {
  %5 = alloca %struct.btree_keys*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bkey*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.bkey* %3, %struct.bkey** %8, align 8
  %9 = load %struct.btree_keys*, %struct.btree_keys** %5, align 8
  %10 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load void (i8*, i64, %struct.bkey*)*, void (i8*, i64, %struct.bkey*)** %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.bkey*, %struct.bkey** %8, align 8
  call void %13(i8* %14, i64 %15, %struct.bkey* %16)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
