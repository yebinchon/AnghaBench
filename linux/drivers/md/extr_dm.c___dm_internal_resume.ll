; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_internal_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___dm_internal_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i64 }

@DMF_SUSPENDED_INTERNALLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapped_device*)* @__dm_internal_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dm_internal_resume(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %3 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %4 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %11 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %18 = call i64 @dm_suspended_md(%struct.mapped_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %24

21:                                               ; preds = %16
  %22 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %23 = call i32 @__dm_resume(%struct.mapped_device* %22, i32* null)
  br label %24

24:                                               ; preds = %21, %20
  %25 = load i32, i32* @DMF_SUSPENDED_INTERNALLY, align 4
  %26 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %27 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %26, i32 0, i32 0
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = call i32 (...) @smp_mb__after_atomic()
  %30 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %31 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %30, i32 0, i32 0
  %32 = load i32, i32* @DMF_SUSPENDED_INTERNALLY, align 4
  %33 = call i32 @wake_up_bit(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %24, %15
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i32 @__dm_resume(%struct.mapped_device*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
