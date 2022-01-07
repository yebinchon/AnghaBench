; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_dm_bufio_mark_partial_buffer_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_dm_bufio_mark_partial_buffer_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i32, i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32 }

@B_READING = common dso_local global i32 0, align 4
@B_DIRTY = common dso_local global i32 0, align 4
@LIST_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_bufio_mark_partial_buffer_dirty(%struct.dm_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_bufio_client*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %8, i32 0, i32 3
  %10 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %9, align 8
  store %struct.dm_bufio_client* %10, %struct.dm_bufio_client** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp uge i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %17, i32 0, i32 3
  %19 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %18, align 8
  %20 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %16, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %26 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %25)
  %27 = load i32, i32* @B_READING, align 4
  %28 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %28, i32 0, i32 2
  %30 = call i32 @test_bit(i32 %27, i32* %29)
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* @B_DIRTY, align 4
  %33 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %33, i32 0, i32 2
  %35 = call i32 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %45 = load i32, i32* @LIST_DIRTY, align 4
  %46 = call i32 @__relink_lru(%struct.dm_buffer* %44, i32 %45)
  br label %68

47:                                               ; preds = %3
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %56 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ugt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %57
  br label %68

68:                                               ; preds = %67, %37
  %69 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %70 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %69)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_bufio_lock(%struct.dm_bufio_client*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__relink_lru(%struct.dm_buffer*, i32) #1

declare dso_local i32 @dm_bufio_unlock(%struct.dm_bufio_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
