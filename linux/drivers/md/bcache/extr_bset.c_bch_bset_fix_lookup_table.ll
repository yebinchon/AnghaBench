; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_fix_lookup_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_bset.c_bch_bset_fix_lookup_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_keys = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bset_tree = type { i32, i32*, i32, i32 }
%struct.bkey = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_keys*, %struct.bset_tree*, %struct.bkey*)* @bch_bset_fix_lookup_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_bset_fix_lookup_table(%struct.btree_keys* %0, %struct.bset_tree* %1, %struct.bkey* %2) #0 {
  %4 = alloca %struct.btree_keys*, align 8
  %5 = alloca %struct.bset_tree*, align 8
  %6 = alloca %struct.bkey*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btree_keys* %0, %struct.btree_keys** %4, align 8
  store %struct.bset_tree* %1, %struct.bset_tree** %5, align 8
  store %struct.bkey* %2, %struct.bkey** %6, align 8
  %9 = load %struct.bkey*, %struct.bkey** %6, align 8
  %10 = call i32 @bkey_u64s(%struct.bkey* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %12 = load %struct.bkey*, %struct.bkey** %6, align 8
  %13 = call i32 @bkey_to_cacheline(%struct.bset_tree* %11, %struct.bkey* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %15 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %156

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %23 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.bkey* @table_to_bkey(%struct.bset_tree* %27, i32 %28)
  %30 = load %struct.bkey*, %struct.bkey** %6, align 8
  %31 = icmp ule %struct.bkey* %29, %30
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ false, %20 ], [ %31, %26 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %20

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %89, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %41 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %47 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %52, %45
  store i32 %53, i32* %51, align 4
  %54 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %55 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ugt i32 %60, 7
  br i1 %61, label %62, label %88

62:                                               ; preds = %44
  %63 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sub i32 %64, 1
  %66 = call %struct.bkey* @table_to_bkey(%struct.bset_tree* %63, i32 %65)
  store %struct.bkey* %66, %struct.bkey** %6, align 8
  br label %67

67:                                               ; preds = %73, %62
  %68 = load %struct.bkey*, %struct.bkey** %6, align 8
  %69 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call %struct.bkey* @cacheline_to_bkey(%struct.bset_tree* %69, i32 %70, i32 0)
  %72 = icmp ult %struct.bkey* %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.bkey*, %struct.bkey** %6, align 8
  %75 = call %struct.bkey* @bkey_next(%struct.bkey* %74)
  store %struct.bkey* %75, %struct.bkey** %6, align 8
  br label %67

76:                                               ; preds = %67
  %77 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.bkey*, %struct.bkey** %6, align 8
  %80 = call i8* @bkey_to_cacheline_offset(%struct.bset_tree* %77, i32 %78, %struct.bkey* %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %83 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %76, %44
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %38

92:                                               ; preds = %38
  %93 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %94 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %97 = getelementptr inbounds %struct.btree_keys, %struct.btree_keys* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.btree_keys*, %struct.btree_keys** %4, align 8
  %102 = call i32 @btree_keys_cachelines(%struct.btree_keys* %101)
  %103 = add i32 %100, %102
  %104 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %105 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sub i32 %103, %106
  %108 = icmp eq i32 %95, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  br label %156

110:                                              ; preds = %92
  %111 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %112 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %113 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub i32 %114, 1
  %116 = call %struct.bkey* @table_to_bkey(%struct.bset_tree* %111, i32 %115)
  store %struct.bkey* %116, %struct.bkey** %6, align 8
  br label %117

117:                                              ; preds = %153, %110
  %118 = load %struct.bkey*, %struct.bkey** %6, align 8
  %119 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %120 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.bkey* @bset_bkey_last(i32 %121)
  %123 = icmp ne %struct.bkey* %118, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %117
  %125 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %126 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %129 = load %struct.bkey*, %struct.bkey** %6, align 8
  %130 = call i32 @bkey_to_cacheline(%struct.bset_tree* %128, %struct.bkey* %129)
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %152

132:                                              ; preds = %124
  %133 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %134 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %135 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.bkey*, %struct.bkey** %6, align 8
  %138 = call i8* @bkey_to_cacheline_offset(%struct.bset_tree* %133, i32 %136, %struct.bkey* %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %141 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %144 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  store i32 %139, i32* %147, align 4
  %148 = load %struct.bset_tree*, %struct.bset_tree** %5, align 8
  %149 = getelementptr inbounds %struct.bset_tree, %struct.bset_tree* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add i32 %150, 1
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %132, %124
  br label %153

153:                                              ; preds = %152
  %154 = load %struct.bkey*, %struct.bkey** %6, align 8
  %155 = call %struct.bkey* @bkey_next(%struct.bkey* %154)
  store %struct.bkey* %155, %struct.bkey** %6, align 8
  br label %117

156:                                              ; preds = %18, %109, %117
  ret void
}

declare dso_local i32 @bkey_u64s(%struct.bkey*) #1

declare dso_local i32 @bkey_to_cacheline(%struct.bset_tree*, %struct.bkey*) #1

declare dso_local %struct.bkey* @table_to_bkey(%struct.bset_tree*, i32) #1

declare dso_local %struct.bkey* @cacheline_to_bkey(%struct.bset_tree*, i32, i32) #1

declare dso_local %struct.bkey* @bkey_next(%struct.bkey*) #1

declare dso_local i8* @bkey_to_cacheline_offset(%struct.bset_tree*, i32, %struct.bkey*) #1

declare dso_local i32 @btree_keys_cachelines(%struct.btree_keys*) #1

declare dso_local %struct.bkey* @bset_bkey_last(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
