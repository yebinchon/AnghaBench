; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_read_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_read_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.buffer_aux = type { i32, i64 }
%struct.dm_buffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bm_read_lock(%struct.dm_block_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
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
  %19 = call i8* @dm_bufio_read(i32 %15, i32 %16, %struct.dm_buffer** %18)
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @IS_ERR(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %5, align 4
  br label %69

26:                                               ; preds = %4
  %27 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %28 = load %struct.dm_block*, %struct.dm_block** %27, align 8
  %29 = call i32 @to_buffer(%struct.dm_block* %28)
  %30 = call %struct.buffer_aux* @dm_bufio_get_aux_data(i32 %29)
  store %struct.buffer_aux* %30, %struct.buffer_aux** %10, align 8
  %31 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %32 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %31, i32 0, i32 0
  %33 = call i32 @bl_down_read(i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %39 = load %struct.dm_block*, %struct.dm_block** %38, align 8
  %40 = call i32 @to_buffer(%struct.dm_block* %39)
  %41 = call i32 @dm_bufio_release(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @report_recursive_bug(i32 %42, i32 %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %69

46:                                               ; preds = %26
  %47 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %48 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %50 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %51 = load %struct.dm_block*, %struct.dm_block** %50, align 8
  %52 = call i32 @to_buffer(%struct.dm_block* %51)
  %53 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %54 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %55 = call i32 @dm_bm_validate_buffer(%struct.dm_block_manager* %49, i32 %52, %struct.buffer_aux* %53, %struct.dm_block_validator* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %46
  %60 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %61 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %60, i32 0, i32 0
  %62 = call i32 @bl_up_read(i32* %61)
  %63 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %64 = load %struct.dm_block*, %struct.dm_block** %63, align 8
  %65 = call i32 @to_buffer(%struct.dm_block* %64)
  %66 = call i32 @dm_bufio_release(i32 %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %69

68:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %59, %37, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i8* @dm_bufio_read(i32, i32, %struct.dm_buffer**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.buffer_aux* @dm_bufio_get_aux_data(i32) #1

declare dso_local i32 @to_buffer(%struct.dm_block*) #1

declare dso_local i32 @bl_down_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

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
