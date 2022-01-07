; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_get_dev_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-table.c_dm_get_dev_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_get_dev_t(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.block_device* @lookup_bdev(i8* %5)
  store %struct.block_device* %6, %struct.block_device** %4, align 8
  %7 = load %struct.block_device*, %struct.block_device** %4, align 8
  %8 = call i64 @IS_ERR(%struct.block_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @name_to_dev_t(i8* %11)
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.block_device*, %struct.block_device** %4, align 8
  %15 = getelementptr inbounds %struct.block_device, %struct.block_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.block_device*, %struct.block_device** %4, align 8
  %18 = call i32 @bdput(%struct.block_device* %17)
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.block_device* @lookup_bdev(i8*) #1

declare dso_local i64 @IS_ERR(%struct.block_device*) #1

declare dso_local i32 @name_to_dev_t(i8*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
