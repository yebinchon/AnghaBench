; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_make_listen_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_make_listen_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_listener = type { i64, i32, i32, i32, %struct.i40iw_device*, %struct.i40iw_cm_core*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i40iw_cm_core = type { i32, i32, i32, i32 }
%struct.i40iw_device = type { i32 }
%struct.i40iw_cm_info = type { i32, i32, i32, i32, i32, i32 }

@I40IW_CM_LISTENER_EITHER_STATE = common dso_local global i32 0, align 4
@I40IW_CM_LISTENER_ACTIVE_STATE = common dso_local global i64 0, align 8
@I40IW_DEBUG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Not creating listener since it already exists\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40iw_cm_listener* (%struct.i40iw_cm_core*, %struct.i40iw_device*, %struct.i40iw_cm_info*)* @i40iw_make_listen_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40iw_cm_listener* @i40iw_make_listen_node(%struct.i40iw_cm_core* %0, %struct.i40iw_device* %1, %struct.i40iw_cm_info* %2) #0 {
  %4 = alloca %struct.i40iw_cm_listener*, align 8
  %5 = alloca %struct.i40iw_cm_core*, align 8
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_cm_info*, align 8
  %8 = alloca %struct.i40iw_cm_listener*, align 8
  %9 = alloca i64, align 8
  store %struct.i40iw_cm_core* %0, %struct.i40iw_cm_core** %5, align 8
  store %struct.i40iw_device* %1, %struct.i40iw_device** %6, align 8
  store %struct.i40iw_cm_info* %2, %struct.i40iw_cm_info** %7, align 8
  %10 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %11 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %12 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %15 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %18 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I40IW_CM_LISTENER_EITHER_STATE, align 4
  %21 = call %struct.i40iw_cm_listener* @i40iw_find_listener(%struct.i40iw_cm_core* %10, i32 %13, i32 %16, i32 %19, i32 %20)
  store %struct.i40iw_cm_listener* %21, %struct.i40iw_cm_listener** %8, align 8
  %22 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %23 = icmp ne %struct.i40iw_cm_listener* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %26 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @I40IW_CM_LISTENER_ACTIVE_STATE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %32 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %31, i32 0, i32 10
  %33 = call i32 @atomic_dec(i32* %32)
  %34 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %35 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I40IW_DEBUG_CM, align 4
  %38 = call i32 @i40iw_debug(i32 %36, i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store %struct.i40iw_cm_listener* null, %struct.i40iw_cm_listener** %4, align 8
  br label %127

39:                                               ; preds = %24, %3
  %40 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %41 = icmp ne %struct.i40iw_cm_listener* %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.i40iw_cm_listener* @kzalloc(i32 72, i32 %43)
  store %struct.i40iw_cm_listener* %44, %struct.i40iw_cm_listener** %8, align 8
  %45 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %46 = icmp ne %struct.i40iw_cm_listener* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store %struct.i40iw_cm_listener* null, %struct.i40iw_cm_listener** %4, align 8
  br label %127

48:                                               ; preds = %42
  %49 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %50 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %54 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %53, i32 0, i32 13
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %57 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32 %55, i32 %58, i32 4)
  %60 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %61 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %64 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 8
  %65 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %66 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %65, i32 0, i32 11
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %69 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %68, i32 0, i32 10
  %70 = call i32 @atomic_set(i32* %69, i32 1)
  br label %74

71:                                               ; preds = %39
  %72 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %73 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %48
  %75 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %76 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %79 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %81 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %84 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %86 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %89 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %91 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %90, i32 0, i32 6
  %92 = call i32 @atomic_set(i32* %91, i32 0)
  %93 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %94 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %95 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %94, i32 0, i32 5
  store %struct.i40iw_cm_core* %93, %struct.i40iw_cm_core** %95, align 8
  %96 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %97 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %98 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %97, i32 0, i32 4
  store %struct.i40iw_device* %96, %struct.i40iw_device** %98, align 8
  %99 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %7, align 8
  %100 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %103 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load i64, i64* @I40IW_CM_LISTENER_ACTIVE_STATE, align 8
  %105 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %106 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %108 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %74
  %112 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %113 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %112, i32 0, i32 0
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @spin_lock_irqsave(i32* %113, i64 %114)
  %116 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  %117 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %116, i32 0, i32 2
  %118 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %119 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %118, i32 0, i32 1
  %120 = call i32 @list_add(i32* %117, i32* %119)
  %121 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %5, align 8
  %122 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %121, i32 0, i32 0
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  br label %125

125:                                              ; preds = %111, %74
  %126 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %8, align 8
  store %struct.i40iw_cm_listener* %126, %struct.i40iw_cm_listener** %4, align 8
  br label %127

127:                                              ; preds = %125, %47, %30
  %128 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %4, align 8
  ret %struct.i40iw_cm_listener* %128
}

declare dso_local %struct.i40iw_cm_listener* @i40iw_find_listener(%struct.i40iw_cm_core*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @i40iw_debug(i32, i32, i8*) #1

declare dso_local %struct.i40iw_cm_listener* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
