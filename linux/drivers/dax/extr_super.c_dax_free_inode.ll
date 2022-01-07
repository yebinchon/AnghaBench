; ModuleID = '/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_free_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dax/extr_super.c_dax_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.dax_device = type { i32* }

@dax_minor_ida = common dso_local global i32 0, align 4
@dax_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @dax_free_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dax_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.dax_device*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.dax_device* @to_dax_dev(%struct.inode* %4)
  store %struct.dax_device* %5, %struct.dax_device** %3, align 8
  %6 = load %struct.dax_device*, %struct.dax_device** %3, align 8
  %7 = getelementptr inbounds %struct.dax_device, %struct.dax_device* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @kfree(i32* %8)
  %10 = load %struct.dax_device*, %struct.dax_device** %3, align 8
  %11 = getelementptr inbounds %struct.dax_device, %struct.dax_device* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @MINOR(i64 %19)
  %21 = call i32 @ida_simple_remove(i32* @dax_minor_ida, i32 %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load i32, i32* @dax_cache, align 4
  %24 = load %struct.dax_device*, %struct.dax_device** %3, align 8
  %25 = call i32 @kmem_cache_free(i32 %23, %struct.dax_device* %24)
  ret void
}

declare dso_local %struct.dax_device* @to_dax_dev(%struct.inode*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @MINOR(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dax_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
