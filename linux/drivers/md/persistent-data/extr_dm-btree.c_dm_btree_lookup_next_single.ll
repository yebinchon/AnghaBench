; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_lookup_next_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_lookup_next_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dm_block = type { i32 }
%struct.btree_node = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@INTERNAL_NODE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_info*, i32, i32, i32*, i8*)* @dm_btree_lookup_next_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_btree_lookup_next_single(%struct.dm_btree_info* %0, i32 %1, i32 %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_btree_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dm_block*, align 8
  %17 = alloca %struct.btree_node*, align 8
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @bn_read_lock(%struct.dm_btree_info* %18, i32 %19, %struct.dm_block** %16)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %126

25:                                               ; preds = %5
  %26 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %27 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %26)
  store %struct.btree_node* %27, %struct.btree_node** %17, align 8
  %28 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %29 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %34 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @INTERNAL_NODE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %25
  %43 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @lower_bound(%struct.btree_node* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %48, %42
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* @ENODATA, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %119

56:                                               ; preds = %49
  %57 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %58 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @value64(%struct.btree_node* %58, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call i32 @dm_btree_lookup_next_single(%struct.dm_btree_info* %57, i32 %60, i32 %61, i32* %62, i8* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @ENODATA, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %56
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %78 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @value64(%struct.btree_node* %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @dm_btree_lookup_next_single(%struct.dm_btree_info* %77, i32 %80, i32 %81, i32* %82, i8* %83)
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %74, %69, %56
  br label %118

86:                                               ; preds = %25
  %87 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @upper_bound(%struct.btree_node* %87, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %86
  %97 = load i32, i32* @ENODATA, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %119

99:                                               ; preds = %92
  %100 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %101 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le64_to_cpu(i32 %106)
  %108 = load i32*, i32** %10, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @value_ptr(%struct.btree_node* %110, i32 %111)
  %113 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %114 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @memcpy(i8* %109, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %99, %85
  br label %119

119:                                              ; preds = %118, %96, %53
  %120 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %121 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %124 = call i32 @dm_tm_unlock(i32 %122, %struct.dm_block* %123)
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %119, %23
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @bn_read_lock(%struct.dm_btree_info*, i32, %struct.dm_block**) #1

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @lower_bound(%struct.btree_node*, i32) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i32 @upper_bound(%struct.btree_node*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
