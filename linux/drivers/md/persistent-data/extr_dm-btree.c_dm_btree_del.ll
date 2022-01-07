; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_dm_btree_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 (i32, i32)* }
%struct.del_stack = type { i32, i32, %struct.dm_btree_info* }
%struct.frame = type { i64, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INTERNAL_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_btree_del(%struct.dm_btree_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_btree_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.del_stack*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.frame*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.del_stack* @kmalloc(i32 16, i32 %12)
  store %struct.del_stack* %13, %struct.del_stack** %7, align 8
  %14 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %15 = icmp ne %struct.del_stack* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %169

19:                                               ; preds = %2
  %20 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %21 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %22 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %21, i32 0, i32 2
  store %struct.dm_btree_info* %20, %struct.dm_btree_info** %22, align 8
  %23 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %24 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %27 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %29 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @push_frame(%struct.del_stack* %30, i32 %31, i64 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %159

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %157, %55, %36
  %38 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %39 = call i64 @unprocessed_frames(%struct.del_stack* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %158

41:                                               ; preds = %37
  %42 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %43 = call i32 @top_frame(%struct.del_stack* %42, %struct.frame** %9)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %159

47:                                               ; preds = %41
  %48 = load %struct.frame*, %struct.frame** %9, align 8
  %49 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.frame*, %struct.frame** %9, align 8
  %52 = getelementptr inbounds %struct.frame, %struct.frame* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %57 = call i32 @pop_frame(%struct.del_stack* %56)
  br label %37

58:                                               ; preds = %47
  %59 = load %struct.frame*, %struct.frame** %9, align 8
  %60 = getelementptr inbounds %struct.frame, %struct.frame* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @INTERNAL_NODE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %58
  %71 = load %struct.frame*, %struct.frame** %9, align 8
  %72 = getelementptr inbounds %struct.frame, %struct.frame* %71, i32 0, i32 2
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load %struct.frame*, %struct.frame** %9, align 8
  %75 = getelementptr inbounds %struct.frame, %struct.frame* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @value64(%struct.TYPE_7__* %73, i64 %76)
  store i32 %77, i32* %10, align 4
  %78 = load %struct.frame*, %struct.frame** %9, align 8
  %79 = getelementptr inbounds %struct.frame, %struct.frame* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.frame*, %struct.frame** %9, align 8
  %85 = getelementptr inbounds %struct.frame, %struct.frame* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @push_frame(%struct.del_stack* %82, i32 %83, i64 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  br label %159

91:                                               ; preds = %70
  br label %157

92:                                               ; preds = %58
  %93 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %94 = load %struct.frame*, %struct.frame** %9, align 8
  %95 = call i64 @is_internal_level(%struct.dm_btree_info* %93, %struct.frame* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %92
  %98 = load %struct.frame*, %struct.frame** %9, align 8
  %99 = getelementptr inbounds %struct.frame, %struct.frame* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load %struct.frame*, %struct.frame** %9, align 8
  %102 = getelementptr inbounds %struct.frame, %struct.frame* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @value64(%struct.TYPE_7__* %100, i64 %103)
  store i32 %104, i32* %10, align 4
  %105 = load %struct.frame*, %struct.frame** %9, align 8
  %106 = getelementptr inbounds %struct.frame, %struct.frame* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.frame*, %struct.frame** %9, align 8
  %112 = getelementptr inbounds %struct.frame, %struct.frame* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  %115 = call i32 @push_frame(%struct.del_stack* %109, i32 %110, i64 %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %97
  br label %159

119:                                              ; preds = %97
  br label %156

120:                                              ; preds = %92
  %121 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %122 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32 (i32, i32)*, i32 (i32, i32)** %123, align 8
  %125 = icmp ne i32 (i32, i32)* %124, null
  br i1 %125, label %126, label %153

126:                                              ; preds = %120
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %149, %126
  %128 = load i32, i32* %11, align 4
  %129 = zext i32 %128 to i64
  %130 = load %struct.frame*, %struct.frame** %9, align 8
  %131 = getelementptr inbounds %struct.frame, %struct.frame* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %129, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %127
  %135 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %136 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32 (i32, i32)*, i32 (i32, i32)** %137, align 8
  %139 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %140 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.frame*, %struct.frame** %9, align 8
  %144 = getelementptr inbounds %struct.frame, %struct.frame* %143, i32 0, i32 2
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @value_ptr(%struct.TYPE_7__* %145, i32 %146)
  %148 = call i32 %138(i32 %142, i32 %147)
  br label %149

149:                                              ; preds = %134
  %150 = load i32, i32* %11, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %127

152:                                              ; preds = %127
  br label %153

153:                                              ; preds = %152, %120
  %154 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %155 = call i32 @pop_frame(%struct.del_stack* %154)
  br label %156

156:                                              ; preds = %153, %119
  br label %157

157:                                              ; preds = %156, %91
  br label %37

158:                                              ; preds = %37
  br label %159

159:                                              ; preds = %158, %118, %90, %46, %35
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %164 = call i32 @unlock_all_frames(%struct.del_stack* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load %struct.del_stack*, %struct.del_stack** %7, align 8
  %167 = call i32 @kfree(%struct.del_stack* %166)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %16
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.del_stack* @kmalloc(i32, i32) #1

declare dso_local i32 @push_frame(%struct.del_stack*, i32, i64) #1

declare dso_local i64 @unprocessed_frames(%struct.del_stack*) #1

declare dso_local i32 @top_frame(%struct.del_stack*, %struct.frame**) #1

declare dso_local i32 @pop_frame(%struct.del_stack*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @value64(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @is_internal_level(%struct.dm_btree_info*, %struct.frame*) #1

declare dso_local i32 @value_ptr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @unlock_all_frames(%struct.del_stack*) #1

declare dso_local i32 @kfree(%struct.del_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
