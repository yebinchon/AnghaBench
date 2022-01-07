; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_hpd_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_hpd_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gpio = type { i32 }

@HPD_SOURCEID_UNKNOWN = common dso_local global i32 0, align 4
@HPD_SOURCEID1 = common dso_local global i32 0, align 4
@HPD_SOURCEID2 = common dso_local global i32 0, align 4
@HPD_SOURCEID3 = common dso_local global i32 0, align 4
@HPD_SOURCEID4 = common dso_local global i32 0, align 4
@HPD_SOURCEID5 = common dso_local global i32 0, align 4
@HPD_SOURCEID6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_link*)* @get_hpd_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hpd_line(%struct.dc_link* %0) #0 {
  %2 = alloca %struct.dc_link*, align 8
  %3 = alloca %struct.gpio*, align 8
  %4 = alloca i32, align 4
  store %struct.dc_link* %0, %struct.dc_link** %2, align 8
  %5 = load i32, i32* @HPD_SOURCEID_UNKNOWN, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %7 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %12 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dc_link*, %struct.dc_link** %2, align 8
  %15 = getelementptr inbounds %struct.dc_link, %struct.dc_link* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.gpio* @get_hpd_gpio(i32 %10, i32 %13, i32 %18)
  store %struct.gpio* %19, %struct.gpio** %3, align 8
  %20 = load %struct.gpio*, %struct.gpio** %3, align 8
  %21 = icmp ne %struct.gpio* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.gpio*, %struct.gpio** %3, align 8
  %24 = call i32 @dal_irq_get_source(%struct.gpio* %23)
  switch i32 %24, label %37 [
    i32 133, label %25
    i32 132, label %27
    i32 131, label %29
    i32 130, label %31
    i32 129, label %33
    i32 128, label %35
  ]

25:                                               ; preds = %22
  %26 = load i32, i32* @HPD_SOURCEID1, align 4
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %22
  %28 = load i32, i32* @HPD_SOURCEID2, align 4
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %22
  %30 = load i32, i32* @HPD_SOURCEID3, align 4
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i32, i32* @HPD_SOURCEID4, align 4
  store i32 %32, i32* %4, align 4
  br label %39

33:                                               ; preds = %22
  %34 = load i32, i32* @HPD_SOURCEID5, align 4
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %22
  %36 = load i32, i32* @HPD_SOURCEID6, align 4
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %22
  %38 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %39

39:                                               ; preds = %37, %35, %33, %31, %29, %27, %25
  %40 = call i32 @dal_gpio_destroy_irq(%struct.gpio** %3)
  br label %41

41:                                               ; preds = %39, %1
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.gpio* @get_hpd_gpio(i32, i32, i32) #1

declare dso_local i32 @dal_irq_get_source(%struct.gpio*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @dal_gpio_destroy_irq(%struct.gpio**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
