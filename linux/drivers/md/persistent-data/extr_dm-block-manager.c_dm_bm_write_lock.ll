; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_write_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_write_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32, i64 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.buffer_aux = type { i32, i32 }
%struct.dm_buffer = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bm_write_lock(%struct.dm_block_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
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
  %14 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %22 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %26 = bitcast %struct.dm_block** %25 to %struct.dm_buffer**
  %27 = call i8* @dm_bufio_read(i32 %23, i32 %24, %struct.dm_buffer** %26)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @PTR_ERR(i8* %32)
  store i32 %33, i32* %5, align 4
  br label %76

34:                                               ; preds = %20
  %35 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %36 = load %struct.dm_block*, %struct.dm_block** %35, align 8
  %37 = call i32 @to_buffer(%struct.dm_block* %36)
  %38 = call %struct.buffer_aux* @dm_bufio_get_aux_data(i32 %37)
  store %struct.buffer_aux* %38, %struct.buffer_aux** %10, align 8
  %39 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %40 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %39, i32 0, i32 1
  %41 = call i32 @bl_down_write(i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %46 = load %struct.dm_block*, %struct.dm_block** %45, align 8
  %47 = call i32 @to_buffer(%struct.dm_block* %46)
  %48 = call i32 @dm_bufio_release(i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @report_recursive_bug(i32 %49, i32 %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %76

53:                                               ; preds = %34
  %54 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %55 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %57 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %58 = load %struct.dm_block*, %struct.dm_block** %57, align 8
  %59 = call i32 @to_buffer(%struct.dm_block* %58)
  %60 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %61 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %62 = call i32 @dm_bm_validate_buffer(%struct.dm_block_manager* %56, i32 %59, %struct.buffer_aux* %60, %struct.dm_block_validator* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %53
  %67 = load %struct.buffer_aux*, %struct.buffer_aux** %10, align 8
  %68 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %67, i32 0, i32 1
  %69 = call i32 @bl_up_write(i32* %68)
  %70 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %71 = load %struct.dm_block*, %struct.dm_block** %70, align 8
  %72 = call i32 @to_buffer(%struct.dm_block* %71)
  %73 = call i32 @dm_bufio_release(i32 %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %5, align 4
  br label %76

75:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %66, %44, %31, %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i8* @dm_bufio_read(i32, i32, %struct.dm_buffer**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.buffer_aux* @dm_bufio_get_aux_data(i32) #1

declare dso_local i32 @to_buffer(%struct.dm_block*) #1

declare dso_local i32 @bl_down_write(i32*) #1

declare dso_local i32 @dm_bufio_release(i32) #1

declare dso_local i32 @report_recursive_bug(i32, i32) #1

declare dso_local i32 @dm_bm_validate_buffer(%struct.dm_block_manager*, i32, %struct.buffer_aux*, %struct.dm_block_validator*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bl_up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
