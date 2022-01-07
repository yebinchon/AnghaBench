; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_h_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-policy-smq.c_h_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smq_hash_table = type { i32*, i32, %struct.entry_space* }
%struct.entry_space = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INDEXER_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smq_hash_table*, %struct.entry_space*, i32)* @h_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h_init(%struct.smq_hash_table* %0, %struct.entry_space* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smq_hash_table*, align 8
  %6 = alloca %struct.entry_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.smq_hash_table* %0, %struct.smq_hash_table** %5, align 8
  store %struct.entry_space* %1, %struct.entry_space** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.entry_space*, %struct.entry_space** %6, align 8
  %11 = load %struct.smq_hash_table*, %struct.smq_hash_table** %5, align 8
  %12 = getelementptr inbounds %struct.smq_hash_table, %struct.smq_hash_table* %11, i32 0, i32 2
  store %struct.entry_space* %10, %struct.entry_space** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = udiv i32 %13, 4
  %15 = call i32 @max(i32 %14, i32 16)
  %16 = call i32 @roundup_pow_of_two(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @__ffs(i32 %17)
  %19 = load %struct.smq_hash_table*, %struct.smq_hash_table** %5, align 8
  %20 = getelementptr inbounds %struct.smq_hash_table, %struct.smq_hash_table* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @array_size(i32 %21, i32 4)
  %23 = call i32* @vmalloc(i32 %22)
  %24 = load %struct.smq_hash_table*, %struct.smq_hash_table** %5, align 8
  %25 = getelementptr inbounds %struct.smq_hash_table, %struct.smq_hash_table* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.smq_hash_table*, %struct.smq_hash_table** %5, align 8
  %27 = getelementptr inbounds %struct.smq_hash_table, %struct.smq_hash_table* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* @INDEXER_NULL, align 4
  %40 = load %struct.smq_hash_table*, %struct.smq_hash_table** %5, align 8
  %41 = getelementptr inbounds %struct.smq_hash_table, %struct.smq_hash_table* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %34

49:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
