; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_redistribute3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_redistribute3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.child = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*, %struct.child*, %struct.btree_node*, %struct.btree_node*, %struct.btree_node*, i32, i32, i32)* @redistribute3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redistribute3(%struct.dm_btree_info* %0, %struct.btree_node* %1, %struct.child* %2, %struct.child* %3, %struct.child* %4, %struct.btree_node* %5, %struct.btree_node* %6, %struct.btree_node* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.dm_btree_info*, align 8
  %13 = alloca %struct.btree_node*, align 8
  %14 = alloca %struct.child*, align 8
  %15 = alloca %struct.child*, align 8
  %16 = alloca %struct.child*, align 8
  %17 = alloca %struct.btree_node*, align 8
  %18 = alloca %struct.btree_node*, align 8
  %19 = alloca %struct.btree_node*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %12, align 8
  store %struct.btree_node* %1, %struct.btree_node** %13, align 8
  store %struct.child* %2, %struct.child** %14, align 8
  store %struct.child* %3, %struct.child** %15, align 8
  store %struct.child* %4, %struct.child** %16, align 8
  store %struct.btree_node* %5, %struct.btree_node** %17, align 8
  store %struct.btree_node* %6, %struct.btree_node** %18, align 8
  store %struct.btree_node* %7, %struct.btree_node** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %29 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %30 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @le32_to_cpu(i32 %32)
  store i32 %33, i32* %24, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %21, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* %22, align 4
  %38 = add i32 %36, %37
  store i32 %38, i32* %25, align 4
  %39 = load i32, i32* %25, align 4
  %40 = udiv i32 %39, 3
  store i32 %40, i32* %26, align 4
  %41 = load i32, i32* %26, align 4
  %42 = mul i32 %41, 3
  %43 = load i32, i32* %25, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %27, align 4
  %46 = load i32, i32* %26, align 4
  %47 = load i32, i32* %27, align 4
  %48 = add i32 %46, %47
  store i32 %48, i32* %28, align 4
  %49 = load i32, i32* %28, align 4
  %50 = load i32, i32* %24, align 4
  %51 = icmp ugt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i32, i32* %26, align 4
  %55 = load i32, i32* %24, align 4
  %56 = icmp ugt i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @BUG_ON(i32 %57)
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %11
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %28, align 4
  %65 = sub i32 %63, %64
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %23, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %23, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ult i32 %69, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %75 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %76 = load i32, i32* %21, align 4
  %77 = sub i32 0, %76
  %78 = call i32 @shift(%struct.btree_node* %74, %struct.btree_node* %75, i32 %77)
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %23, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %23, align 4
  %82 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %83 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %84 = load i32, i32* %23, align 4
  %85 = call i32 @shift(%struct.btree_node* %82, %struct.btree_node* %83, i32 %84)
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* %22, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %22, align 4
  br label %94

89:                                               ; preds = %68, %62
  %90 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %91 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %92 = load i32, i32* %23, align 4
  %93 = call i32 @shift(%struct.btree_node* %90, %struct.btree_node* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %73
  %95 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %96 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %97 = load i32, i32* %26, align 4
  %98 = load i32, i32* %22, align 4
  %99 = sub i32 %97, %98
  %100 = call i32 @shift(%struct.btree_node* %95, %struct.btree_node* %96, i32 %99)
  br label %138

101:                                              ; preds = %11
  %102 = load i32, i32* %26, align 4
  %103 = load i32, i32* %22, align 4
  %104 = sub i32 %102, %103
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %23, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %101
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %23, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %113 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %114 = load i32, i32* %21, align 4
  %115 = call i32 @shift(%struct.btree_node* %112, %struct.btree_node* %113, i32 %114)
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %23, align 4
  %118 = sub i32 %117, %116
  store i32 %118, i32* %23, align 4
  %119 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %120 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %121 = load i32, i32* %23, align 4
  %122 = call i32 @shift(%struct.btree_node* %119, %struct.btree_node* %120, i32 %121)
  %123 = load i32, i32* %23, align 4
  %124 = load i32, i32* %20, align 4
  %125 = sub i32 %124, %123
  store i32 %125, i32* %20, align 4
  br label %131

126:                                              ; preds = %107, %101
  %127 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %128 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %129 = load i32, i32* %23, align 4
  %130 = call i32 @shift(%struct.btree_node* %127, %struct.btree_node* %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %111
  %132 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %133 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %134 = load i32, i32* %20, align 4
  %135 = load i32, i32* %28, align 4
  %136 = sub i32 %134, %135
  %137 = call i32 @shift(%struct.btree_node* %132, %struct.btree_node* %133, i32 %136)
  br label %138

138:                                              ; preds = %131, %94
  %139 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %140 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %145 = load %struct.child*, %struct.child** %15, align 8
  %146 = getelementptr inbounds %struct.child, %struct.child* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32* @key_ptr(%struct.btree_node* %144, i32 %147)
  store i32 %143, i32* %148, align 4
  %149 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %150 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %155 = load %struct.child*, %struct.child** %16, align 8
  %156 = getelementptr inbounds %struct.child, %struct.child* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32* @key_ptr(%struct.btree_node* %154, i32 %157)
  store i32 %153, i32* %158, align 4
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @shift(%struct.btree_node*, %struct.btree_node*, i32) #1

declare dso_local i32* @key_ptr(%struct.btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
