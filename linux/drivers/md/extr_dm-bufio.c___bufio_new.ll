; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___bufio_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___bufio_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i32, i64, i64 }
%struct.dm_bufio_client = type { i32 }
%struct.list_head = type { i32 }

@NF_GET = common dso_local global i32 0, align 4
@LIST_CLEAN = common dso_local global i32 0, align 4
@NF_FRESH = common dso_local global i32 0, align 4
@B_READING = common dso_local global i32 0, align 4
@NF_PREFETCH = common dso_local global i32 0, align 4
@B_DIRTY = common dso_local global i32 0, align 4
@B_WRITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_buffer* (%struct.dm_bufio_client*, i32, i32, i32*, %struct.list_head*)* @__bufio_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_buffer* @__bufio_new(%struct.dm_bufio_client* %0, i32 %1, i32 %2, i32* %3, %struct.list_head* %4) #0 {
  %6 = alloca %struct.dm_buffer*, align 8
  %7 = alloca %struct.dm_bufio_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.dm_buffer*, align 8
  %13 = alloca %struct.dm_buffer*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.list_head* %4, %struct.list_head** %11, align 8
  store %struct.dm_buffer* null, %struct.dm_buffer** %13, align 8
  %14 = load i32*, i32** %10, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.dm_buffer* @__find(%struct.dm_bufio_client* %15, i32 %16)
  store %struct.dm_buffer* %17, %struct.dm_buffer** %12, align 8
  %18 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %19 = icmp ne %struct.dm_buffer* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %71

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @NF_GET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.dm_buffer* null, %struct.dm_buffer** %6, align 8
  br label %110

26:                                               ; preds = %21
  %27 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.dm_buffer* @__alloc_buffer_wait(%struct.dm_bufio_client* %27, i32 %28)
  store %struct.dm_buffer* %29, %struct.dm_buffer** %13, align 8
  %30 = load %struct.dm_buffer*, %struct.dm_buffer** %13, align 8
  %31 = icmp ne %struct.dm_buffer* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store %struct.dm_buffer* null, %struct.dm_buffer** %6, align 8
  br label %110

33:                                               ; preds = %26
  %34 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.dm_buffer* @__find(%struct.dm_bufio_client* %34, i32 %35)
  store %struct.dm_buffer* %36, %struct.dm_buffer** %12, align 8
  %37 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %38 = icmp ne %struct.dm_buffer* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.dm_buffer*, %struct.dm_buffer** %13, align 8
  %41 = call i32 @__free_buffer_wake(%struct.dm_buffer* %40)
  br label %71

42:                                               ; preds = %33
  %43 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %44 = load %struct.list_head*, %struct.list_head** %11, align 8
  %45 = call i32 @__check_watermark(%struct.dm_bufio_client* %43, %struct.list_head* %44)
  %46 = load %struct.dm_buffer*, %struct.dm_buffer** %13, align 8
  store %struct.dm_buffer* %46, %struct.dm_buffer** %12, align 8
  %47 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %48 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %50 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %52 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @LIST_CLEAN, align 4
  %56 = call i32 @__link_buffer(%struct.dm_buffer* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @NF_FRESH, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %62 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  store %struct.dm_buffer* %63, %struct.dm_buffer** %6, align 8
  br label %110

64:                                               ; preds = %42
  %65 = load i32, i32* @B_READING, align 4
  %66 = shl i32 1, %65
  %67 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %68 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 1, i32* %69, align 4
  %70 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  store %struct.dm_buffer* %70, %struct.dm_buffer** %6, align 8
  br label %110

71:                                               ; preds = %39, %20
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @NF_PREFETCH, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store %struct.dm_buffer* null, %struct.dm_buffer** %6, align 8
  br label %110

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @NF_GET, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* @B_READING, align 4
  %82 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %83 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %82, i32 0, i32 1
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = call i64 @unlikely(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store %struct.dm_buffer* null, %struct.dm_buffer** %6, align 8
  br label %110

88:                                               ; preds = %80, %76
  %89 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %90 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %94 = load i32, i32* @B_DIRTY, align 4
  %95 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %96 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %95, i32 0, i32 1
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* @B_WRITING, align 4
  %101 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %102 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %101, i32 0, i32 1
  %103 = call i64 @test_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %99, %88
  %106 = phi i1 [ true, %88 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  %108 = call i32 @__relink_lru(%struct.dm_buffer* %93, i32 %107)
  %109 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  store %struct.dm_buffer* %109, %struct.dm_buffer** %6, align 8
  br label %110

110:                                              ; preds = %105, %87, %75, %64, %60, %32, %25
  %111 = load %struct.dm_buffer*, %struct.dm_buffer** %6, align 8
  ret %struct.dm_buffer* %111
}

declare dso_local %struct.dm_buffer* @__find(%struct.dm_bufio_client*, i32) #1

declare dso_local %struct.dm_buffer* @__alloc_buffer_wait(%struct.dm_bufio_client*, i32) #1

declare dso_local i32 @__free_buffer_wake(%struct.dm_buffer*) #1

declare dso_local i32 @__check_watermark(%struct.dm_bufio_client*, %struct.list_head*) #1

declare dso_local i32 @__link_buffer(%struct.dm_buffer*, i32, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__relink_lru(%struct.dm_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
