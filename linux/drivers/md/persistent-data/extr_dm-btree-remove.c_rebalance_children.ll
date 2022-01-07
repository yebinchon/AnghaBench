; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_rebalance_children.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree-remove.c_rebalance_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32 }
%struct.dm_btree_info = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dm_block = type { i32 }

@btree_node_validator = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32)* @rebalance_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebalance_children(%struct.shadow_spine* %0, %struct.dm_btree_info* %1, %struct.dm_btree_value_type* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shadow_spine*, align 8
  %7 = alloca %struct.dm_btree_info*, align 8
  %8 = alloca %struct.dm_btree_value_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.btree_node*, align 8
  %15 = alloca %struct.dm_block*, align 8
  %16 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %6, align 8
  store %struct.dm_btree_info* %1, %struct.dm_btree_info** %7, align 8
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %18 = call %struct.dm_block* @shadow_current(%struct.shadow_spine* %17)
  %19 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %18)
  store %struct.btree_node* %19, %struct.btree_node** %14, align 8
  %20 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %21 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %59

26:                                               ; preds = %4
  %27 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %28 = call i32 @value64(%struct.btree_node* %27, i32 0)
  store i32 %28, i32* %16, align 4
  %29 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %30 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @dm_tm_read_lock(i32 %31, i32 %32, i32* @btree_node_validator, %struct.dm_block** %15)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %109

38:                                               ; preds = %26
  %39 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %40 = load %struct.dm_block*, %struct.dm_block** %15, align 8
  %41 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %40)
  %42 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %43 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dm_tm_get_bm(i32 %44)
  %46 = call i32 @dm_bm_block_size(i32 %45)
  %47 = call i32 @memcpy(%struct.btree_node* %39, %struct.btree_node* %41, i32 %46)
  %48 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %49 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dm_block*, %struct.dm_block** %15, align 8
  %52 = call i32 @dm_tm_unlock(i32 %50, %struct.dm_block* %51)
  %53 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %54 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dm_block*, %struct.dm_block** %15, align 8
  %57 = call i32 @dm_block_location(%struct.dm_block* %56)
  %58 = call i32 @dm_tm_dec(i32 %55, i32 %57)
  store i32 0, i32* %5, align 4
  br label %109

59:                                               ; preds = %4
  %60 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @lower_bound(%struct.btree_node* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @ENODATA, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %109

68:                                               ; preds = %59
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.btree_node*, %struct.btree_node** %14, align 8
  %74 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %72, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %68
  %84 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %85 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %86 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @rebalance2(%struct.shadow_spine* %84, %struct.dm_btree_info* %85, %struct.dm_btree_value_type* %86, i32 %87)
  store i32 %88, i32* %11, align 4
  br label %107

89:                                               ; preds = %68
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %94 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %95 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %96, 1
  %98 = call i32 @rebalance2(%struct.shadow_spine* %93, %struct.dm_btree_info* %94, %struct.dm_btree_value_type* %95, i32 %97)
  store i32 %98, i32* %11, align 4
  br label %106

99:                                               ; preds = %89
  %100 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %101 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %102 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @rebalance3(%struct.shadow_spine* %100, %struct.dm_btree_info* %101, %struct.dm_btree_value_type* %102, i32 %104)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %83
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %65, %38, %36
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local %struct.dm_block* @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i32 @dm_tm_read_lock(i32, i32, i32*, %struct.dm_block**) #1

declare dso_local i32 @memcpy(%struct.btree_node*, %struct.btree_node*, i32) #1

declare dso_local i32 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

declare dso_local i32 @dm_tm_dec(i32, i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @lower_bound(%struct.btree_node*, i32) #1

declare dso_local i32 @rebalance2(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32) #1

declare dso_local i32 @rebalance3(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
