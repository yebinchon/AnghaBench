; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_device_t = type { i32, i32, %struct.smscore_device_t*, i32, %struct.smscore_device_t*, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.smscore_buffer_t = type { i32, i32, %struct.smscore_buffer_t*, i32, %struct.smscore_buffer_t*, i32, i32, i64, %struct.TYPE_2__ }

@g_smscore_deviceslock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"exiting although not all buffers released.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"waiting for %d buffer(s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"freed %d buffers\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"device %p destroyed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smscore_unregister_device(%struct.smscore_device_t* %0) #0 {
  %2 = alloca %struct.smscore_device_t*, align 8
  %3 = alloca %struct.smscore_buffer_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smscore_device_t* %0, %struct.smscore_device_t** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @kmutex_lock(i32* @g_smscore_deviceslock)
  %7 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %8 = call i32 @sms_ir_exit(%struct.smscore_device_t* %7)
  %9 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %10 = call i32 @smscore_notify_clients(%struct.smscore_device_t* %9)
  %11 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %12 = call i32 @smscore_notify_callbacks(%struct.smscore_device_t* %11, i32* null, i32 0)
  br label %13

13:                                               ; preds = %1, %47
  br label %14

14:                                               ; preds = %20, %13
  %15 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %16 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %15, i32 0, i32 8
  %17 = call i32 @list_empty(%struct.TYPE_2__* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %22 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.smscore_buffer_t*
  store %struct.smscore_buffer_t* %25, %struct.smscore_buffer_t** %3, align 8
  %26 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %3, align 8
  %27 = getelementptr inbounds %struct.smscore_buffer_t, %struct.smscore_buffer_t* %26, i32 0, i32 1
  %28 = call i32 @list_del(i32* %27)
  %29 = load %struct.smscore_buffer_t*, %struct.smscore_buffer_t** %3, align 8
  %30 = bitcast %struct.smscore_buffer_t* %29 to %struct.smscore_device_t*
  %31 = call i32 @kfree(%struct.smscore_device_t* %30)
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %37 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %57

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = icmp sgt i32 %43, 10
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %57

47:                                               ; preds = %41
  %48 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %49 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %50, %51
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = call i32 @kmutex_unlock(i32* @g_smscore_deviceslock)
  %55 = call i32 @msleep(i32 100)
  %56 = call i32 @kmutex_lock(i32* @g_smscore_deviceslock)
  br label %13

57:                                               ; preds = %45, %40
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %61 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %60, i32 0, i32 4
  %62 = load %struct.smscore_device_t*, %struct.smscore_device_t** %61, align 8
  %63 = icmp ne %struct.smscore_device_t* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %57
  %65 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %66 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %65, i32 0, i32 7
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %71 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %70, i32 0, i32 4
  %72 = load %struct.smscore_device_t*, %struct.smscore_device_t** %71, align 8
  %73 = call i32 @kfree(%struct.smscore_device_t* %72)
  br label %88

74:                                               ; preds = %64
  %75 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %76 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %79 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %82 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %81, i32 0, i32 4
  %83 = load %struct.smscore_device_t*, %struct.smscore_device_t** %82, align 8
  %84 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %85 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dma_free_coherent(i32 %77, i32 %80, %struct.smscore_device_t* %83, i32 %86)
  br label %88

88:                                               ; preds = %74, %69
  br label %89

89:                                               ; preds = %88, %57
  %90 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %91 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %90, i32 0, i32 2
  %92 = load %struct.smscore_device_t*, %struct.smscore_device_t** %91, align 8
  %93 = call i32 @kfree(%struct.smscore_device_t* %92)
  %94 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %95 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %94, i32 0, i32 1
  %96 = call i32 @list_del(i32* %95)
  %97 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %98 = call i32 @kfree(%struct.smscore_device_t* %97)
  %99 = call i32 @kmutex_unlock(i32* @g_smscore_deviceslock)
  %100 = load %struct.smscore_device_t*, %struct.smscore_device_t** %2, align 8
  %101 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.smscore_device_t* %100)
  ret void
}

declare dso_local i32 @kmutex_lock(i32*) #1

declare dso_local i32 @sms_ir_exit(%struct.smscore_device_t*) #1

declare dso_local i32 @smscore_notify_clients(%struct.smscore_device_t*) #1

declare dso_local i32 @smscore_notify_callbacks(%struct.smscore_device_t*, i32*, i32) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.smscore_device_t*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @kmutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.smscore_device_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
