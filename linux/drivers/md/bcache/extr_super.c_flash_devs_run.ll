; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_flash_devs_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_flash_devs_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_set = type { i32, %struct.uuid_entry* }
%struct.uuid_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_set*)* @flash_devs_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_devs_run(%struct.cache_set* %0) #0 {
  %2 = alloca %struct.cache_set*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uuid_entry*, align 8
  store %struct.cache_set* %0, %struct.cache_set** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %6 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %5, i32 0, i32 1
  %7 = load %struct.uuid_entry*, %struct.uuid_entry** %6, align 8
  store %struct.uuid_entry* %7, %struct.uuid_entry** %4, align 8
  br label %8

8:                                                ; preds = %34, %1
  %9 = load %struct.uuid_entry*, %struct.uuid_entry** %4, align 8
  %10 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %11 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %10, i32 0, i32 1
  %12 = load %struct.uuid_entry*, %struct.uuid_entry** %11, align 8
  %13 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %14 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %12, i64 %16
  %18 = icmp ult %struct.uuid_entry* %9, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %8
  %24 = phi i1 [ false, %8 ], [ %22, %19 ]
  br i1 %24, label %25, label %37

25:                                               ; preds = %23
  %26 = load %struct.uuid_entry*, %struct.uuid_entry** %4, align 8
  %27 = call i64 @UUID_FLASH_ONLY(%struct.uuid_entry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.cache_set*, %struct.cache_set** %2, align 8
  %31 = load %struct.uuid_entry*, %struct.uuid_entry** %4, align 8
  %32 = call i32 @flash_dev_run(%struct.cache_set* %30, %struct.uuid_entry* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.uuid_entry*, %struct.uuid_entry** %4, align 8
  %36 = getelementptr inbounds %struct.uuid_entry, %struct.uuid_entry* %35, i32 1
  store %struct.uuid_entry* %36, %struct.uuid_entry** %4, align 8
  br label %8

37:                                               ; preds = %23
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @UUID_FLASH_ONLY(%struct.uuid_entry*) #1

declare dso_local i32 @flash_dev_run(%struct.cache_set*, %struct.uuid_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
