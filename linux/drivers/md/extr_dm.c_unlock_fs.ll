; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_unlock_fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_unlock_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32*, i32 }

@DMF_FROZEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*)* @unlock_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlock_fs(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %3 = load i32, i32* @DMF_FROZEN, align 4
  %4 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %5 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %4, i32 0, i32 0
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %11 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %14 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @thaw_bdev(i32 %12, i32* %15)
  %17 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %18 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @DMF_FROZEN, align 4
  %20 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %21 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @thaw_bdev(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
