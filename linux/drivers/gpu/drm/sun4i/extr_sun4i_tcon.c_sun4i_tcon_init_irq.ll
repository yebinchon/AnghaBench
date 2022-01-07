; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun4i_tcon = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Couldn't retrieve the TCON interrupt\0A\00", align 1
@sun4i_tcon_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Couldn't request the IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sun4i_tcon*)* @sun4i_tcon_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tcon_init_irq(%struct.device* %0, %struct.sun4i_tcon* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sun4i_tcon*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sun4i_tcon* %1, %struct.sun4i_tcon** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = call i32 @platform_get_irq(%struct.platform_device* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @sun4i_tcon_handler, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_name(%struct.device* %23)
  %25 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %5, align 8
  %26 = call i32 @devm_request_irq(%struct.device* %20, i32 %21, i32 %22, i32 0, i32 %24, %struct.sun4i_tcon* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.sun4i_tcon*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
