; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_node_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_btree.c_bch_btree_node_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.cache_set = type { i32 }
%struct.btree_op = type { i32 }
%struct.bkey = type { i32 }
%struct.btree = type { i32, i32, %struct.TYPE_5__, %struct.btree*, i32, %struct.bkey, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btree* @bch_btree_node_get(%struct.cache_set* %0, %struct.btree_op* %1, %struct.bkey* %2, i32 %3, i32 %4, %struct.btree* %5) #0 {
  %7 = alloca %struct.btree*, align 8
  %8 = alloca %struct.cache_set*, align 8
  %9 = alloca %struct.btree_op*, align 8
  %10 = alloca %struct.bkey*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.btree*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.btree*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %8, align 8
  store %struct.btree_op* %1, %struct.btree_op** %9, align 8
  store %struct.bkey* %2, %struct.bkey** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.btree* %5, %struct.btree** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  br label %20

20:                                               ; preds = %79, %49, %6
  %21 = load %struct.cache_set*, %struct.cache_set** %8, align 8
  %22 = load %struct.bkey*, %struct.bkey** %10, align 8
  %23 = call %struct.btree* @mca_find(%struct.cache_set* %21, %struct.bkey* %22)
  store %struct.btree* %23, %struct.btree** %15, align 8
  %24 = load %struct.btree*, %struct.btree** %15, align 8
  %25 = icmp ne %struct.btree* %24, null
  br i1 %25, label %66, label %26

26:                                               ; preds = %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.btree* @ERR_PTR(i32 %33)
  store %struct.btree* %34, %struct.btree** %7, align 8
  br label %183

35:                                               ; preds = %26
  %36 = load %struct.cache_set*, %struct.cache_set** %8, align 8
  %37 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.cache_set*, %struct.cache_set** %8, align 8
  %40 = load %struct.btree_op*, %struct.btree_op** %9, align 8
  %41 = load %struct.bkey*, %struct.bkey** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.btree* @mca_alloc(%struct.cache_set* %39, %struct.btree_op* %40, %struct.bkey* %41, i32 %42)
  store %struct.btree* %43, %struct.btree** %15, align 8
  %44 = load %struct.cache_set*, %struct.cache_set** %8, align 8
  %45 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.btree*, %struct.btree** %15, align 8
  %48 = icmp ne %struct.btree* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %20

50:                                               ; preds = %35
  %51 = load %struct.btree*, %struct.btree** %15, align 8
  %52 = call i64 @IS_ERR(%struct.btree* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load %struct.btree*, %struct.btree** %15, align 8
  store %struct.btree* %55, %struct.btree** %7, align 8
  br label %183

56:                                               ; preds = %50
  %57 = load %struct.btree*, %struct.btree** %15, align 8
  %58 = call i32 @bch_btree_node_read(%struct.btree* %57)
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.btree*, %struct.btree** %15, align 8
  %63 = getelementptr inbounds %struct.btree, %struct.btree* %62, i32 0, i32 6
  %64 = call i32 @downgrade_write(i32* %63)
  br label %65

65:                                               ; preds = %61, %56
  br label %91

66:                                               ; preds = %20
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.btree*, %struct.btree** %15, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @rw_lock(i32 %67, %struct.btree* %68, i32 %69)
  %71 = load %struct.cache_set*, %struct.cache_set** %8, align 8
  %72 = load %struct.btree*, %struct.btree** %15, align 8
  %73 = getelementptr inbounds %struct.btree, %struct.btree* %72, i32 0, i32 5
  %74 = call i64 @PTR_HASH(%struct.cache_set* %71, %struct.bkey* %73)
  %75 = load %struct.cache_set*, %struct.cache_set** %8, align 8
  %76 = load %struct.bkey*, %struct.bkey** %10, align 8
  %77 = call i64 @PTR_HASH(%struct.cache_set* %75, %struct.bkey* %76)
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %66
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.btree*, %struct.btree** %15, align 8
  %82 = call i32 @rw_unlock(i32 %80, %struct.btree* %81)
  br label %20

83:                                               ; preds = %66
  %84 = load %struct.btree*, %struct.btree** %15, align 8
  %85 = getelementptr inbounds %struct.btree, %struct.btree* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUG_ON(i32 %89)
  br label %91

91:                                               ; preds = %83, %65
  %92 = load %struct.btree*, %struct.btree** %15, align 8
  %93 = call i64 @btree_node_io_error(%struct.btree* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.btree*, %struct.btree** %15, align 8
  %98 = call i32 @rw_unlock(i32 %96, %struct.btree* %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  %101 = call %struct.btree* @ERR_PTR(i32 %100)
  store %struct.btree* %101, %struct.btree** %7, align 8
  br label %183

102:                                              ; preds = %91
  %103 = load %struct.btree*, %struct.btree** %15, align 8
  %104 = getelementptr inbounds %struct.btree, %struct.btree* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @BUG_ON(i32 %108)
  %110 = load %struct.btree*, %struct.btree** %13, align 8
  %111 = load %struct.btree*, %struct.btree** %15, align 8
  %112 = getelementptr inbounds %struct.btree, %struct.btree* %111, i32 0, i32 3
  store %struct.btree* %110, %struct.btree** %112, align 8
  %113 = load %struct.btree*, %struct.btree** %15, align 8
  %114 = getelementptr inbounds %struct.btree, %struct.btree* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %156, %102
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.btree*, %struct.btree** %15, align 8
  %118 = getelementptr inbounds %struct.btree, %struct.btree* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp sle i32 %116, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %115
  %123 = load %struct.btree*, %struct.btree** %15, align 8
  %124 = getelementptr inbounds %struct.btree, %struct.btree* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %122, %115
  %134 = phi i1 [ false, %115 ], [ %132, %122 ]
  br i1 %134, label %135, label %159

135:                                              ; preds = %133
  %136 = load %struct.btree*, %struct.btree** %15, align 8
  %137 = getelementptr inbounds %struct.btree, %struct.btree* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @prefetch(i32 %144)
  %146 = load %struct.btree*, %struct.btree** %15, align 8
  %147 = getelementptr inbounds %struct.btree, %struct.btree* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @prefetch(i32 %154)
  br label %156

156:                                              ; preds = %135
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %115

159:                                              ; preds = %133
  br label %160

160:                                              ; preds = %178, %159
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.btree*, %struct.btree** %15, align 8
  %163 = getelementptr inbounds %struct.btree, %struct.btree* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp sle i32 %161, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %160
  %168 = load %struct.btree*, %struct.btree** %15, align 8
  %169 = getelementptr inbounds %struct.btree, %struct.btree* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @prefetch(i32 %176)
  br label %178

178:                                              ; preds = %167
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %160

181:                                              ; preds = %160
  %182 = load %struct.btree*, %struct.btree** %15, align 8
  store %struct.btree* %182, %struct.btree** %7, align 8
  br label %183

183:                                              ; preds = %181, %95, %54, %31
  %184 = load %struct.btree*, %struct.btree** %7, align 8
  ret %struct.btree* %184
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.btree* @mca_find(%struct.cache_set*, %struct.bkey*) #1

declare dso_local %struct.btree* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.btree* @mca_alloc(%struct.cache_set*, %struct.btree_op*, %struct.bkey*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.btree*) #1

declare dso_local i32 @bch_btree_node_read(%struct.btree*) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local i32 @rw_lock(i32, %struct.btree*, i32) #1

declare dso_local i64 @PTR_HASH(%struct.cache_set*, %struct.bkey*) #1

declare dso_local i32 @rw_unlock(i32, %struct.btree*) #1

declare dso_local i64 @btree_node_io_error(%struct.btree*) #1

declare dso_local i32 @prefetch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
