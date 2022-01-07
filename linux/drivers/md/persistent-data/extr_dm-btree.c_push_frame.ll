; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_push_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-btree.c_push_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.del_stack = type { i32, i32, i32, %struct.frame* }
%struct.frame = type { i32, %struct.TYPE_4__*, i64, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@MAX_SPINE_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"btree deletion stack out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@btree_node_validator = common dso_local global i32 0, align 4
@INTERNAL_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.del_stack*, i32, i32)* @push_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_frame(%struct.del_stack* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.del_stack*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.frame*, align 8
  store %struct.del_stack* %0, %struct.del_stack** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %13 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MAX_SPINE_DEPTH, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %112

22:                                               ; preds = %3
  %23 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %24 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dm_tm_ref(i32 %25, i32 %26, i32* %9)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %112

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %37 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dm_tm_dec(i32 %38, i32 %39)
  br label %111

41:                                               ; preds = %32
  %42 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %43 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %42, i32 0, i32 3
  %44 = load %struct.frame*, %struct.frame** %43, align 8
  %45 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %46 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.frame, %struct.frame* %44, i64 %49
  store %struct.frame* %50, %struct.frame** %11, align 8
  %51 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %52 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.frame*, %struct.frame** %11, align 8
  %56 = getelementptr inbounds %struct.frame, %struct.frame* %55, i32 0, i32 4
  %57 = call i32 @dm_tm_read_lock(i32 %53, i32 %54, i32* @btree_node_validator, i32* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %41
  %61 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %62 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %112

66:                                               ; preds = %41
  %67 = load %struct.frame*, %struct.frame** %11, align 8
  %68 = getelementptr inbounds %struct.frame, %struct.frame* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_4__* @dm_block_data(i32 %69)
  %71 = load %struct.frame*, %struct.frame** %11, align 8
  %72 = getelementptr inbounds %struct.frame, %struct.frame* %71, i32 0, i32 1
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.frame*, %struct.frame** %11, align 8
  %75 = getelementptr inbounds %struct.frame, %struct.frame* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.frame*, %struct.frame** %11, align 8
  %77 = getelementptr inbounds %struct.frame, %struct.frame* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = load %struct.frame*, %struct.frame** %11, align 8
  %84 = getelementptr inbounds %struct.frame, %struct.frame* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.frame*, %struct.frame** %11, align 8
  %86 = getelementptr inbounds %struct.frame, %struct.frame* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.frame*, %struct.frame** %11, align 8
  %88 = getelementptr inbounds %struct.frame, %struct.frame* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @le32_to_cpu(i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @INTERNAL_NODE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %66
  %100 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %101 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.frame*, %struct.frame** %11, align 8
  %104 = call i64 @is_internal_level(i32 %102, %struct.frame* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99, %66
  %107 = load %struct.del_stack*, %struct.del_stack** %5, align 8
  %108 = load %struct.frame*, %struct.frame** %11, align 8
  %109 = call i32 @prefetch_children(%struct.del_stack* %107, %struct.frame* %108)
  br label %110

110:                                              ; preds = %106, %99
  br label %111

111:                                              ; preds = %110, %35
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %60, %30, %18
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @dm_tm_ref(i32, i32, i32*) #1

declare dso_local i32 @dm_tm_dec(i32, i32) #1

declare dso_local i32 @dm_tm_read_lock(i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @dm_block_data(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @is_internal_level(i32, %struct.frame*) #1

declare dso_local i32 @prefetch_children(%struct.del_stack*, %struct.frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
