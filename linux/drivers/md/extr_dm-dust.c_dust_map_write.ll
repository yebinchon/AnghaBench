; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-dust.c_dust_map_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-dust.c_dust_map_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dust_device = type { i32, i32 }

@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dust_device*, i32, i32)* @dust_map_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dust_map_write(%struct.dust_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dust_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.dust_device* %0, %struct.dust_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = load %struct.dust_device*, %struct.dust_device** %4, align 8
  %12 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dust_device*, %struct.dust_device** %4, align 8
  %17 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %16, i32 0, i32 1
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.dust_device*, %struct.dust_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @__dust_map_write(%struct.dust_device* %20, i32 %21)
  %23 = load %struct.dust_device*, %struct.dust_device** %4, align 8
  %24 = getelementptr inbounds %struct.dust_device, %struct.dust_device* %23, i32 0, i32 1
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %27

27:                                               ; preds = %10, %3
  %28 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__dust_map_write(%struct.dust_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
