; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_get_compatible_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_ff-memless.c_get_compatible_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_device = type { i32 }

@FF_PERIODIC = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid type in get_compatible_type()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_device*, i32)* @get_compatible_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_compatible_type(%struct.ff_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ff_device*, align 8
  %5 = alloca i32, align 4
  store %struct.ff_device* %0, %struct.ff_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ff_device*, %struct.ff_device** %4, align 8
  %8 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @test_bit(i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @FF_PERIODIC, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* @FF_RUMBLE, align 4
  %20 = load %struct.ff_device*, %struct.ff_device** %4, align 8
  %21 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @test_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @FF_RUMBLE, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %18, %14
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25, %12
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
