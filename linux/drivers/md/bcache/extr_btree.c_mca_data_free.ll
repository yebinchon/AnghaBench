; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_data_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_mca_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree*)* @mca_data_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_data_free(%struct.btree* %0) #0 {
  %2 = alloca %struct.btree*, align 8
  store %struct.btree* %0, %struct.btree** %2, align 8
  %3 = load %struct.btree*, %struct.btree** %2, align 8
  %4 = getelementptr inbounds %struct.btree, %struct.btree* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 1
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.btree*, %struct.btree** %2, align 8
  %11 = getelementptr inbounds %struct.btree, %struct.btree* %10, i32 0, i32 2
  %12 = call i32 @bch_btree_keys_free(i32* %11)
  %13 = load %struct.btree*, %struct.btree** %2, align 8
  %14 = getelementptr inbounds %struct.btree, %struct.btree* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.btree*, %struct.btree** %2, align 8
  %20 = getelementptr inbounds %struct.btree, %struct.btree* %19, i32 0, i32 1
  %21 = load %struct.btree*, %struct.btree** %2, align 8
  %22 = getelementptr inbounds %struct.btree, %struct.btree* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @list_move(i32* %20, i32* %24)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bch_btree_keys_free(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
