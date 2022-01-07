; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_read_try_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_read_try_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.buffer_aux = type { i32, i64 }
%struct.dm_buffer = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bm_read_try_lock(%struct.dm_block_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_block_manager*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_block_validator*, align 8
  %9 = alloca %struct.dm_block**, align 8
  %10 = alloca %struct.buffer_aux*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.dm_block_manager* %0, %struct.dm_block_manager** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_block_validator* %2, %struct.dm_block_validator** %8, align 8
  store %struct.dm_block** %3, %struct.dm_block*** %9, align 8
  %13 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %14 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %18 = bitcast %struct.dm_block** %17 to %struct.dm_buffer**
  %19 = call i8* @dm_bufio_get(i32 %15, i32 %16, %struct.dm_buffer** %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %5, align 4
  br label %78

26:                                               ; preds = %4
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EWOULDBLOCK, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %78

36:                                               ; preds = %26
  %37 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %38 = load %struct.dm_block*, %struct.dm_block** %37, align 8
  %39 = call i32 @to_buffer(%struct.dm_block* %38)
  %40 = call %struct.buffer_aux* @dm_bufio_get_aux_data(i32 %39)
  store %struct.buffer_aux* %40, %struct.buffer_aux** %10, align 8
  %41 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %42 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %41, i32 0, i32 0
  %43 = call i32 @bl_down_read_nonblock(i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %48 = load %struct.dm_block*, %struct.dm_block** %47, align 8
  %49 = call i32 @to_buffer(%struct.dm_block* %48)
  %50 = call i32 @dm_bufio_release(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @report_recursive_bug(i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %78

55:                                               ; preds = %36
  %56 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %57 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %59 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %60 = load %struct.dm_block*, %struct.dm_block** %59, align 8
  %61 = call i32 @to_buffer(%struct.dm_block* %60)
  %62 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %63 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %64 = call i32 @dm_bm_validate_buffer(%struct.dm_block_manager* %58, i32 %61, %struct.buffer_aux* %62, %struct.dm_block_validator* %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %70 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %69, i32 0, i32 0
  %71 = call i32 @bl_up_read(i32* %70)
  %72 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %73 = load %struct.dm_block*, %struct.dm_block** %72, align 8
  %74 = call i32 @to_buffer(%struct.dm_block* %73)
  %75 = call i32 @dm_bufio_release(i32 %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %78

77:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %68, %46, %33, %23
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @dm_bufio_get(i32, i32, %struct.dm_buffer**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_aux* @dm_bufio_get_aux_data(i32) #1

declare dso_local i32 @to_buffer(%struct.dm_block*) #1

declare dso_local i32 @bl_down_read_nonblock(i32*) #1

declare dso_local i32 @dm_bufio_release(i32) #1

declare dso_local i32 @report_recursive_bug(i32, i32) #1

declare dso_local i32 @dm_bm_validate_buffer(%struct.dm_block_manager*, i32, %struct.buffer_aux*, %struct.dm_block_validator*) #1

declare dso_local i32 @bl_up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
