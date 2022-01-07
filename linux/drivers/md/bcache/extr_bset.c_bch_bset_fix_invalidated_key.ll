; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_fix_invalidated_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_fix_invalidated_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { %struct.bset_tree* }
%struct.bset_tree = type { i32, %struct.bkey, %struct.TYPE_2__* }
%struct.bkey = type { i32 }
%struct.TYPE_2__ = type { %struct.bkey* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bch_bset_fix_invalidated_key(%struct.btree_keys* %0, %struct.bkey* %1) #0 {
  %3 = alloca %struct.btree_keys*, align 8
  %4 = alloca %struct.bkey*, align 8
  %5 = alloca %struct.bset_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btree_keys* %0, %struct.btree_keys** %3, align 8
  store %struct.bkey* %1, %struct.bkey** %4, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %9 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %8, i32 0, i32 0
  %10 = load %struct.bset_tree*, %struct.bset_tree** %9, align 8
  store %struct.bset_tree* %10, %struct.bset_tree** %5, align 8
  br label %11

11:                                               ; preds = %25, %2
  %12 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %13 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %14 = call %struct.bset_tree* @bset_tree_last(%struct.btree_keys* %13)
  %15 = icmp ule %struct.bset_tree* %12, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.bkey*, %struct.bkey** %4, align 8
  %18 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %19 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = call %struct.bkey* @bset_bkey_last(%struct.TYPE_2__* %20)
  %22 = icmp ult %struct.bkey* %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %30

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %27 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %26, i32 1
  store %struct.bset_tree* %27, %struct.bset_tree** %5, align 8
  br label %11

28:                                               ; preds = %11
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %28, %23
  %31 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %32 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.btree_keys*, %struct.btree_keys** %3, align 8
  %37 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %38 = call i32 @bset_written(%struct.btree_keys* %36, %struct.bset_tree* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %30
  br label %135

41:                                               ; preds = %35
  %42 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %43 = load %struct.bkey*, %struct.bkey** %4, align 8
  %44 = call i32 @bkey_to_cacheline(%struct.bset_tree* %42, %struct.bkey* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.bkey*, %struct.bkey** %4, align 8
  %46 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %47 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.bkey*, %struct.bkey** %49, align 8
  %51 = icmp eq %struct.bkey* %45, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %86

53:                                               ; preds = %41
  %54 = load %struct.bkey*, %struct.bkey** %4, align 8
  %55 = call %struct.bkey* @bkey_next(%struct.bkey* %54)
  %56 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %57 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call %struct.bkey* @bset_bkey_last(%struct.TYPE_2__* %58)
  %60 = icmp eq %struct.bkey* %55, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %63 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %62, i32 0, i32 1
  %64 = load %struct.bkey*, %struct.bkey** %4, align 8
  %65 = bitcast %struct.bkey* %63 to i8*
  %66 = bitcast %struct.bkey* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  br label %120

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %70 = call i32 @inorder_to_tree(i32 %68, %struct.bset_tree* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %76 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load %struct.bkey*, %struct.bkey** %4, align 8
  %81 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call %struct.bkey* @tree_to_bkey(%struct.bset_tree* %81, i32 %82)
  %84 = icmp eq %struct.bkey* %80, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %52
  br label %87

87:                                               ; preds = %93, %86
  %88 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @make_bfloat(%struct.bset_tree* %88, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = mul i32 %91, 2
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %96 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %87, label %99

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %99, %79, %73, %67
  %101 = load i32, i32* %6, align 4
  %102 = add i32 %101, 1
  %103 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %104 = call i32 @inorder_to_tree(i32 %102, %struct.bset_tree* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %135

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %110 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ult i32 %108, %111
  br i1 %112, label %113, label %135

113:                                              ; preds = %107
  %114 = load %struct.bkey*, %struct.bkey** %4, align 8
  %115 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call %struct.bkey* @tree_to_prev_bkey(%struct.bset_tree* %115, i32 %116)
  %118 = icmp eq %struct.bkey* %114, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %61
  br label %121

121:                                              ; preds = %128, %120
  %122 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @make_bfloat(%struct.bset_tree* %122, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = mul i32 %125, 2
  %127 = add i32 %126, 1
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %131 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ult i32 %129, %132
  br i1 %133, label %121, label %134

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %40, %134, %113, %107, %100
  ret void
}

declare dso_local %struct.bset_tree* @bset_tree_last(%struct.btree_keys*) #1

declare dso_local %struct.bkey* @bset_bkey_last(%struct.TYPE_2__*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @bset_written(%struct.btree_keys*, %struct.bset_tree*) #1

declare dso_local i32 @bkey_to_cacheline(%struct.bset_tree*, %struct.bkey*) #1

declare dso_local %struct.bkey* @bkey_next(%struct.bkey*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @inorder_to_tree(i32, %struct.bset_tree*) #1

declare dso_local %struct.bkey* @tree_to_bkey(%struct.bset_tree*, i32) #1

declare dso_local i32 @make_bfloat(%struct.bset_tree*, i32) #1

declare dso_local %struct.bkey* @tree_to_prev_bkey(%struct.bset_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
