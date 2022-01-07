; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hash_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_hash_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone = type { %struct.hash_table_bucket* }
%struct.hash_table_bucket = type { i32, i32 }

@HASH_TABLE_BITS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone*)* @hash_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_table_init(%struct.clone* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clone*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash_table_bucket*, align 8
  store %struct.clone* %0, %struct.clone** %3, align 8
  %7 = load i32, i32* @HASH_TABLE_BITS, align 4
  %8 = shl i32 1, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hash_table_bucket* @kvmalloc(i32 %12, i32 %13)
  %15 = load %struct.clone*, %struct.clone** %3, align 8
  %16 = getelementptr inbounds %struct.clone, %struct.clone* %15, i32 0, i32 0
  store %struct.hash_table_bucket* %14, %struct.hash_table_bucket** %16, align 8
  %17 = load %struct.clone*, %struct.clone** %3, align 8
  %18 = getelementptr inbounds %struct.clone, %struct.clone* %17, i32 0, i32 0
  %19 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %18, align 8
  %20 = icmp ne %struct.hash_table_bucket* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %42, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load %struct.clone*, %struct.clone** %3, align 8
  %31 = getelementptr inbounds %struct.clone, %struct.clone* %30, i32 0, i32 0
  %32 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hash_table_bucket, %struct.hash_table_bucket* %32, i64 %34
  store %struct.hash_table_bucket* %35, %struct.hash_table_bucket** %6, align 8
  %36 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %6, align 8
  %37 = getelementptr inbounds %struct.hash_table_bucket, %struct.hash_table_bucket* %36, i32 0, i32 1
  %38 = call i32 @INIT_HLIST_HEAD(i32* %37)
  %39 = load %struct.hash_table_bucket*, %struct.hash_table_bucket** %6, align 8
  %40 = getelementptr inbounds %struct.hash_table_bucket, %struct.hash_table_bucket* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_init(i32* %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %25

45:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.hash_table_bucket* @kvmalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
