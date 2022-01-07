; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_calculate_queue_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_calculate_queue_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.queue_limits = type { i32, i32 }
%struct.dm_target = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_target*, i32, %struct.queue_limits*)*, i32 (%struct.dm_target*, %struct.queue_limits*)* }

@BLK_ZONED_NONE = common dso_local global i32 0, align 4
@dm_set_device_limits = common dso_local global i32 0, align 4
@device_area_is_invalid = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"%s: adding target device (start sect %llu len %llu) caused an alignment inconsistency\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_calculate_queue_limits(%struct.dm_table* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.queue_limits*, align 8
  %6 = alloca %struct.dm_target*, align 8
  %7 = alloca %struct.queue_limits, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %5, align 8
  %11 = load i32, i32* @BLK_ZONED_NONE, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %13 = call i32 @blk_set_stacking_limits(%struct.queue_limits* %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %115, %2
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %17 = call i32 @dm_table_get_num_targets(%struct.dm_table* %16)
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %19, label %118

19:                                               ; preds = %14
  %20 = call i32 @blk_set_stacking_limits(%struct.queue_limits* %7)
  %21 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.dm_target* @dm_table_get_target(%struct.dm_table* %21, i32 %22)
  store %struct.dm_target* %23, %struct.dm_target** %6, align 8
  %24 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64 (%struct.dm_target*, i32, %struct.queue_limits*)*, i64 (%struct.dm_target*, i32, %struct.queue_limits*)** %27, align 8
  %29 = icmp ne i64 (%struct.dm_target*, i32, %struct.queue_limits*)* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %82

31:                                               ; preds = %19
  %32 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %33 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64 (%struct.dm_target*, i32, %struct.queue_limits*)*, i64 (%struct.dm_target*, i32, %struct.queue_limits*)** %35, align 8
  %37 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %38 = load i32, i32* @dm_set_device_limits, align 4
  %39 = call i64 %36(%struct.dm_target* %37, i32 %38, %struct.queue_limits* %7)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BLK_ZONED_NONE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BLK_ZONED_NONE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %7, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %48, %43, %31
  %54 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %55 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32 (%struct.dm_target*, %struct.queue_limits*)*, i32 (%struct.dm_target*, %struct.queue_limits*)** %57, align 8
  %59 = icmp ne i32 (%struct.dm_target*, %struct.queue_limits*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %62 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (%struct.dm_target*, %struct.queue_limits*)*, i32 (%struct.dm_target*, %struct.queue_limits*)** %64, align 8
  %66 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %67 = call i32 %65(%struct.dm_target* %66, %struct.queue_limits* %7)
  br label %68

68:                                               ; preds = %60, %53
  %69 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %70 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64 (%struct.dm_target*, i32, %struct.queue_limits*)*, i64 (%struct.dm_target*, i32, %struct.queue_limits*)** %72, align 8
  %74 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %75 = load i32, i32* @device_area_is_invalid, align 4
  %76 = call i64 %73(%struct.dm_target* %74, i32 %75, %struct.queue_limits* %7)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %144

81:                                               ; preds = %68
  br label %82

82:                                               ; preds = %81, %30
  %83 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %84 = call i64 @blk_stack_limits(%struct.queue_limits* %83, %struct.queue_limits* %7, i32 0)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %82
  %87 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %88 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dm_device_name(i32 %89)
  %91 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %92 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.dm_target*, %struct.dm_target** %6, align 8
  %95 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @DMWARN(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %90, i64 %93, i64 %96)
  br label %98

98:                                               ; preds = %86, %82
  %99 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %100 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BLK_ZONED_NONE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %7, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BLK_ZONED_NONE, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %7, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %113 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %109, %104, %98
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %14

118:                                              ; preds = %14
  %119 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %120 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BLK_ZONED_NONE, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %126 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %9, align 4
  %128 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %129 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %124, %118
  %132 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i64 @validate_hardware_zoned_model(%struct.dm_table* %132, i32 %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %144

140:                                              ; preds = %131
  %141 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %142 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %143 = call i32 @validate_hardware_logical_block_alignment(%struct.dm_table* %141, %struct.queue_limits* %142)
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %137, %78
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @blk_set_stacking_limits(%struct.queue_limits*) #1

declare dso_local i32 @dm_table_get_num_targets(%struct.dm_table*) #1

declare dso_local %struct.dm_target* @dm_table_get_target(%struct.dm_table*, i32) #1

declare dso_local i64 @blk_stack_limits(%struct.queue_limits*, %struct.queue_limits*, i32) #1

declare dso_local i32 @DMWARN(i8*, i32, i64, i64) #1

declare dso_local i32 @dm_device_name(i32) #1

declare dso_local i64 @validate_hardware_zoned_model(%struct.dm_table*, i32, i32) #1

declare dso_local i32 @validate_hardware_logical_block_alignment(%struct.dm_table*, %struct.queue_limits*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
