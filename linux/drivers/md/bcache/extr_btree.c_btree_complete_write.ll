; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_complete_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_complete_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.btree_write = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree*, %struct.btree_write*)* @btree_complete_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_complete_write(%struct.btree* %0, %struct.btree_write* %1) #0 {
  %3 = alloca %struct.btree*, align 8
  %4 = alloca %struct.btree_write*, align 8
  store %struct.btree* %0, %struct.btree** %3, align 8
  store %struct.btree_write* %1, %struct.btree_write** %4, align 8
  %5 = load %struct.btree_write*, %struct.btree_write** %4, align 8
  %6 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load %struct.btree_write*, %struct.btree_write** %4, align 8
  %11 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.btree*, %struct.btree** %3, align 8
  %14 = getelementptr inbounds %struct.btree, %struct.btree* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @atomic_sub_return(i64 %12, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %9
  %20 = load %struct.btree*, %struct.btree** %3, align 8
  %21 = getelementptr inbounds %struct.btree, %struct.btree* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @wake_up_allocators(%struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %19, %9, %2
  %25 = load %struct.btree_write*, %struct.btree_write** %4, align 8
  %26 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.btree_write*, %struct.btree_write** %4, align 8
  %31 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @atomic_dec_bug(i32* %32)
  %34 = load %struct.btree*, %struct.btree** %3, align 8
  %35 = getelementptr inbounds %struct.btree, %struct.btree* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @__closure_wake_up(i32* %38)
  br label %40

40:                                               ; preds = %29, %24
  %41 = load %struct.btree_write*, %struct.btree_write** %4, align 8
  %42 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.btree_write*, %struct.btree_write** %4, align 8
  %44 = getelementptr inbounds %struct.btree_write, %struct.btree_write* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @atomic_sub_return(i64, i32*) #1

declare dso_local i32 @wake_up_allocators(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_dec_bug(i32*) #1

declare dso_local i32 @__closure_wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
