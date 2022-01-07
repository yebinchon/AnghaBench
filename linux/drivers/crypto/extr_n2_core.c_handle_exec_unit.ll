; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_handle_exec_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_n2_core.c_handle_exec_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_mdesc_info = type { i32 }
%struct.list_head = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mdesc_handle = type { i32 }
%struct.spu_queue = type { i64, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%pOF: Could not allocate SPU queue.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spu_mdesc_info*, %struct.list_head*, %struct.platform_device*, %struct.mdesc_handle*, i32, i8*, i64, i32, %struct.spu_queue**)* @handle_exec_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_exec_unit(%struct.spu_mdesc_info* %0, %struct.list_head* %1, %struct.platform_device* %2, %struct.mdesc_handle* %3, i32 %4, i8* %5, i64 %6, i32 %7, %struct.spu_queue** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.spu_mdesc_info*, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.platform_device*, align 8
  %14 = alloca %struct.mdesc_handle*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.spu_queue**, align 8
  %20 = alloca %struct.spu_queue*, align 8
  %21 = alloca i32, align 4
  store %struct.spu_mdesc_info* %0, %struct.spu_mdesc_info** %11, align 8
  store %struct.list_head* %1, %struct.list_head** %12, align 8
  store %struct.platform_device* %2, %struct.platform_device** %13, align 8
  store %struct.mdesc_handle* %3, %struct.mdesc_handle** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.spu_queue** %8, %struct.spu_queue*** %19, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.spu_queue* @kzalloc(i32 24, i32 %22)
  store %struct.spu_queue* %23, %struct.spu_queue** %20, align 8
  %24 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %25 = icmp ne %struct.spu_queue* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %9
  %27 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(%struct.TYPE_2__* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %77

36:                                               ; preds = %9
  %37 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %38 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %37, i32 0, i32 4
  %39 = call i32 @cpumask_clear(i32* %38)
  %40 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %41 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %40, i32 0, i32 3
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load i64, i64* %17, align 8
  %44 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %45 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %47 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %46, i32 0, i32 2
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %50 = getelementptr inbounds %struct.spu_queue, %struct.spu_queue* %49, i32 0, i32 1
  %51 = load %struct.list_head*, %struct.list_head** %12, align 8
  %52 = call i32 @list_add(i32* %50, %struct.list_head* %51)
  %53 = load %struct.mdesc_handle*, %struct.mdesc_handle** %14, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %57 = load %struct.spu_queue**, %struct.spu_queue*** %19, align 8
  %58 = call i32 @spu_mdesc_walk_arcs(%struct.mdesc_handle* %53, %struct.platform_device* %54, i32 %55, %struct.spu_queue* %56, %struct.spu_queue** %57)
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %21, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %36
  %62 = load i32, i32* %21, align 4
  store i32 %62, i32* %10, align 4
  br label %77

63:                                               ; preds = %36
  %64 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %65 = call i32 @spu_queue_setup(%struct.spu_queue* %64)
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %21, align 4
  store i32 %69, i32* %10, align 4
  br label %77

70:                                               ; preds = %63
  %71 = load %struct.platform_device*, %struct.platform_device** %13, align 8
  %72 = load %struct.spu_mdesc_info*, %struct.spu_mdesc_info** %11, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = load %struct.spu_queue*, %struct.spu_queue** %20, align 8
  %75 = load i32, i32* %18, align 4
  %76 = call i32 @spu_map_ino(%struct.platform_device* %71, %struct.spu_mdesc_info* %72, i8* %73, %struct.spu_queue* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %70, %68, %61, %26
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local %struct.spu_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @cpumask_clear(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @spu_mdesc_walk_arcs(%struct.mdesc_handle*, %struct.platform_device*, i32, %struct.spu_queue*, %struct.spu_queue**) #1

declare dso_local i32 @spu_queue_setup(%struct.spu_queue*) #1

declare dso_local i32 @spu_map_ino(%struct.platform_device*, %struct.spu_mdesc_info*, i8*, %struct.spu_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
