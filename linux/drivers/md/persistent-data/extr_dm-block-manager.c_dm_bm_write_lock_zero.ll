; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_write_lock_zero.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-block-manager.c_dm_bm_write_lock_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_block_manager = type { i32, i64 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }
%struct.buffer_aux = type { i32, %struct.dm_block_validator*, i32 }
%struct.dm_buffer = type { i32 }

@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_bm_write_lock_zero(%struct.dm_block_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_block_manager*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_block_validator*, align 8
  %9 = alloca %struct.dm_block**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_aux*, align 8
  %12 = alloca i8*, align 8
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
  br label %60

20:                                               ; preds = %4
  %21 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %22 = getelementptr inbounds %struct.dm_block_manager, %struct.dm_block_manager* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %26 = bitcast %struct.dm_block** %25 to %struct.dm_buffer**
  %27 = call i8* @dm_bufio_new(i32 %23, i32 %24, %struct.dm_buffer** %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @PTR_ERR(i8* %32)
  store i32 %33, i32* %5, align 4
  br label %60

34:                                               ; preds = %20
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %37 = call i32 @dm_bm_block_size(%struct.dm_block_manager* %36)
  %38 = call i32 @memset(i8* %35, i32 0, i32 %37)
  %39 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %40 = load %struct.dm_block*, %struct.dm_block** %39, align 8
  %41 = call i32 @to_buffer(%struct.dm_block* %40)
  %42 = call %struct.buffer_aux* @dm_bufio_get_aux_data(i32 %41)
  store %struct.buffer_aux* %42, %struct.buffer_aux** %11, align 8
  %43 = load %struct.buffer_aux*, %struct.buffer_aux** %11, align 8
  %44 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %43, i32 0, i32 2
  %45 = call i32 @bl_down_write(i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %50 = load %struct.dm_block*, %struct.dm_block** %49, align 8
  %51 = call i32 @to_buffer(%struct.dm_block* %50)
  %52 = call i32 @dm_bufio_release(i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %60

54:                                               ; preds = %34
  %55 = load %struct.buffer_aux*, %struct.buffer_aux** %11, align 8
  %56 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %58 = load %struct.buffer_aux*, %struct.buffer_aux** %11, align 8
  %59 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %58, i32 0, i32 1
  store %struct.dm_block_validator* %57, %struct.dm_block_validator** %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %54, %48, %31, %17
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i8* @dm_bufio_new(i32, i32, %struct.dm_buffer**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dm_bm_block_size(%struct.dm_block_manager*) #1

declare dso_local %struct.buffer_aux* @dm_bufio_get_aux_data(i32) #1

declare dso_local i32 @to_buffer(%struct.dm_block*) #1

declare dso_local i32 @bl_down_write(i32*) #1

declare dso_local i32 @dm_bufio_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
