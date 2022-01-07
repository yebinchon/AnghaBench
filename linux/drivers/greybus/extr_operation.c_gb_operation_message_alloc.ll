; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_message_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_operation.c_gb_operation_message_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_message = type { i32 }
%struct.gb_host_device = type { i64, i32 }
%struct.gb_operation_msg_hdr = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"requested message size too big (%zu > %zu)\0A\00", align 1
@gb_message_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gb_message* (%struct.gb_host_device*, i32, i64, i32)* @gb_operation_message_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gb_message* @gb_operation_message_alloc(%struct.gb_host_device* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.gb_message*, align 8
  %6 = alloca %struct.gb_host_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gb_message*, align 8
  %11 = alloca %struct.gb_operation_msg_hdr*, align 8
  %12 = alloca i64, align 8
  store %struct.gb_host_device* %0, %struct.gb_host_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, 4
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %17 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ugt i64 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %22 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %21, i32 0, i32 1
  %23 = load i64, i64* %12, align 8
  %24 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %25 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26)
  store %struct.gb_message* null, %struct.gb_message** %5, align 8
  br label %57

28:                                               ; preds = %4
  %29 = load i32, i32* @gb_message_cache, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.gb_message* @kmem_cache_zalloc(i32 %29, i32 %30)
  store %struct.gb_message* %31, %struct.gb_message** %10, align 8
  %32 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %33 = icmp ne %struct.gb_message* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store %struct.gb_message* null, %struct.gb_message** %5, align 8
  br label %57

35:                                               ; preds = %28
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @kzalloc(i64 %36, i32 %37)
  %39 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %40 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %42 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %48 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @gb_operation_message_init(%struct.gb_host_device* %47, %struct.gb_message* %48, i32 0, i64 %49, i32 %50)
  %52 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  store %struct.gb_message* %52, %struct.gb_message** %5, align 8
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @gb_message_cache, align 4
  %55 = load %struct.gb_message*, %struct.gb_message** %10, align 8
  %56 = call i32 @kmem_cache_free(i32 %54, %struct.gb_message* %55)
  store %struct.gb_message* null, %struct.gb_message** %5, align 8
  br label %57

57:                                               ; preds = %53, %46, %34, %20
  %58 = load %struct.gb_message*, %struct.gb_message** %5, align 8
  ret %struct.gb_message* %58
}

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64) #1

declare dso_local %struct.gb_message* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @gb_operation_message_init(%struct.gb_host_device*, %struct.gb_message*, i32, i64, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.gb_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
