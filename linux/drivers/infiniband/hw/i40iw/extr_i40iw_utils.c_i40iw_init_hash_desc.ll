; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_init_hash_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_init_hash_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"crc32c\00", align 1
@I40IW_ERR_MPA_CRC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_init_hash_desc(%struct.shash_desc** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.shash_desc**, align 8
  %4 = alloca %struct.crypto_shash*, align 8
  %5 = alloca %struct.shash_desc*, align 8
  store %struct.shash_desc** %0, %struct.shash_desc*** %3, align 8
  %6 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %6, %struct.crypto_shash** %4, align 8
  %7 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %8 = call i64 @IS_ERR(%struct.crypto_shash* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @I40IW_ERR_MPA_CRC, align 4
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %14 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %13)
  %15 = add i64 8, %14
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.shash_desc* @kzalloc(i64 %15, i32 %16)
  store %struct.shash_desc* %17, %struct.shash_desc** %5, align 8
  %18 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %19 = icmp ne %struct.shash_desc* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %22 = call i32 @crypto_free_shash(%struct.crypto_shash* %21)
  %23 = load i32, i32* @I40IW_ERR_MPA_CRC, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %12
  %25 = load %struct.crypto_shash*, %struct.crypto_shash** %4, align 8
  %26 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %27 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %26, i32 0, i32 0
  store %struct.crypto_shash* %25, %struct.crypto_shash** %27, align 8
  %28 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %29 = load %struct.shash_desc**, %struct.shash_desc*** %3, align 8
  store %struct.shash_desc* %28, %struct.shash_desc** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %20, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #1

declare dso_local %struct.shash_desc* @kzalloc(i64, i32) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
