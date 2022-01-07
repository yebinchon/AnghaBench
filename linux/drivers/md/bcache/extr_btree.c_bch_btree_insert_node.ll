; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_insert_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.btree = type { %struct.TYPE_7__*, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.btree_op = type { i64 }
%struct.keylist = type { i32 }
%struct.bkey = type { i32 }
%struct.closure = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btree*, %struct.btree_op*, %struct.keylist*, i32*, %struct.bkey*)* @bch_btree_insert_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bch_btree_insert_node(%struct.btree* %0, %struct.btree_op* %1, %struct.keylist* %2, i32* %3, %struct.bkey* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btree*, align 8
  %8 = alloca %struct.btree_op*, align 8
  %9 = alloca %struct.keylist*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bkey*, align 8
  %12 = alloca %struct.closure, align 4
  %13 = alloca i32, align 4
  store %struct.btree* %0, %struct.btree** %7, align 8
  store %struct.btree_op* %1, %struct.btree_op** %8, align 8
  store %struct.keylist* %2, %struct.keylist** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.bkey* %4, %struct.bkey** %11, align 8
  %14 = load %struct.btree*, %struct.btree** %7, align 8
  %15 = getelementptr inbounds %struct.btree, %struct.btree* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load %struct.bkey*, %struct.bkey** %11, align 8
  %20 = icmp ne %struct.bkey* %19, null
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ false, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = call i32 @closure_init_stack(%struct.closure* %12)
  %26 = load %struct.btree*, %struct.btree** %7, align 8
  %27 = getelementptr inbounds %struct.btree, %struct.btree* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.btree*, %struct.btree** %7, align 8
  %30 = call i64 @write_block(%struct.btree* %29)
  %31 = load %struct.btree*, %struct.btree** %7, align 8
  %32 = call i64 @btree_bset_last(%struct.btree* %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %21
  %35 = load %struct.btree*, %struct.btree** %7, align 8
  %36 = getelementptr inbounds %struct.btree, %struct.btree* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.btree*, %struct.btree** %7, align 8
  %42 = call i32 @bch_btree_init_next(%struct.btree* %41)
  br label %43

43:                                               ; preds = %40, %34, %21
  %44 = load %struct.keylist*, %struct.keylist** %9, align 8
  %45 = call i64 @bch_keylist_nkeys(%struct.keylist* %44)
  %46 = load %struct.btree*, %struct.btree** %7, align 8
  %47 = call i64 @insert_u64s_remaining(%struct.btree* %46)
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.btree*, %struct.btree** %7, align 8
  %51 = getelementptr inbounds %struct.btree, %struct.btree* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  br label %85

53:                                               ; preds = %43
  %54 = load %struct.btree*, %struct.btree** %7, align 8
  %55 = call i64 @write_block(%struct.btree* %54)
  %56 = load %struct.btree*, %struct.btree** %7, align 8
  %57 = call i64 @btree_bset_last(%struct.btree* %56)
  %58 = icmp ne i64 %55, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.btree*, %struct.btree** %7, align 8
  %62 = load %struct.btree_op*, %struct.btree_op** %8, align 8
  %63 = load %struct.keylist*, %struct.keylist** %9, align 8
  %64 = load %struct.bkey*, %struct.bkey** %11, align 8
  %65 = call i64 @bch_btree_insert_keys(%struct.btree* %61, %struct.btree_op* %62, %struct.keylist* %63, %struct.bkey* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %53
  %68 = load %struct.btree*, %struct.btree** %7, align 8
  %69 = getelementptr inbounds %struct.btree, %struct.btree* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load %struct.btree*, %struct.btree** %7, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @bch_btree_leaf_dirty(%struct.btree* %73, i32* %74)
  br label %79

76:                                               ; preds = %67
  %77 = load %struct.btree*, %struct.btree** %7, align 8
  %78 = call i32 @bch_btree_node_write(%struct.btree* %77, %struct.closure* %12)
  br label %79

79:                                               ; preds = %76, %72
  br label %80

80:                                               ; preds = %79, %53
  %81 = load %struct.btree*, %struct.btree** %7, align 8
  %82 = getelementptr inbounds %struct.btree, %struct.btree* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = call i32 @closure_sync(%struct.closure* %12)
  store i32 0, i32* %6, align 4
  br label %147

85:                                               ; preds = %49
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.btree*, %struct.btree** %7, align 8
  %92 = getelementptr inbounds %struct.btree, %struct.btree* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = load %struct.btree_op*, %struct.btree_op** %8, align 8
  %100 = getelementptr inbounds %struct.btree_op, %struct.btree_op* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @EAGAIN, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %6, align 4
  br label %147

103:                                              ; preds = %85
  %104 = load %struct.btree_op*, %struct.btree_op** %8, align 8
  %105 = getelementptr inbounds %struct.btree_op, %struct.btree_op* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.btree*, %struct.btree** %7, align 8
  %108 = getelementptr inbounds %struct.btree, %struct.btree* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sle i64 %106, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %103
  %116 = load %struct.btree*, %struct.btree** %7, align 8
  %117 = getelementptr inbounds %struct.btree, %struct.btree* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  %124 = load %struct.btree_op*, %struct.btree_op** %8, align 8
  %125 = getelementptr inbounds %struct.btree_op, %struct.btree_op* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* @EINTR, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %147

128:                                              ; preds = %103
  %129 = load %struct.btree*, %struct.btree** %7, align 8
  %130 = load %struct.btree_op*, %struct.btree_op** %8, align 8
  %131 = load %struct.keylist*, %struct.keylist** %9, align 8
  %132 = load %struct.bkey*, %struct.bkey** %11, align 8
  %133 = call i32 @btree_split(%struct.btree* %129, %struct.btree_op* %130, %struct.keylist* %131, %struct.bkey* %132)
  store i32 %133, i32* %13, align 4
  %134 = load %struct.keylist*, %struct.keylist** %9, align 8
  %135 = call i64 @bch_keylist_empty(%struct.keylist* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %147

138:                                              ; preds = %128
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @EINTR, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %6, align 4
  br label %147

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %13, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %141, %137, %115, %90, %80
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @closure_init_stack(%struct.closure*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @write_block(%struct.btree*) #1

declare dso_local i64 @btree_bset_last(%struct.btree*) #1

declare dso_local i32 @bch_btree_init_next(%struct.btree*) #1

declare dso_local i64 @bch_keylist_nkeys(%struct.keylist*) #1

declare dso_local i64 @insert_u64s_remaining(%struct.btree*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @bch_btree_insert_keys(%struct.btree*, %struct.btree_op*, %struct.keylist*, %struct.bkey*) #1

declare dso_local i32 @bch_btree_leaf_dirty(%struct.btree*, i32*) #1

declare dso_local i32 @bch_btree_node_write(%struct.btree*, %struct.closure*) #1

declare dso_local i32 @closure_sync(%struct.closure*) #1

declare dso_local i32 @btree_split(%struct.btree*, %struct.btree_op*, %struct.keylist*, %struct.bkey*) #1

declare dso_local i64 @bch_keylist_empty(%struct.keylist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
