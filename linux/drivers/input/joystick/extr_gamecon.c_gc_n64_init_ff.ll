; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_init_ff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_n64_init_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.gc_subdev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@gc_n64_play_effect = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32)* @gc_n64_init_ff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_n64_init_ff(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gc_subdev*, align 8
  %7 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.gc_subdev* @kmalloc(i32 4, i32 %8)
  store %struct.gc_subdev* %9, %struct.gc_subdev** %6, align 8
  %10 = load %struct.gc_subdev*, %struct.gc_subdev** %6, align 8
  %11 = icmp ne %struct.gc_subdev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.gc_subdev*, %struct.gc_subdev** %6, align 8
  %18 = getelementptr inbounds %struct.gc_subdev, %struct.gc_subdev* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %20 = load i32, i32* @EV_FF, align 4
  %21 = load i32, i32* @FF_RUMBLE, align 4
  %22 = call i32 @input_set_capability(%struct.input_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = load %struct.gc_subdev*, %struct.gc_subdev** %6, align 8
  %25 = load i32, i32* @gc_n64_play_effect, align 4
  %26 = call i32 @input_ff_create_memless(%struct.input_dev* %23, %struct.gc_subdev* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %15
  %30 = load %struct.gc_subdev*, %struct.gc_subdev** %6, align 8
  %31 = call i32 @kfree(%struct.gc_subdev* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.gc_subdev* @kmalloc(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_ff_create_memless(%struct.input_dev*, %struct.gc_subdev*, i32) #1

declare dso_local i32 @kfree(%struct.gc_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
