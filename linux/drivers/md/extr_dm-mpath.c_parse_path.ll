; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_parse_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_parse_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgpath = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.dm_arg_set = type { i32, i32 }
%struct.path_selector = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.path_selector*, %struct.TYPE_6__*, i32, i32, i8**)* }
%struct.dm_target = type { i8*, i32, %struct.multipath* }
%struct.multipath = type { i64 }
%struct.request_queue = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"no device given\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"error getting device\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@activate_path_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pgpath* (%struct.dm_arg_set*, %struct.path_selector*, %struct.dm_target*)* @parse_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pgpath* @parse_path(%struct.dm_arg_set* %0, %struct.path_selector* %1, %struct.dm_target* %2) #0 {
  %4 = alloca %struct.pgpath*, align 8
  %5 = alloca %struct.dm_arg_set*, align 8
  %6 = alloca %struct.path_selector*, align 8
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pgpath*, align 8
  %10 = alloca %struct.multipath*, align 8
  %11 = alloca %struct.request_queue*, align 8
  %12 = alloca i8*, align 8
  store %struct.dm_arg_set* %0, %struct.dm_arg_set** %5, align 8
  store %struct.path_selector* %1, %struct.path_selector** %6, align 8
  store %struct.dm_target* %2, %struct.dm_target** %7, align 8
  %13 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %14 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %13, i32 0, i32 2
  %15 = load %struct.multipath*, %struct.multipath** %14, align 8
  store %struct.multipath* %15, %struct.multipath** %10, align 8
  store i8* null, i8** %12, align 8
  %16 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %17 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.pgpath* @ERR_PTR(i32 %24)
  store %struct.pgpath* %25, %struct.pgpath** %4, align 8
  br label %130

26:                                               ; preds = %3
  %27 = call %struct.pgpath* (...) @alloc_pgpath()
  store %struct.pgpath* %27, %struct.pgpath** %9, align 8
  %28 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %29 = icmp ne %struct.pgpath* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.pgpath* @ERR_PTR(i32 %32)
  store %struct.pgpath* %33, %struct.pgpath** %4, align 8
  br label %130

34:                                               ; preds = %26
  %35 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %36 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %37 = call i32 @dm_shift_arg(%struct.dm_arg_set* %36)
  %38 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %39 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dm_table_get_mode(i32 %40)
  %42 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %43 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @dm_get_device(%struct.dm_target* %35, i32 %37, i32 %41, %struct.TYPE_7__** %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %50 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %50, align 8
  br label %125

51:                                               ; preds = %34
  %52 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %53 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.request_queue* @bdev_get_queue(i32 %57)
  store %struct.request_queue* %58, %struct.request_queue** %11, align 8
  %59 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @scsi_dh_attached_handler_name(%struct.request_queue* %59, i32 %60)
  store i8* %61, i8** %12, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %51
  %65 = load %struct.multipath*, %struct.multipath** %10, align 8
  %66 = getelementptr inbounds %struct.multipath, %struct.multipath* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %64, %51
  %70 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %71 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %70, i32 0, i32 1
  %72 = load i32, i32* @activate_path_work, align 4
  %73 = call i32 @INIT_DELAYED_WORK(i32* %71, i32 %72)
  %74 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %75 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.multipath*, %struct.multipath** %10, align 8
  %81 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %82 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %81, i32 0, i32 0
  %83 = call i32 @setup_scsi_dh(i32 %79, %struct.multipath* %80, i8** %12, i8** %82)
  store i32 %83, i32* %8, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %69
  %89 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %90 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %91 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = call i32 @dm_put_device(%struct.dm_target* %89, %struct.TYPE_7__* %93)
  br label %125

95:                                               ; preds = %69
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.path_selector*, %struct.path_selector** %6, align 8
  %98 = getelementptr inbounds %struct.path_selector, %struct.path_selector* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (%struct.path_selector*, %struct.TYPE_6__*, i32, i32, i8**)*, i32 (%struct.path_selector*, %struct.TYPE_6__*, i32, i32, i8**)** %100, align 8
  %102 = load %struct.path_selector*, %struct.path_selector** %6, align 8
  %103 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %104 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %103, i32 0, i32 0
  %105 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %106 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.dm_arg_set*, %struct.dm_arg_set** %5, align 8
  %109 = getelementptr inbounds %struct.dm_arg_set, %struct.dm_arg_set* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %112 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %111, i32 0, i32 0
  %113 = call i32 %101(%struct.path_selector* %102, %struct.TYPE_6__* %104, i32 %107, i32 %110, i8** %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %96
  %117 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %118 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %119 = getelementptr inbounds %struct.pgpath, %struct.pgpath* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = call i32 @dm_put_device(%struct.dm_target* %117, %struct.TYPE_7__* %121)
  br label %125

123:                                              ; preds = %96
  %124 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  store %struct.pgpath* %124, %struct.pgpath** %4, align 8
  br label %130

125:                                              ; preds = %116, %88, %48
  %126 = load %struct.pgpath*, %struct.pgpath** %9, align 8
  %127 = call i32 @free_pgpath(%struct.pgpath* %126)
  %128 = load i32, i32* %8, align 4
  %129 = call %struct.pgpath* @ERR_PTR(i32 %128)
  store %struct.pgpath* %129, %struct.pgpath** %4, align 8
  br label %130

130:                                              ; preds = %125, %123, %30, %20
  %131 = load %struct.pgpath*, %struct.pgpath** %4, align 8
  ret %struct.pgpath* %131
}

declare dso_local %struct.pgpath* @ERR_PTR(i32) #1

declare dso_local %struct.pgpath* @alloc_pgpath(...) #1

declare dso_local i32 @dm_get_device(%struct.dm_target*, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @dm_shift_arg(%struct.dm_arg_set*) #1

declare dso_local i32 @dm_table_get_mode(i32) #1

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i8* @scsi_dh_attached_handler_name(%struct.request_queue*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @setup_scsi_dh(i32, %struct.multipath*, i8**, i8**) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dm_put_device(%struct.dm_target*, %struct.TYPE_7__*) #1

declare dso_local i32 @free_pgpath(%struct.pgpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
