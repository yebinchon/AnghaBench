; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_insert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { i32, i32 }
%struct.bkey = type { i32 }
%struct.bset_tree = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_bset_insert(%struct.btree_keys* %0, %struct.bkey* %1, %struct.bkey* %2) #0 {
  %4 = alloca %struct.btree_keys*, align 8
  %5 = alloca %struct.bkey*, align 8
  %6 = alloca %struct.bkey*, align 8
  %7 = alloca %struct.bset_tree*, align 8
  store %struct.btree_keys* %0, %struct.btree_keys** %4, align 8
  store %struct.bkey* %1, %struct.bkey** %5, align 8
  store %struct.bkey* %2, %struct.bkey** %6, align 8
  %8 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %9 = call %struct.bset_tree* @bset_tree_last(%struct.btree_keys* %8)
  store %struct.bset_tree* %9, %struct.bset_tree** %7, align 8
  %10 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %11 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %18 = load %struct.bset_tree*, %struct.bset_tree** %7, align 8
  %19 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i64 @bset_byte_offset(%struct.btree_keys* %17, %struct.TYPE_4__* %20)
  %22 = load %struct.bset_tree*, %struct.bset_tree** %7, align 8
  %23 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.bset_tree*, %struct.bset_tree** %7, align 8
  %26 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bkey*, %struct.bkey** %6, align 8
  %31 = call i32 @bkey_u64s(%struct.bkey* %30)
  %32 = add nsw i32 %29, %31
  %33 = call i64 @__set_bytes(%struct.TYPE_4__* %24, i32 %32)
  %34 = add nsw i64 %21, %33
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %37 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = shl i64 %35, %39
  %41 = icmp sgt i64 %34, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.bkey*, %struct.bkey** %5, align 8
  %45 = bitcast %struct.bkey* %44 to i32*
  %46 = load %struct.bkey*, %struct.bkey** %6, align 8
  %47 = call i32 @bkey_u64s(%struct.bkey* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load %struct.bkey*, %struct.bkey** %5, align 8
  %51 = load %struct.bset_tree*, %struct.bset_tree** %7, align 8
  %52 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i64 @bset_bkey_last(%struct.TYPE_4__* %53)
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.bkey*, %struct.bkey** %5, align 8
  %57 = bitcast %struct.bkey* %56 to i8*
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @memmove(i32* %49, %struct.bkey* %50, i32 %61)
  %63 = load %struct.bkey*, %struct.bkey** %6, align 8
  %64 = call i32 @bkey_u64s(%struct.bkey* %63)
  %65 = load %struct.bset_tree*, %struct.bset_tree** %7, align 8
  %66 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = load %struct.bkey*, %struct.bkey** %5, align 8
  %72 = load %struct.bkey*, %struct.bkey** %6, align 8
  %73 = call i32 @bkey_copy(%struct.bkey* %71, %struct.bkey* %72)
  %74 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %75 = load %struct.bset_tree*, %struct.bset_tree** %7, align 8
  %76 = load %struct.bkey*, %struct.bkey** %5, align 8
  %77 = call i32 @bch_bset_fix_lookup_table(%struct.btree_keys* %74, %struct.bset_tree* %75, %struct.bkey* %76)
  ret void
}

declare dso_local %struct.bset_tree* @bset_tree_last(%struct.btree_keys*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @bset_byte_offset(%struct.btree_keys*, %struct.TYPE_4__*) #1

declare dso_local i64 @__set_bytes(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @bkey_u64s(%struct.bkey*) #1

declare dso_local i32 @memmove(i32*, %struct.bkey*, i32) #1

declare dso_local i64 @bset_bkey_last(%struct.TYPE_4__*) #1

declare dso_local i32 @bkey_copy(%struct.bkey*, %struct.bkey*) #1

declare dso_local i32 @bch_bset_fix_lookup_table(%struct.btree_keys*, %struct.bset_tree*, %struct.bkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
