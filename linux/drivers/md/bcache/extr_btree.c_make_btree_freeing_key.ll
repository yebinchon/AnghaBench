; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_make_btree_freeing_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_make_btree_freeing_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bkey = type { i32 }

@ZERO_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree*, %struct.bkey*)* @make_btree_freeing_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_btree_freeing_key(%struct.btree* %0, %struct.bkey* %1) #0 {
  %3 = alloca %struct.btree*, align 8
  %4 = alloca %struct.bkey*, align 8
  %5 = alloca i32, align 4
  store %struct.btree* %0, %struct.btree** %3, align 8
  store %struct.bkey* %1, %struct.bkey** %4, align 8
  %6 = load %struct.btree*, %struct.btree** %3, align 8
  %7 = getelementptr inbounds %struct.btree, %struct.btree* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.btree*, %struct.btree** %3, align 8
  %12 = getelementptr inbounds %struct.btree, %struct.btree* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.bkey*, %struct.bkey** %4, align 8
  %17 = load %struct.btree*, %struct.btree** %3, align 8
  %18 = getelementptr inbounds %struct.btree, %struct.btree* %17, i32 0, i32 1
  %19 = call i32 @bkey_copy(%struct.bkey* %16, i32* %18)
  %20 = load %struct.bkey*, %struct.bkey** %4, align 8
  %21 = call i32 @bkey_copy_key(%struct.bkey* %20, i32* @ZERO_KEY)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %46, %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.bkey*, %struct.bkey** %4, align 8
  %25 = call i32 @KEY_PTRS(%struct.bkey* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %22
  %28 = load %struct.bkey*, %struct.bkey** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.btree*, %struct.btree** %3, align 8
  %31 = getelementptr inbounds %struct.btree, %struct.btree* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.btree*, %struct.btree** %3, align 8
  %34 = getelementptr inbounds %struct.btree, %struct.btree* %33, i32 0, i32 1
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @PTR_CACHE(%struct.TYPE_3__* %32, i32* %34, i32 %35)
  %37 = load %struct.btree*, %struct.btree** %3, align 8
  %38 = getelementptr inbounds %struct.btree, %struct.btree* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.btree*, %struct.btree** %3, align 8
  %41 = getelementptr inbounds %struct.btree, %struct.btree* %40, i32 0, i32 1
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @PTR_BUCKET(%struct.TYPE_3__* %39, i32* %41, i32 %42)
  %44 = call i32 @bch_inc_gen(i32 %36, i32 %43)
  %45 = call i32 @SET_PTR_GEN(%struct.bkey* %28, i32 %29, i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %22

49:                                               ; preds = %22
  %50 = load %struct.btree*, %struct.btree** %3, align 8
  %51 = getelementptr inbounds %struct.btree, %struct.btree* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @bkey_copy(%struct.bkey*, i32*) #1

declare dso_local i32 @bkey_copy_key(%struct.bkey*, i32*) #1

declare dso_local i32 @KEY_PTRS(%struct.bkey*) #1

declare dso_local i32 @SET_PTR_GEN(%struct.bkey*, i32, i32) #1

declare dso_local i32 @bch_inc_gen(i32, i32) #1

declare dso_local i32 @PTR_CACHE(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @PTR_BUCKET(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
