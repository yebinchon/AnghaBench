; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c___shadow_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/persistent-data/extr_dm-transaction-manager.c___shadow_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32, i32 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_transaction_manager*, i32, %struct.dm_block_validator*, %struct.dm_block**)* @__shadow_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__shadow_block(%struct.dm_transaction_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_transaction_manager*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_block_validator*, align 8
  %9 = alloca %struct.dm_block**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dm_block*, align 8
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dm_block_validator* %2, %struct.dm_block_validator** %8, align 8
  store %struct.dm_block** %3, %struct.dm_block*** %9, align 8
  %13 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %14 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dm_sm_new_block(i32 %15, i32* %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %70

21:                                               ; preds = %4
  %22 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %23 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dm_sm_dec_block(i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %70

31:                                               ; preds = %21
  %32 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %33 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %37 = call i32 @dm_bm_read_lock(i32 %34, i32 %35, %struct.dm_block_validator* %36, %struct.dm_block** %12)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %70

42:                                               ; preds = %31
  %43 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %44 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.dm_block_validator*, %struct.dm_block_validator** %8, align 8
  %48 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %49 = call i32 @dm_bm_write_lock_zero(i32 %45, i32 %46, %struct.dm_block_validator* %47, %struct.dm_block** %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %54 = call i32 @dm_bm_unlock(%struct.dm_block* %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %70

56:                                               ; preds = %42
  %57 = load %struct.dm_block**, %struct.dm_block*** %9, align 8
  %58 = load %struct.dm_block*, %struct.dm_block** %57, align 8
  %59 = call i32 @dm_block_data(%struct.dm_block* %58)
  %60 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %61 = call i32 @dm_block_data(%struct.dm_block* %60)
  %62 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %6, align 8
  %63 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dm_bm_block_size(i32 %64)
  %66 = call i32 @memcpy(i32 %59, i32 %61, i32 %65)
  %67 = load %struct.dm_block*, %struct.dm_block** %12, align 8
  %68 = call i32 @dm_bm_unlock(%struct.dm_block* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %56, %52, %40, %29, %19
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @dm_sm_new_block(i32, i32*) #1

declare dso_local i32 @dm_sm_dec_block(i32, i32) #1

declare dso_local i32 @dm_bm_read_lock(i32, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

declare dso_local i32 @dm_bm_write_lock_zero(i32, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

declare dso_local i32 @dm_bm_unlock(%struct.dm_block*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @dm_bm_block_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
