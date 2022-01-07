; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_create_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_create_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i64, %struct.TYPE_3__*, i32, i32, i32, i32, i32, i32, i32, %struct.gb_connection* }
%struct.TYPE_3__ = type { %struct.gb_operation* }
%struct.gb_connection = type { %struct.gb_host_device* }
%struct.gb_host_device = type { i32 }

@gb_operation_cache = common dso_local global i32 0, align 4
@GB_OPERATION_FLAG_INCOMING = common dso_local global i64 0, align 8
@gb_operation_timeout = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@gb_operation_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gb_operation* (%struct.gb_connection*, i32, i64, i64, i64, i32)* @gb_operation_create_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gb_operation* @gb_operation_create_common(%struct.gb_connection* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.gb_operation*, align 8
  %8 = alloca %struct.gb_connection*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.gb_host_device*, align 8
  %15 = alloca %struct.gb_operation*, align 8
  store %struct.gb_connection* %0, %struct.gb_connection** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %17 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %16, i32 0, i32 0
  %18 = load %struct.gb_host_device*, %struct.gb_host_device** %17, align 8
  store %struct.gb_host_device* %18, %struct.gb_host_device** %14, align 8
  %19 = load i32, i32* @gb_operation_cache, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call %struct.gb_operation* @kmem_cache_zalloc(i32 %19, i32 %20)
  store %struct.gb_operation* %21, %struct.gb_operation** %15, align 8
  %22 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %23 = icmp ne %struct.gb_operation* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store %struct.gb_operation* null, %struct.gb_operation** %7, align 8
  br label %97

25:                                               ; preds = %6
  %26 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %27 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %28 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %27, i32 0, i32 9
  store %struct.gb_connection* %26, %struct.gb_connection** %28, align 8
  %29 = load %struct.gb_host_device*, %struct.gb_host_device** %14, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call %struct.TYPE_3__* @gb_operation_message_alloc(%struct.gb_host_device* %29, i32 %30, i64 %31, i32 %32)
  %34 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %35 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %34, i32 0, i32 1
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %37 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %25
  br label %93

41:                                               ; preds = %25
  %42 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %43 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %44 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.gb_operation* %42, %struct.gb_operation** %46, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @GB_OPERATION_FLAG_INCOMING, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %41
  %52 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @gb_operation_response_alloc(%struct.gb_operation* %52, i64 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %88

58:                                               ; preds = %51
  %59 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %60 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %59, i32 0, i32 8
  %61 = load i32, i32* @gb_operation_timeout, align 4
  %62 = call i32 @timer_setup(i32* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %58, %41
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %66 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %69 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @EBADR, align 4
  %71 = sub nsw i32 0, %70
  %72 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %73 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 8
  %74 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %75 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %74, i32 0, i32 5
  %76 = load i32, i32* @gb_operation_work, align 4
  %77 = call i32 @INIT_WORK(i32* %75, i32 %76)
  %78 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %79 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %78, i32 0, i32 4
  %80 = call i32 @init_completion(i32* %79)
  %81 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %82 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %81, i32 0, i32 3
  %83 = call i32 @kref_init(i32* %82)
  %84 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %85 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %84, i32 0, i32 2
  %86 = call i32 @atomic_set(i32* %85, i32 0)
  %87 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  store %struct.gb_operation* %87, %struct.gb_operation** %7, align 8
  br label %97

88:                                               ; preds = %57
  %89 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %90 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = call i32 @gb_operation_message_free(%struct.TYPE_3__* %91)
  br label %93

93:                                               ; preds = %88, %40
  %94 = load i32, i32* @gb_operation_cache, align 4
  %95 = load %struct.gb_operation*, %struct.gb_operation** %15, align 8
  %96 = call i32 @kmem_cache_free(i32 %94, %struct.gb_operation* %95)
  store %struct.gb_operation* null, %struct.gb_operation** %7, align 8
  br label %97

97:                                               ; preds = %93, %63, %24
  %98 = load %struct.gb_operation*, %struct.gb_operation** %7, align 8
  ret %struct.gb_operation* %98
}

declare dso_local %struct.gb_operation* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.TYPE_3__* @gb_operation_message_alloc(%struct.gb_host_device*, i32, i64, i32) #1

declare dso_local i32 @gb_operation_response_alloc(%struct.gb_operation*, i64, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @gb_operation_message_free(%struct.TYPE_3__*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gb_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
