; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bcache_device_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_super.c_bcache_device_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_device = type { i32, %struct.cache_set* }
%struct.cache_set = type { i32, i32, %struct.bcache_device** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcache_device*, %struct.cache_set*, i32)* @bcache_device_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcache_device_attach(%struct.bcache_device* %0, %struct.cache_set* %1, i32 %2) #0 {
  %4 = alloca %struct.bcache_device*, align 8
  %5 = alloca %struct.cache_set*, align 8
  %6 = alloca i32, align 4
  store %struct.bcache_device* %0, %struct.bcache_device** %4, align 8
  store %struct.cache_set* %1, %struct.cache_set** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %9 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %11 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %12 = getelementptr inbounds %struct.bcache_device, %struct.bcache_device* %11, i32 0, i32 1
  store %struct.cache_set* %10, %struct.cache_set** %12, align 8
  %13 = load %struct.bcache_device*, %struct.bcache_device** %4, align 8
  %14 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %15 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %14, i32 0, i32 2
  %16 = load %struct.bcache_device**, %struct.bcache_device*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bcache_device*, %struct.bcache_device** %16, i64 %18
  store %struct.bcache_device* %13, %struct.bcache_device** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %22 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 1
  %28 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %29 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %25, %3
  %31 = load %struct.cache_set*, %struct.cache_set** %5, align 8
  %32 = getelementptr inbounds %struct.cache_set, %struct.cache_set* %31, i32 0, i32 1
  %33 = call i32 @closure_get(i32* %32)
  ret void
}

declare dso_local i32 @closure_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
