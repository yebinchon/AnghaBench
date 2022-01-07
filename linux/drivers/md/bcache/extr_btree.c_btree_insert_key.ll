; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_insert_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_btree_insert_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree = type { i32, i32 }
%struct.bkey = type { i32 }

@BTREE_INSERT_STATUS_NO_INSERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%u for %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"insert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.bkey*, %struct.bkey*)* @btree_insert_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_insert_key(%struct.btree* %0, %struct.bkey* %1, %struct.bkey* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btree*, align 8
  %6 = alloca %struct.bkey*, align 8
  %7 = alloca %struct.bkey*, align 8
  %8 = alloca i32, align 4
  store %struct.btree* %0, %struct.btree** %5, align 8
  store %struct.bkey* %1, %struct.bkey** %6, align 8
  store %struct.bkey* %2, %struct.bkey** %7, align 8
  %9 = load %struct.bkey*, %struct.bkey** %6, align 8
  %10 = load %struct.btree*, %struct.btree** %5, align 8
  %11 = getelementptr inbounds %struct.btree, %struct.btree* %10, i32 0, i32 1
  %12 = call i64 @bkey_cmp(%struct.bkey* %9, i32* %11)
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.btree*, %struct.btree** %5, align 8
  %17 = getelementptr inbounds %struct.btree, %struct.btree* %16, i32 0, i32 0
  %18 = load %struct.bkey*, %struct.bkey** %6, align 8
  %19 = load %struct.bkey*, %struct.bkey** %7, align 8
  %20 = call i32 @bch_btree_insert_key(i32* %17, %struct.bkey* %18, %struct.bkey* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @BTREE_INSERT_STATUS_NO_INSERT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %3
  %25 = load %struct.btree*, %struct.btree** %5, align 8
  %26 = getelementptr inbounds %struct.btree, %struct.btree* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.bkey*, %struct.bkey** %7, align 8
  %29 = icmp ne %struct.bkey* %28, null
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %32 = call i32 @bch_check_keys(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %31)
  %33 = load %struct.btree*, %struct.btree** %5, align 8
  %34 = load %struct.bkey*, %struct.bkey** %6, align 8
  %35 = load %struct.bkey*, %struct.bkey** %7, align 8
  %36 = icmp ne %struct.bkey* %35, null
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @trace_bcache_btree_insert_key(%struct.btree* %33, %struct.bkey* %34, i32 %37, i32 %38)
  store i32 1, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bkey_cmp(%struct.bkey*, i32*) #1

declare dso_local i32 @bch_btree_insert_key(i32*, %struct.bkey*, %struct.bkey*) #1

declare dso_local i32 @bch_check_keys(i32*, i8*, i32, i8*) #1

declare dso_local i32 @trace_bcache_btree_insert_key(%struct.btree*, %struct.bkey*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
